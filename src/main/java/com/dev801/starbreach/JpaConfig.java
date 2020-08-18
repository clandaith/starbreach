package com.dev801.starbreach;

import java.net.URI;
import java.net.URISyntaxException;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JpaConfig {
    private static final Logger LOGGER = LoggerFactory.getLogger(JpaConfig.class);

    @Bean
    public DataSource getDataSource() throws URISyntaxException {
        LOGGER.debug("env: {}", System.getenv("DATABASE_URL"));
        URI uri = new URI(System.getenv("DATABASE_URL"));

        LOGGER.debug("host: {}", uri.getHost());
        LOGGER.debug("port: {}", uri.getPort());
        LOGGER.debug("path: {}", uri.getPath());
        LOGGER.debug("UserInfo: {}", uri.getUserInfo());

        String userInfo = uri.getUserInfo();
        String[] b = userInfo.split(":");

        return DataSourceBuilder.create()
                                .driverClassName("org.postgresql.Driver")
                                .url("jdbc:postgresql://" + uri.getHost() + ":" + uri.getPort() + uri.getPath())
                                .username(b[0])
                                .password(b[1])
                                .build();
    }
}