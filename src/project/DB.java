package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Project.Product;


public class DB {
	private String username = "root";
	private String password = "";
	private String dbName = "myproject";
	private String url = "jdbc:mysql://localhost:3306/" + dbName;
	private String driver = "com.mysql.jdbc.Driver";
	
	ArrayList<Product> list = new ArrayList<>();
	
	
	private Connection con;
	private void dbConnect() {
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, username, password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void dbClose() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public ArrayList<Product> fetch() throws SQLException {
		dbConnect();
		String sql = "Select * from product";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("id");
			String name= rs.getString("name");
			String category= rs.getString("category");
			String price= rs.getString("price");
			String featured= rs.getString("featured");
			String image= rs.getString("image");
			
			Product p = new Product();
			p.setCategory(category);
			p.setFeatured(featured);
			p.setId(id);
			p.setImage(image);
			p.setName(name);
			p.setPrice(price);
			list.add(p);
			p=null;
			
		}
		
		dbClose();
		return list;
	}
	public Product fetchProduct(String id) throws SQLException {
		dbConnect();
		String sql = "select * from product where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rst = pstmt.executeQuery();
		Product p = new Product();
		while(rst.next()){
			
			p.setId(rst.getInt("id"));
			p.setName(rst.getString("name"));
			p.setPrice(rst.getString("price"));
			p.setCategory(rst.getString("category"));
			p.setFeatured(rst.getString("featured"));
			p.setImage(rst.getString("image"));
		}
		dbClose();
		return p;
	}
	

}
