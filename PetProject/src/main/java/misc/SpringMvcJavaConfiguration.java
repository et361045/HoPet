package misc;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.XmlViewResolver;

@Configuration
@ComponentScan(basePackages={"controller"})
@ComponentScan(basePackages={"com.yiibai.springmvcfileupload"})
@EnableWebMvc
public class SpringMvcJavaConfiguration implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
          .addResourceHandler("/assets/**")
          .addResourceLocations("/assets/"); 
    }
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("locale");
		registry.addInterceptor(interceptor);
	}
	@Autowired
	private ServletContext application;
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		XmlViewResolver xmlViewResolver = new XmlViewResolver();
		xmlViewResolver.setLocation(new ServletContextResource(
				application, "/WEB-INF/spring-views.xml"));
		registry.viewResolver(xmlViewResolver);
	}
	
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource bundle = new ResourceBundleMessageSource();
		bundle.setBasename("controller.error");

		return bundle;
	}

	@Bean
	public LocaleResolver localeResolver() {
//		CookieLocaleResolver cookieLocaleResolver = new CookieLocaleResolver();
//		cookieLocaleResolver.setDefaultLocale(Locale.TAIWAN);
//		cookieLocaleResolver.setCookieName("xxx");
//		return cookieLocaleResolver;
		
		SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
		sessionLocaleResolver.setDefaultLocale(Locale.TAIWAN);
		return sessionLocaleResolver;
	}
	

	@Bean
    public MultipartResolver multipartResolver() throws IOException {
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
        commonsMultipartResolver.setUploadTempDir(new FileSystemResource("/temp"));
        return commonsMultipartResolver;
    }

}
