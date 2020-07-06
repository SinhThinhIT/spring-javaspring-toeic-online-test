package com.toeiconline.springjavaspringtoeiconline.security;

import com.toeiconline.springjavaspringtoeiconline.dto.NormalPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private UserDetailsService userDetailsService;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
	}
	// CAU HINH PHAN QUYEN
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf()	.disable()
		.authorizeRequests()
		.antMatchers("/web/**","/file/**","/summernotes/**","/login","/registration","/forgotPassword","/newPassword/**")
		.permitAll()
		// thực hiện xác thực với các url kiểu ..../admin/....
		.antMatchers("/users/**").hasRole("MEMBER")
		.antMatchers("/admin/**").hasRole("ADMIN")
		.and() // kết hợp với điều kiện.

		/////// L O G O U T ///////
		// khi click vào button logout thì không cần login.
		// khi click vào button này thì dữ liệu user trên session sẽ bị xoá.
		.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/login?logout")
		.invalidateHttpSession(true) // xoá hết dữ liệu trên seesion
		.deleteCookies("JSESSIONID") // xoá hết dữ liệu trên cokies.
		.permitAll()
		.and() // kết hợp với điều kiện.

		/////// L O G I N ///////
		.formLogin()
		.loginPage("/login")
		.usernameParameter("username")
		.passwordParameter("password")
		.defaultSuccessUrl("/users/")
		.failureUrl("/login?error")
		.and()
		.exceptionHandling()
		.accessDeniedPage("/403");
	}


}
