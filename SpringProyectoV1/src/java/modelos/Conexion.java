
package modelos;

import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class Conexion {
        public DriverManagerDataSource conexion(){
        DriverManagerDataSource dataSource =  new DriverManagerDataSource();        
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/springbdf");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
        
    
    }
    
}
