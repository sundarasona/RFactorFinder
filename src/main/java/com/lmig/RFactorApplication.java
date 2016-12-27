package com.lmig;

import java.util.Arrays;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import com.lmig.storage.service.StorageProperties;
import com.lmig.storage.service.StorageService;

@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class RFactorApplication {

	public static void main(String[] args) {
		SpringApplication.run(RFactorApplication.class, args);
	}
	
	@Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {

            System.out.println("Let's inspect the beans provided by Spring Boot: ");
            System.out.println("Application Name" + ctx.getApplicationName());
            System.out.println("Display Name" + ctx.getDisplayName());
            String[] beanNames = ctx.getBeanDefinitionNames();
            
            Arrays.sort(beanNames);
            for (String beanName : beanNames) {
                System.out.println(beanName);
            }

        };
    }
	
	@Bean
	CommandLineRunner init(StorageService storageService) {
		return (args) -> {
            storageService.deleteAll();
            storageService.init();
		};
	}
}
