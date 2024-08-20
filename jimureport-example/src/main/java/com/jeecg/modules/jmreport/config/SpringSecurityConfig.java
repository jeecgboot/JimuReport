package com.jeecg.modules.jmreport.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

/**
 * spring security 配置
 * [TV360X-1884]jimureport-example集成简单的 spring security，设置登录账号密码
 * @Author chenrui
 * @Date 2024-07-23
 */
@Configuration
@EnableWebSecurity
public class SpringSecurityConfig {


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/login/**").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login/login.html")
                .loginProcessingUrl("/login")
                .successHandler(new CustomLoginSuccessHandler())
                .permitAll().and()
                .logout()
                .invalidateHttpSession(true)
                .clearAuthentication(true).permitAll();

        return http.build();
    }
}
