package org.jeecg.modules;

import org.jeecg.modules.jmreport.common.util.oConvertUtils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

/**
 * 积木报表独立服务启动类
 */
@SpringBootApplication(scanBasePackages = {"org.jeecg.modules.jmreport"})
public class JimuReportApplication {

    public static void main(String[] args) {
        ConfigurableApplicationContext application = SpringApplication.run(JimuReportApplication.class, args);
        Environment env = application.getEnvironment();
        String port = env.getProperty("server.port");
        String path = oConvertUtils.getString(env.getProperty("server.servlet.context-path"));
        System.out.print("\n----------------------------------------------------------\n\t" +
                "Application JimuReport Demo is running! Access URL:\n\t" +
                "Local: \t\thttp://localhost:" + port + path + "/jmreport/list\n\t" +
                "----------------------------------------------------------");
    }

}
