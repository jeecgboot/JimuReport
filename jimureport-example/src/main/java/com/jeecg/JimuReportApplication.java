package com.jeecg;

import com.jeecg.modules.jmreport.satoken.config.SecurityConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

/**
 * 积木报表独立服务启动类
 */
@SpringBootApplication(scanBasePackages = {"org.jeecg", "com.jeecg"})
public class JimuReportApplication {

    public static void main(String[] args) {
        ConfigurableApplicationContext application = SpringApplication.run(JimuReportApplication.class, args);
        Environment env = application.getEnvironment();
        String port = env.getProperty("server.port");
        String path = env.containsProperty("server.servlet.context-path")?env.getProperty("server.servlet.context-path"):"";
        String currentEncoding = System.getProperty("file.encoding", "UTF-8");
        if(!currentEncoding.equalsIgnoreCase("UTF-8")){
            // 默认编码不是UTF-8设置为UTF-8
            System.setProperty("file.encoding", "UTF-8");
        }

        // 未配置登录口令时，把本次随机生成的账号口令放进启动完成的提示块，避免淹没在启动日志里
        String loginTip = "";
        SecurityConfig securityConfig = application.getBean(SecurityConfig.class);
        if (securityConfig.isGeneratedPassword()) {
            loginTip = "管理员账号: \t\t" + securityConfig.getUser().getName() + "\n\t" +
                    "管理员口令: \t\t" + securityConfig.getUser().getPassword() + "\n\t" +
                    "（未配置口令，每次启动随机生成；可通过环境变量 JIMU_ADMIN_PASSWORD 固定）\n\t";
        }

        System.out.println("\n----------------------------------------------------------\n\t" +
                "JimuReport 积木报表平台 is running!  Access URL:\n\t" +
                "报表工作台: \t\thttp://localhost:" + port + path + "/jmreport/list\n\t" +
                "大屏工作台: \t\thttp://localhost:" + port + path + "/drag/list\n\t" +
                "ChatBI工作台: \t\thttp://localhost:" + port + path + "/jimu/chat2bi/index\n\t" +
                loginTip +
                "----------------------------------------------------------");
    }

}
