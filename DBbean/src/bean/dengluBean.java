package bean;
import java.sql.*;
import java.util.*;

public class dengluBean {

    //管理员登陆验证
    public boolean valib(String username,String userpass) {
        boolean isValib = false;
        boolean isB = false;

        DBbean db = new DBbean();
        isB  = db.CreateConn();

        System.out.println(isB);
        if(isB) {

            String sql="select pass from dl where name = '" + username + "';";
            System.out.println("sql = " + sql);
            String getPass=db.selectKey(sql);

            if(getPass.equals(userpass)) {
                isValib = true;
            }
        }

        db.closeConn();
        db.closeRes();
        db.closeSta();

        return isValib;
    }

    //普通用户登陆
    public boolean valib_1(String username,String userpass) {
        boolean isValib = false;
        boolean isB = false;

        DBbean db = new DBbean();
        isB  = db.CreateConn();

        System.out.println(isB);
        if(isB) {
            String sql="select pass from bookSystem_user where id = '" + username + "';";
            System.out.println("sql = " + sql);
            String getPass=db.selectKey(sql);

            if(getPass.equals(userpass)) {
                isValib = true;
            }
        }

        db.closeConn();
        db.closeRes();
        db.closeSta();

        return isValib;
    }
    //插入用户注册信息
    public boolean insertUser(String id ,String pass ,String email){
        boolean is_insertUser = false;

        DBbean db = new DBbean();
        is_insertUser  = db.CreateConn();
        if (is_insertUser){
            String sql = "insert into bookSystem_user values('" + id + "','" + pass + "','" + email + "');";
            System.out.println(sql);
            db.updataDb(sql);
        }
        db.closeConn();
        db.closeRes();
        db.closeSta();
        return is_insertUser;
    }

    //保存用户
    public void savaUser(register register_user){
        DBbean db = new DBbean();
        if(db.CreateConn()){
            Connection con = db.getConnection();
            PreparedStatement stmt =null;
            System.out.println("开始插入");
            try {
                System.out.println(register_user.getRegister_id()+"1");
                System.out.println(register_user.getRegister_pass()+"1");
                System.out.println(register_user.getRegister_email()+"1");
                con.setAutoCommit(false);//自动提交关闭
                stmt = con.prepareStatement("insert into bookSystem_user(id,pass,email)values (?,?,?)");
                System.out.println(register_user.getRegister_id());
                System.out.println(register_user.getRegister_pass());
                System.out.println(register_user.getRegister_email());
                stmt.setString(1, register_user.getRegister_id());
                stmt.setString(2,register_user.getRegister_pass());
                stmt.setString(3,register_user.getRegister_email());

                stmt.execute();
                con.commit();//提交
                System.out.println("提交成功");


            }catch (Exception e){

            }finally {
                try{
                    System.out.println("finally");
                    stmt.close();
                    con.close();
                }catch (Exception e){ }
            }




        }

    }

}
