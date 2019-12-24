package com.isstech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * @Classname Application
 * @Description 启动类
 * @Date 2019-12-24 9:29
 * @Created by issuser
 */
@SpringBootApplication
@EnableEurekaServer
public class ApplicationEureka8761 {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationEureka8761.class, args);
    }
}
