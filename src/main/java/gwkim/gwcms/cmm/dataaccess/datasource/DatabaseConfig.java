package gwkim.gwcms.cmm.dataaccess.datasource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.orm.jpa.hibernate.SpringImplicitNamingStrategy;
import org.springframework.boot.orm.jpa.hibernate.SpringPhysicalNamingStrategy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/**
 * JPA & Mybatis 설정
 *
 * @author gwkim
 * @since 2023.08.23
 * @version 1.0
 */
@Configuration
@EnableJpaRepositories(basePackages = "dpub.cms.dpcms.**.repository", entityManagerFactoryRef = "entityManagerFactory")
@MapperScan(sqlSessionFactoryRef = "sqlSessionFactory")
public class DatabaseConfig {
    @Autowired
    private Environment env;

    /**
     * Jpa DataSource
     *
     * @return DataSource
     */
    @Bean(name= "dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(env.getProperty("spring.datasource.driver-class-name"));
        dataSource.setUrl(env.getProperty("spring.datasource.url"));
        dataSource.setUsername(env.getProperty("spring.datasource.username"));
        dataSource.setPassword(env.getProperty("spring.datasource.password"));
        return dataSource;
    }

    /**
     * Mybatis DataSource
     *
     * @return DataSource
     */
    @Bean(name= "mybatisDataSource")
    public DataSource mybatisDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(env.getProperty("spring.datasource.driver-class-name"));
        dataSource.setUrl(env.getProperty("spring.datasource.url"));
        dataSource.setUsername(env.getProperty("spring.datasource.username"));
        dataSource.setPassword(env.getProperty("spring.datasource.password"));
        return dataSource;
    }

    /**
     * SqlSessionFactory Bean
     *
     * @param dataSource
     * @return
     * @throws Exception
     */
    @Bean(name= "sqlSessionFactory")
    public SqlSessionFactory sqlSessionFactory(@Qualifier("mybatisDataSource") DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sessionFactoryBean = new SqlSessionFactoryBean();
        sessionFactoryBean.setDataSource(dataSource);

        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        sessionFactoryBean.setConfigLocation(resolver.getResource("classpath:/dpcms/sqlmap/config/mysql/sql-map-config-mysql-nfu.xml"));
        sessionFactoryBean.setMapperLocations(resolver.getResources("classpath:/dpcms/sqlmap/mapper/mysql/dpcms/**/*mysql.xml")); //mapper path
//        sessionFactoryBean.setTypeAliasesPackage("com.maxxyoung.domain, com.maxxyoung.dto");
//        sessionFactoryBean.setTypeHandlersPackage("com.maxxyoung.typehandler");
        Objects.requireNonNull(sessionFactoryBean.getObject()).getConfiguration().setMapUnderscoreToCamelCase(true); //camelCase
        return sessionFactoryBean.getObject();
    }

    /**
     * SqlSessionTemplate Bean
     *
     * @param sqlSessionFactory
     * @return
     */
    @Bean(name= "sqlSessionTemplate")
    public SqlSessionTemplate sqlSessionTemplate(@Qualifier("sqlSessionFactory") SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }

    /**
     * Jpa EntityManagerFactory Bean
     *
     * @param dataSource
     * @return
     */
    @Bean(name = "entityManagerFactory")
    public EntityManagerFactory entityManagerFactory(@Qualifier("dataSource") DataSource dataSource) {

        LocalContainerEntityManagerFactoryBean factory = new LocalContainerEntityManagerFactoryBean();
        factory.setPackagesToScan("dpub.cms.dpcms.**.domain");
        factory.setDataSource(dataSource);
        factory.setPersistenceUnitName("db1");

        HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        vendorAdapter.setShowSql(true);
        factory.setJpaVendorAdapter(vendorAdapter);

        Map<String, Object> properties = new HashMap<>();
        properties.put("hibernate.implicit_naming_strategy", SpringImplicitNamingStrategy.class.getName()); //네이밍전략
        properties.put("hibernate.physical_naming_strategy", SpringPhysicalNamingStrategy.class.getName());
        properties.put("hibernate.hbm2ddl.auto", env.getProperty("spring.jpa.hibernate.ddl-auto"));
        properties.put("hibernate.dialect", env.getProperty("spring.jpa.properties.hibernate.dialect"));
        properties.put("hibernate.format_sql", env.getProperty("spring.jpa.properties.hibernate.format_sql"));
        properties.put("hibernate.default_batch_fetch_size", env.getProperty("spring.jpa.properties.hibernate.default_batch_fetch_size"));
        factory.setJpaPropertyMap(properties);
        factory.afterPropertiesSet();

        return factory.getObject();
    }


    /**
     * Mybatis Transaction Manager Bean
     *
     * @param dataSource
     * @return
     */
    @Bean(name= "txManager")
    public PlatformTransactionManager txManager(@Qualifier("mybatisDataSource") DataSource dataSource) {
        DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager(dataSource);
        dataSourceTransactionManager.setNestedTransactionAllowed(true); // nested

        return dataSourceTransactionManager;
    }

    /**
     * JPA Transaction Manager Bean
     *
     * @param entityManagerFactory
     * @return
     */
    @Primary
    @Bean(name= "transactionManager")
    public PlatformTransactionManager jpaTxManager(EntityManagerFactory entityManagerFactory) {
        JpaTransactionManager jpaTransactionManager = new JpaTransactionManager();
        jpaTransactionManager.setEntityManagerFactory(entityManagerFactory);

        return jpaTransactionManager;
    }
}
