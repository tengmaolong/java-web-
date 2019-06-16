package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAOImpl implements OrderDAO {

    public void savaOrder(String bkid,String userid){
        PreparedStatement stmt = null;
        Connection con = null;

        try {
            DBbean db = new DBbean();
            con = db.getConnection();

            stmt = con.prepareStatement("insert into orderdata values (?,?)");
            stmt.setString(1,bkid);
            stmt.setString(2,userid);

            stmt.execute();


        } catch (Exception e) {
            try {
                System.out.println("插入失败，回滚");
                con.rollback();
            } catch (SQLException ex) { }
        }finally {
            try {
                con.close();
                stmt.close();
            } catch (SQLException e) { }
        }
    }
}
