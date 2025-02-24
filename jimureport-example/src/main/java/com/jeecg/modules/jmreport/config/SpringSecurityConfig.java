package com.jeecg.modules.jmreport.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

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
                // 放过静态资源
                .antMatchers("/jmreport/**/cdn/**",
                        "/jmreport/desreport_/**/*.js",
                        "/jmreport/desreport_/**/*.css",
                        "/jmreport/desreport_/**/*.ico",
                        "/jmreport/desreport_/**/*.png").permitAll()
                // 放过静态资源-仪表盘
                .antMatchers("/drag/lib/**/*.css",
                        "/drag/lib/**/*.js",
                        "/drag/lib/**/*.png",
                        "/drag/**/*.ico").permitAll()
                // 不需要登录的接口
                .antMatchers("/jmreport/excelQueryByTemplate",
                        "/jmreport/query/report/folder/template",
                        "/jmreport/img/**",
                        "/jmreport/download/image",
                        "/jmreport/verificationToken",
                        "/jmreport/link/queryByIds",
                        "/jmreport/test/getUserMsg",
                        "/jmreport/test/getOrder",
                        "/jimureport/test/**",
                        "/jmreport/auto/export/download/**").permitAll()
                // 分享页面
                .antMatchers("/jmreport/shareView/**",
                        "/jmreport/exportPdfStream",
                        "/jmreport/exportAllExcelStream",
                        "/jmreport/checkParam/**",
                        "/jmreport/share/verification",
                        "/jmreport/getQueryInfo",
                        "/jmreport/show",
                        "/jmreport/addViewCount/**").permitAll()
                // 仪表盘分享页面
                .antMatchers("/drag/share/view/**",
                        "/jimubi/share/view/**",
                        "/drag/page/queryById",
                        "/drag/page/addVisitsNumber",
                        "/drag/page/queryTemplateList",
                        "/drag/onlDragDatasetHead/getAllChartData",
                        "/drag/onlDragDatasetHead/getTotalData",
                        "/drag/onlDragDatasetHead/getDictByCodes",
                        "/drag/mock/json/**",
                        "/drag/getImageBase64/**").permitAll()
                // view页面
                .antMatchers("/jmreport/view/**").access("@viewPageCustomAccess.check(request,authentication)")
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login/login.html")
                .loginProcessingUrl("/login")
                .successHandler(new CustomLoginSuccessHandler())
                .permitAll().and()
                .addFilterBefore(new ApiSecurityConfigFilter(), BasicAuthenticationFilter.class)
                .logout()
                .invalidateHttpSession(true)
                .clearAuthentication(true).permitAll();
        // 开放iframe访问限制
        http.headers().frameOptions().disable();
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.ALWAYS);
        http.rememberMe().useSecureCookie(true);

        return http.build();
    }
}
