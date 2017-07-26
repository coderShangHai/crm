package com.fxeie.crm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.CharacterEncodingFilter;

import com.fxeie.crm.filter.SessionFilter;

import java.util.Collections;

@SpringBootApplication
public class CrmApplication {

    /**
     * spring 编码过滤器
     */
    @Bean
    public FilterRegistrationBean filterRegistrationBean() {
        CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
        encodingFilter.setForceEncoding(true);
        encodingFilter.setEncoding("UTF-8");

        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(encodingFilter);
        registrationBean.setUrlPatterns(Collections.singleton("/*"));
        registrationBean.setOrder(1);
        return registrationBean;
    }
//    @Bean
//    public FilterRegistrationBean filterSessionBean() {
//    	SessionFilter sessionFilter = new SessionFilter();
//    	
//    	
//        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
//        registrationBean.setFilter(sessionFilter);
//        registrationBean.setUrlPatterns(Collections.singleton("/*"));
//        registrationBean.setOrder(2);
//        return registrationBean;
//    }
    public static void main(String[] args) {
        SpringApplication.run(CrmApplication.class, args);
    }
}
