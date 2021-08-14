package org.jeecg.modules.jmreport.config;

import org.jeecg.modules.jmreport.api.JmReportTokenServiceI;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

@Component
public class JimuReportTokenService implements JmReportTokenServiceI {

    @Override
    public String getToken(HttpServletRequest request) {
        return "123";
    }

    @Override
    public String getUsername(String s) {
        return "admin";
    }

    @Override
    public Boolean verifyToken(String s) {
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