package com.yoojung0318.puppyplay;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

//DB 설정 제외 문법 ( 최초 테스트시 사용)
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})

@SpringBootApplication
public class PuppyPlayApplication {

	public static void main(String[] args) {
		SpringApplication.run(PuppyPlayApplication.class, args);
	}

}
