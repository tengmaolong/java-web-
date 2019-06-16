package bean;
import java.sql.*;
import java.util.*;

public class bookSystemBean {

    //插入图书
    public boolean insertBook(String bkid,String bkname,String bkpublisher,String bkprice){
        boolean isIn = false;
        boolean isC = false;

        DBbean db = new DBbean();
        isC  = db.CreateConn();
        System.out.println("isC="+isC);

        if (isC){
            String sql = "insert into book values('" + bkid + "','《"+ bkname+"》','" + bkpublisher + "','" + bkprice + "');";
            System.out.println(sql);
            isIn = db.updataDb(sql);
        }
        return isIn;
    }

    //删除图书
    public boolean selectBook(String bkid){
        boolean isD = false;
        DBbean db = new DBbean();
        if(db.CreateConn()){
            String sql = "delete from book where bkid = '" +  bkid + "';";
            System.out.println(sql);
            isD = db.updataDb(sql);
        }
        return isD;
    }

}
