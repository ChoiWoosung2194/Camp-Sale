package com.app.camp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class CampApplication {

	public static void main(String[] args) {
		SpringApplication.run(CampApplication.class, args);
	}

}
