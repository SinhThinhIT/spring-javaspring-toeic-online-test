package com.toeiconline.springjavaspringtoeiconline.configuration;

import com.toeiconline.springjavaspringtoeiconline.utils.Constant;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import javax.servlet.http.HttpServletRequest;
import java.util.Properties;

/**
 *  Đây là lớp cấu hình MVC
 */
@ControllerAdvice
@Configuration /* day la 1 Spring Bean */
@EnableWebMvc   // module MVC
@ComponentScan(basePackages = {"com.toeiconline.springjavaspringtoeiconline"})
public class WebConfig implements WebMvcConfigurer  {
//    private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(WebConfig.class);
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        return bean;
    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        // web
        registry.addResourceHandler("/web/**").addResourceLocations("classpath:/static/web/");
        //admin
        registry.addResourceHandler("/admin/**").addResourceLocations("classpath:/static/admin/");
        registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/static/admin/assets/");
        //users
        registry.addResourceHandler("/users/**").addResourceLocations("classpath:/static/users/");
        //upload file
        registry.addResourceHandler("/category/**").addResourceLocations("file:" + Constant.CATEGORY_UPLOAD_LOCATION);
        registry.addResourceHandler("/post/**").addResourceLocations("file:" + Constant.POST_UPLOAD_LOCATION);
        registry.addResourceHandler("/avatar/**").addResourceLocations("file:" + Constant.AVATAR_UPLOAD_LOCATION);
        registry.addResourceHandler("/exam/**").addResourceLocations("file:" + Constant.EXAM_UPLOAD_LOCATION);

        //Summer note
        registry.addResourceHandler("/summernotes/**").addResourceLocations("classpath:/static/summernotes/");
    }
    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
        // If the exception is annotated with @ResponseStatus rethrow it and let
        // the framework handle it - like the OrderNotFoundException example
        // at the start of this post.
        // AnnotationUtils is a Spring Framework utility class.
    //		if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null)
    //			throw e;
//        LOGGER.error(e.getMessage(), e);
        if(e instanceof org.springframework.web.servlet.NoHandlerFoundException) { // 404
            // Otherwise setup and send the user to a default error-view.
            ModelAndView mav = new ModelAndView();
            mav.addObject("exception", e);
            mav.addObject("url", req.getRequestURL());
            mav.setViewName("error/404");
            return mav;
        } else {
            // Otherwise setup and send the user to a default error-view.
            ModelAndView mav = new ModelAndView();
            mav.addObject("exception", e);
            mav.addObject("url", req.getRequestURL());
            mav.setViewName("error/common");
            return mav;
        }

    }
//    Mail Sender
    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);

        mailSender.setUsername("thinhle27081995@gmail.com");
        mailSender.setPassword("thinh1995");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");
        mailSender.setJavaMailProperties(props);
        return mailSender;
    }
    // Upload file
    @Bean
    public CommonsMultipartResolver multipartResolver(){
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        int tenMB = 268435456;
        multipartResolver.setMaxUploadSizePerFile(tenMB);
        multipartResolver.setDefaultEncoding("utf-8");
        return multipartResolver;
    }
}
