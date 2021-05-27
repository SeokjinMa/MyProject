package mwp;

import java.sql.*;
import java.util.*;

public class CustDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public CustInfo readDB(String custphone) {
		CustInfo cust = new CustInfo();
		String sql = "select * from customers where custphone='"+custphone+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cust.setCustphone(rs.getString("custphone"));
				cust.setCustadr(rs.getString("custadr"));
			}
		}
		catch(Exception e) {
			System.out.println("고객 정보 읽기 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
		return cust;
	}
	
	public List<CustInfo> readAllDB(){
		ArrayList<CustInfo> list = new ArrayList<CustInfo>();
			String sql = "select * from customers";
			try {
				con = DBCon.getCon();
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					CustInfo cust = new CustInfo();
					cust.setCustphone(rs.getString("custphone"));
					cust.setCustadr(rs.getString("custadr"));
					list.add(cust);
				}
			}
			catch(Exception e) {
				System.out.println("전체 고객목록 읽기 오류");
			}
			finally {
				DBCon.close(con, ps, rs);
			}
		return list;
	}
	public void dbUpdate(CustInfo cust) {
		String sql = "update customers"
				+" set custphone = ?, custadr = ?"
				+" where custphone = ? ";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, cust.getCustphone());
			ps.setString(2, cust.getCustadr());
			ps.executeUpdate();
		}
		catch (Exception e){
			System.out.println("고객정보 수정 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
	public void deleteDB(String custphone) {
		String sql = "delete customers where custphone=?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, custphone);
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("고객정보 삭제 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
}
