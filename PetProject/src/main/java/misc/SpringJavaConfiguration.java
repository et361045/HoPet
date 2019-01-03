package misc;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

import model.member.MemberBean;


@Configuration
@ComponentScan(basePackages={"model"})
public class SpringJavaConfiguration {

	@Bean
	public DataSource dataSource()
	{
		System.out.println("haahahahahah");
		try {
			JndiObjectFactoryBean bean=new JndiObjectFactoryBean();
			bean.setJndiName("java:comp/env/jdbc/xxx");
			bean.setProxyInterface(DataSource.class);
			bean.afterPropertiesSet();
			return (DataSource) bean.getObject();
		} catch (IllegalArgumentException | NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Bean 
	public SessionFactory sessionFactory()
	{
		LocalSessionFactoryBuilder builder=
				new LocalSessionFactoryBuilder(dataSource());
		Properties props=new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
		props.setProperty("hibernate.current_session_context_class", "thread");
		builder.addProperties(props);
		builder.addAnnotatedClass(MemberBean.class);
		
		return builder.buildSessionFactory();
	}
}
