package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import utils.DBTools;

public class LoginDao {
	
	public boolean checkUser(String username,String password){
		DBTools db=new DBTools();
		String sql="select * from user where username='"+username+"'";
		ResultSet res=db.getQuery(sql);
		try {
			while(res.next()){
				if(res.getString("password").equals(password)){
					return true;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
