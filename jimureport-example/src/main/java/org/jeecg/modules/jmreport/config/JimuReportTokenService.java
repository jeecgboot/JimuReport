package org.jeecg.modules.jmreport.config;

import org.jeecg.modules.jmreport.api.JmReportTokenServiceI;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义积木报表鉴权(如果不进行自定义，则所有请求不做权限控制)
 * 1.自定义获取登录token
 * 2.自定义获取登录用户
 */
@Component
public class JimuReportTokenService implements JmReportTokenServiceI {

    @Override
    public String getToken(HttpServletRequest request) {
        return "123456";
    }

    @Override
    public String getUsername(String token) {
        return "admin";
    }

    @Override
    public Boolean verifyToken(String token) {
        //token校验，默认返回true，需自己实现
        return true;
    }

    @Override
    public HttpHeaders customApiHeader() {
        HttpHeaders header = new HttpHeaders();
        header.add("custom-header1", "Please set a custom value 1");
        header.add("token", "token value 2");
        return header;
    }
}