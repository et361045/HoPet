package misc;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


import configuration.SpringJavaConfiguration;

public class DispatcherServletRegistry extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {SpringJavaConfiguration.class};
	}
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {SpringMvcJavaConfiguration.class};
	}
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
}
