package com.jeecg.modules.jmreport.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 自定义springsecurity登录成功处理
 * [TV360X-1884]jimureport-example集成简单的 spring security，设置登录账号密码
 * @author chenrui
 * @date 2024/8/2 16:26
 */
public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.setAttribute("loginFrom", "jimu_example");
        super.onAuthenticationSuccess(request, response, authentication);
    }
}