package pl.lodz.p.it.ssbd2023.ssbd04.configs;
import jakarta.annotation.sql.DataSourceDefinition;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@DataSourceDefinition(
        name = "java:app/jdbc/siatka_admin",
        className = "com.mysql.cj.jdbc.MysqlDataSource",
        user = "siatka_admin",
        password = "siatka_admin",
        serverName = "mysql",
        portNumber = 3306,
        databaseName = "siatka",
        initialPoolSize = 1,
        minPoolSize = 0,
        maxPoolSize = 1,
        maxIdleTime = 10)
@DataSourceDefinition(
        name = "java:app/jdbc/siatka_mok",
        className = "com.mysql.cj.jdbc.MysqlDataSource",
        user = "siatka_mok",
        password = "siatka_mok",
        serverName = "mysql",
        portNumber = 3306,
        databaseName = "siatka"
)
@DataSourceDefinition(
        name = "java:app/jdbc/siatka_mzl",
        className = "com.mysql.cj.jdbc.MysqlDataSource",
        user = "siatka_mzl",
        password = "siatka_mzl",
        serverName = "mysql",
        portNumber = 3306,
        databaseName = "siatka"
)
@Stateless
public class JDBCConfig {
    @PersistenceContext(unitName = "siatka_admin")
    private EntityManager em;
}
