# SpringMVC DBMS 연동
- SpringMVC 프로젝트에서 DBMS 를 연동하는 방법은 크게 2가지가 있다.
	1. `MyBatis` 라는 도구를 사용하여 `SQL` 방식으로 코딩하기
	2. `JPA(Java Data)` 라는 도구를 사용하여 `ORM` 방식으로 코딩하기
- 근래에 SpringMVC 프로젝트에서 `JPA` 방식의 사용이 점점 증가하고 있지만, 현업실무에서는 아직도 `MyBatis` 방식이 아주 많이 사용되고 있다.

## Java 에서 DBMS 연결하기
- java 에는 `JDBC` 라고하는 표준 DB연결 도구가 준비되어 있다.
- `DBMS`가 달라도 최소한 `JDBC` 의 연결 커넥션 인터페이스는 표준화되어 있다.


## SpringMVC + MyBatis 연동 프로젝트 구현하기

- 필요한 dependency 가져오기
- `mybatis` , `mybatis-spring` , `spring-jdbc` , `commons-dbcp2` , `JDBC`(mysql or oracle)
```xml
<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis</artifactId>
    <version>3.5.15</version>
</dependency>

<!-- https://mvnrepository.com/artifact/org.mybatis/mybatis-spring -->
<!-- mybatis 는 11 버전은 3.0.0 버전을 써야함 -->
<dependency>
    <groupId>org.mybatis</groupId>
    <artifactId>mybatis-spring</artifactId>
    <version>3.0.0</version>
</dependency>


<!-- https://mvnrepository.com/artifact/org.springframework/spring-jdbc -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-jdbc</artifactId>
    <version>6.1.5</version>
</dependency>

<!-- https://mvnrepository.com/artifact/org.apache.commons/commons-dbcp2 -->
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-dbcp2</artifactId>
    <version>2.12.0</version>
</dependency>

<!-- https://mvnrepository.com/artifact/com.mysql/mysql-connector-j -->
<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <version>8.3.0</version>
</dependency>


<!-- 오라클 -->
<!-- https://mvnrepository.com/artifact/com.oracle.database.jdbc/ojdbc8 -->
<dependency>
    <groupId>com.oracle.database.jdbc</groupId>
    <artifactId>ojdbc8</artifactId>
    <version>23.3.0.23.09</version>
</dependency>

```
- `주의할 점` : `spring-jdbc` 는 `spring-webmvc` 와 버전을 일치시킬것
- `주의할 점` : `mybatis-spring` 버전 유의 ! 
        SpringFramework `5.2.x 버전, Java 17미만버전` 에서는 `3.0.0 이하`를 사용해야한다.
