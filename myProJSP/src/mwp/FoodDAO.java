package mwp;
import java.sql.*;
import java.util.*;

public class FoodDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public FoodMenu readDB(String menu) {
		FoodMenu fdm = new FoodMenu();
		String sql = "select * from foodmenu where menu='"+menu+"'";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				fdm.setMenu(rs.getString("menu"));
				fdm.setFprice(rs.getInt("fprice"));
			}
		}
		catch(Exception e) {
			System.out.println("음식 정보 읽기 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
		return fdm;
	}
	
	public List<FoodMenu> readAllDB(){
		ArrayList<FoodMenu> list = new ArrayList<FoodMenu>();
			String sql = "select * from foodmenu";
			try {
				con = DBCon.getCon();
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					FoodMenu fdm = new FoodMenu();
					fdm.setMenu(rs.getString("menu"));
					fdm.setFprice(rs.getInt("fprice"));
					list.add(fdm);
				}
			}
			catch(Exception e) {
				System.out.println("전체 음식목록 읽기 오류");
			}
			finally {
				DBCon.close(con, ps, rs);
			}
		return list;
	}
	public void insertDB(FoodMenu fdm) {
		String sql = "insert into foodmenu"
				+"(menu,fprice)"
				+" values(?,?)";
		System.out.println("fdm.getMenu() = " + fdm.getMenu());
		System.out.println("fdm.getFprice() = " + fdm.getFprice());

		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, fdm.getMenu());
			ps.setInt(2, fdm.getFprice());
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("주문 추가 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
	public void dbUpdate(FoodMenu fdm) {
		String sql = "update foodmenu"
				+" set menu = '"+fdm.getMenu()+"', fprice = '"+fdm.getFprice()
				+"' where menu = '"+fdm.getMenu()+"'";
		System.out.println("sql = "+sql);
		System.out.println("메뉴 = "+fdm.getMenu()+" 가격= "+fdm.getFprice());
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
/*			ps.setString(1, fdm.getMenu());
			ps.setInt(2, fdm.getFprice());*/
			ps.executeUpdate();
		}
		catch (Exception e){
			System.out.println("음식정보 수정 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
	public void deleteDB(String menu) {
		String sql = "delete foodmenu where menu=?";
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, menu);
			ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("음식메뉴 삭제 오류");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
}
