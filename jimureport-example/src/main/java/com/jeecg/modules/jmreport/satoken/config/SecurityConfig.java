package com.jeecg.modules.jmreport.satoken.config;

import com.jeecg.modules.jmreport.satoken.config.vo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Role;
import org.springframework.stereotype.Component;

import java.security.SecureRandom;
import java.util.Base64;
import java.util.Set;


/**
 * 加载项目配置
 *
 * @author: jeecg-boot
 */
@Component("securityConfig")
@ConfigurationProperties(prefix = "spring.security")
@Role(BeanDefinition.ROLE_INFRASTRUCTURE)
public class SecurityConfig implements InitializingBean {
    private static final Logger log = LoggerFactory.getLogger(SecurityConfig.class);
    /**
     * 历史随发布包公开的默认口令，命中即视为未配置
     */
    private static final Set<String> DEFAULT_PASSWORDS = Set.of("123456");

    private Boolean enable = true;
    /**
     * 登录账号和密码
     */
    private User user;
    /**
     * 口令是否为本次启动随机生成（未配置或仍为默认口令时为 true）
     */
    private boolean generatedPassword = false;

    /**
     * 未配置口令或仍为默认口令 123456 时，随机生成本次启动口令并打印到启动日志（与 Spring Security 的 generated password 规则一致，
     * 每次启动重新生成），避免发布包带着公开的默认口令直接对外暴露；显式配置了口令的部署不受影响
     */
    @Override
    public void afterPropertiesSet() {
        if (user == null) {
            user = new User();
        }
        if (user.getName() == null || user.getName().trim().isEmpty()) {
            user.setName("admin");
        }
        String password = user.getPassword();
        if (password != null && !password.trim().isEmpty() && !DEFAULT_PASSWORDS.contains(password.trim())) {
            return;
        }
        byte[] bytes = new byte[12];
        new SecureRandom().nextBytes(bytes);
        String generated = Base64.getUrlEncoder().withoutPadding().encodeToString(bytes);
        user.setPassword(generated);
        generatedPassword = true;
        log.warn("未配置登录口令或仍为默认口令，已随机生成本次启动口令（每次启动重新生成），请通过环境变量 JIMU_ADMIN_PASSWORD 或配置 spring.security.user.password 固定口令");
        log.warn("登录账号: {}   登录口令: {}", user.getName(), generated);
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Boolean getEnable() {
        return enable;
    }

    public void setEnable(Boolean enable) {
        this.enable = enable;
    }

    public boolean isGeneratedPassword() {
        return generatedPassword;
    }
}
