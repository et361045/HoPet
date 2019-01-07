package misc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

import model.Detail.DetailBean;
import model.ProductInformation.ProductInformationBean;
import model.Shoppingcar.ShoppingcarBean;
import model.activity.ActivityBean;
import model.activityregistrationform.ActivityRegistrationFormBean;
import model.foster.FosterBean;
import model.fosterCommission.FosterCommissionBean;
import model.fosterForm.FosterFormBean;
import model.fostercare.FostercareBean;
import model.member.MemberBean;
import model.shoporder.ShoporderBean;


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
		builder.addAnnotatedClass(DetailBean.class);
		builder.addAnnotatedClass(ProductInformationBean.class);
		builder.addAnnotatedClass(ShoporderBean.class);
		builder.addAnnotatedClass(ShoppingcarBean.class);
		builder.addAnnotatedClass(FostercareBean.class);
		builder.addAnnotatedClass(ActivityBean.class);
		builder.addAnnotatedClass(ActivityRegistrationFormBean.class);
		builder.addAnnotatedClass(FosterBean.class);
		builder.addAnnotatedClass(FosterFormBean.class);
		builder.addAnnotatedClass(FosterCommissionBean.class);
		
		
		return builder.buildSessionFactory();
	}
	public static void main(String[] args) throws Exception {
		ApplicationContext context=new AnnotationConfigApplicationContext(SpringJavaConfiguration.class);
		DataSource dataSource = (DataSource) context.getBean("dataSource");
		Connection conn = dataSource.getConnection();
		Statement stmt = conn.createStatement();

		ResultSet rset = stmt.executeQuery("select * from member");

		while(rset.next()) {
			String col1 = rset.getString(1);
			String col2 = rset.getString(2);
			System.out.println("<h3>"+col1+", "+col2+"</h3>");
		}
		rset.close();
		stmt.close();
		conn.close();
		((ConfigurableApplicationContext) context).close();
	}
}
