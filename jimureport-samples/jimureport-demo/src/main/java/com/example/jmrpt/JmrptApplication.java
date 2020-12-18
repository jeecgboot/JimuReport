package com.example.jmrpt;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value={"org.jeecg.modules.**.mapper*"})
@SpringBootApplication(scanBasePackages = {"org.jeecg.modules.jmreport"})
public class JmrptApplication {

    public static void main(String[] args) {
        SpringApplication.run(JmrptApplication.class, args);
    }

}
