package bean;

import java.sql.*;

public class DBbean {

    private String drv = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/longxiao?serverTimezone=GMT";
    private String user = "root";
    private String key = "longxiao666";
    Connection conn = null;
    Statement sta = null;
    ResultSet res = null;

    public void setDrv(String drv) {
        this.drv = drv;
    }
    public String getDrv() {
        return drv;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    public String getUrl() {
        return url;
    }

    public void setUser(String user) {
        this.user = user;
    }
    public String getUser() {
        return user;
    }

    public void setKey(String key) {
        this.key = key;
    }
    public String getKey() {
        return key;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }
    public Connection getConn() {
        return conn;
    }

    public void setSta(Statement sta) {
        this.sta = sta;
    }
    public Statement getSta() {
        return sta;
    }

    public void setRes(ResultSet res) {
        this.res = res;
    }
    public ResultSet getRes() {
        return res;
    }



    public boolean CreateConn() {
        boolean b = false;
        try {
            System.out.println(drv);
            System.out.println(url);
            System.out.println(user);
            System.out.println(key);
            Class.forName(drv).newInstance();
            System.out.println("驱动加载成功");
            conn =java.sql.DriverManager.getConnection(url, user, key);
            System.out.println("数据库连接成功");
            b = true;
        }catch(SQLException e) {}
        catch(ClassNotFoundException e) {}
        catch(InstantiationException e) {}
        catch(IllegalAccessException e) {}
        System.out.println(b);
        return b;
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            System.out.println(drv);
            System.out.println(url);
            System.out.println(user);
            System.out.println(key);
            Class.forName(drv).newInstance();
            System.out.println("驱动加载成功");
            conn =java.sql.DriverManager.getConnection(url, user, key);
            System.out.println("数据库连接成功");

        }catch(SQLException e) {}
        catch(ClassNotFoundException e) {}
        catch(InstantiationException e) {}
        catch(IllegalAccessException e) {}
        return conn;

    }

    public String selectKey(String sql) {
        System.out.println("开始获取密码");
        try {
            sta = conn.createStatement();
            res = sta.executeQuery(sql);
        }catch(Exception e) {}

        String getu = null;
        String getk = "";
        System.out.println("开始转换密码为String");
        try {
            while(res.next()){
                getk = res.getString("pass");
            }
        } catch (SQLException e1) {}
        System.out.println("获得密码 = " + getk);
        return getk;
    }

    //更新数据库的方法
    public boolean updataDb(String sql){
        boolean is_updateDB = false;
        try{
            sta = conn.createStatement();
            sta.execute(sql);
            is_updateDB = true;
            System.out.println("注册信息插入成功/添加图书成功");
        }catch(SQLException e){}

        return is_updateDB;
    }

    public void closeConn() {

        try{
            if(conn!=null) {
                conn.close();
            }

        }catch(SQLException e) {}
    }

    public void closeSta() {

        try{
            if(sta!=null) {
                sta.close();
            }

        }catch(SQLException e) {}
    }

    public void closeRes() {

        try{
            if(res!=null) {
                res.close();
            }

        }catch(SQLException e) {}
    }

}
