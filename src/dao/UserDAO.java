package dao;

import database.DBConnection;

import java.sql.ResultSet;

public class UserDAO {
    public static UserDAO INSTANCE = new UserDAO();

    public boolean doLogin(String email, String password){

        ResultSet rs = DBConnection.INSTANCE.executeQuery(
                "SELECT CASE WHEN EXISTS (" +
                "    SELECT *" +
                "    FROM localuser" +
                "    WHERE email = '" + email + "'" +
                "AND pass = '"+ password +"'" +
                ")" +
                "THEN CAST(1 AS BIT)" +
                "ELSE CAST(0 AS BIT) END AS 'LoginResult'");

        try{
            while (rs.next()){
                return rs.getBoolean("LoginResult");
            }
        }catch (Exception ex){
            return false;
        }

        return false;
    }

    public void createUser(String email, String password, String name, String lastname){
        DBConnection.INSTANCE.executeUpdate(
                "INSERT INTO localuser VALUES ('"+ email +"', '"+
                        password +"', '"+
                        name +"', '"+
                        lastname+"', " +
                        "(SELECT id FROM userrole where code = 101))"
        );
    }
}
