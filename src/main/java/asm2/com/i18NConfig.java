package asm2.com;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

@Configuration
public class i18NConfig implements WebMvcConfigurer {
	@Bean
	public MessageSource messageSource() {
	    ReloadableResourceBundleMessageSource ms = new ReloadableResourceBundleMessageSource();
	    ms.setDefaultEncoding("UTF-8");
	    // Cập nhật đường dẫn để sử dụng đúng thư mục i18n
	    ms.setBasenames("classpath:/i18n/messages");
	    return ms;
	}



	@Bean
	public LocaleResolver localeResolver() {
	    CookieLocaleResolver cookie = new CookieLocaleResolver();
	    cookie.setDefaultLocale(new Locale("vi")); // Ngôn ngữ mặc định là Tiếng Việt
	    cookie.setCookiePath("/");
	    cookie.setCookieMaxAge(10 * 24 * 60 * 60); // 10 ngày
	    return cookie;
	}



	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    LocaleChangeInterceptor lci = new LocaleChangeInterceptor();
	    lci.setParamName("lang");  // Tham số URL để thay đổi ngôn ngữ
	    registry.addInterceptor(lci).addPathPatterns("/**").excludePathPatterns("/images/**");
	}

}