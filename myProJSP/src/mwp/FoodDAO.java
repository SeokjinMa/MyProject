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
			System.out.println("���� ���� �б� ����");
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
				System.out.println("��ü ���ĸ�� �б� ����");
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
			System.out.println("�ֹ� �߰� ����");
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
		System.out.println("�޴� = "+fdm.getMenu()+" ����= "+fdm.getFprice());
		try {
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
/*			ps.setString(1, fdm.getMenu());
			ps.setInt(2, fdm.getFprice());*/
			ps.executeUpdate();
		}
		catch (Exception e){
			System.out.println("�������� ���� ����");
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
			System.out.println("���ĸ޴� ���� ����");
		}
		finally {
			DBCon.close(con, ps, rs);
		}
	}
}
