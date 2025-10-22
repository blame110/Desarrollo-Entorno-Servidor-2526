package com.calabozo.mapa.service;

import java.util.Map;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.calabozo.mapa.model.AuthProvider;
import com.calabozo.mapa.model.User;
import com.calabozo.mapa.repository.UserRepository;

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private static final Logger logger = LoggerFactory.getLogger(CustomOAuth2UserService.class);

    @Autowired
    private UserRepository userRepository;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        logger.info("Loading user for provider: {}", userRequest.getClientRegistration().getRegistrationId());

        try {
            OAuth2User oauth2User = super.loadUser(userRequest);
            logger.info("Successfully loaded user attributes: {}", oauth2User.getAttributes().keySet());
            return processOAuth2User(userRequest, oauth2User);
        } catch (Exception e) {
            logger.error("Error loading OAuth2 user", e);
            throw new OAuth2AuthenticationException("Error loading OAuth2 user");
        }
    }

    private OAuth2User processOAuth2User(OAuth2UserRequest userRequest, OAuth2User oauth2User) {
        Map<String, Object> attributes = oauth2User.getAttributes();

        // Debug: log all attributes
        logger.info("All OAuth2 attributes: {}", attributes);

        String googleId = (String) attributes.get("sub");
        String email = (String) attributes.get("email");
        String name = (String) attributes.get("name");
        String picture = (String) attributes.get("picture");

        // Validaciones
        if (email == null) {
            throw new OAuth2AuthenticationException("Email not found from OAuth2 provider");
        }

        if (googleId == null) {
            throw new OAuth2AuthenticationException("Google ID (sub) not found from OAuth2 provider");
        }

        Optional<User> userOptional = userRepository.findByGoogleId(googleId);
        User user;

        if (userOptional.isPresent()) {
            user = userOptional.get();
            user.setName(name);
            user.setPicture(picture);
            logger.info("Updating existing user: {}", email);
        } else {
            Optional<User> existingUserByEmail = userRepository.findByEmail(email);

            if (existingUserByEmail.isPresent()) {
                user = existingUserByEmail.get();
                user.setGoogleId(googleId);
                user.setProvider(AuthProvider.GOOGLE);
                user.setPicture(picture);
                logger.info("Linking existing email to Google: {}", email);
            } else {
                user = new User();
                user.setEmail(email);
                user.setName(name);
                user.setGoogleId(googleId);
                user.setPicture(picture);
                user.setProvider(AuthProvider.GOOGLE);
                logger.info("Creating new user: {}", email);
            }
        }

        userRepository.save(user);
        logger.info("User saved successfully: {}", email);

        return new DefaultOAuth2User(
                oauth2User.getAuthorities(),
                attributes,
                "sub"); // name attribute key
    }
}