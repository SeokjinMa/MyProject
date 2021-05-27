package mwp;

import java.sql.*;
import java.util.*;

public class OrderDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public void insertDB(Orders ods) {
		String sql = "insert into orders"
				+"(odate,odrphone,odradr,menu,oprice,opay)"
				+" values(?,?,?,?,?,?)";
		System.out.println("ods.getDate() = " + ods.getDate());
		System.out.println("ods.getOdrphone() = " + ods.getOdrphone());
		System.out.println("ods.getOdradr() = " + ods.getOdradr());
		System.out.println("ods.getMenu() = " + ods.getMenu().trim());
		System.out.println("ods.getPrice() = " + ods.getPrice());
		System.out.println("ods.getPay() = " + ods.getPay());
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, ods.getDate());
			ps.setString(2, ods.getOdrphone());
			ps.setString(3, ods.getOdradr());
			ps.setString(4, ods.getMenu().trim());
			ps.setInt(5, ods.getPrice());
			ps.setInt(6, ods.getPay());
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("주문 추가 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
	
	public Orders readDB(String odrphone) {
		Orders ods = new Orders();
		String sql = "select * from orders where odrphone='"+odrphone+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				ods.setDate(rs.getString("odate"));
				ods.setOdrphone(rs.getString("odrphone"));
				ods.setOdradr(rs.getString("odradr"));
				ods.setMenu(rs.getString("menu"));
				ods.setPrice(rs.getInt("oprice"));
				ods.setPay(rs.getInt("opay"));
			}
		}
		catch(Exception e) {
			System.out.println("주문 읽기 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
		return ods;
	}
	
	public List<Orders> readAllDB(){
		ArrayList<Orders> list = new ArrayList<Orders>();
			String sql = "select * from orders";
			try {
				con = DBCon.getCon();
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					Orders ods = new Orders();
					ods.setDate(rs.getString("odate"));
					ods.setOdrphone(rs.getString("odrphone"));
					ods.setOdradr(rs.getString("odradr"));
					ods.setMenu(rs.getString("menu"));
					ods.setPrice(rs.getInt("oprice"));
					ods.setPay(rs.getInt("opay"));
					list.add(ods);
				}
			}
			catch(Exception e) {
				System.out.println("전체 주문목록 읽기 오류");
			}
			finally {
				DBCon.close(con, ps, rs);
			}
		return list;
	}
	public void dbUpdate(Orders ods) {
		String sql = "update orders"
				+" set odradr = ?, menu = ?, oprice = ?, opay = ?"
				+" where odrphone = ? ";
		System.out.println(ods.getOdradr());
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, ods.getOdradr());
			ps.setString(2, ods.getMenu());
			ps.setInt(3, ods.getPrice());
			ps.setInt(4, ods.getPay());
			ps.setString(5, ods.getOdrphone());
			ps.executeUpdate();
		}
		catch (Exception e){
			System.out.println("주문 수정 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
	public void deleteDB(String odrphone) {
		String sql = "delete orders where odrphone=?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, odrphone);
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("주문 삭제 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
}

