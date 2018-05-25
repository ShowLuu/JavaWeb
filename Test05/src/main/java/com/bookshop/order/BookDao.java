package com.bookshop.order;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lu.utils.DBTools;

public class BookDao {
	
	//����
	public boolean insert(String bId,String bName,int number,String vr){
		DBTools db=new DBTools();
		String sql="insert into book_shop value(null,'"+bId+"','"+bName+"',"+number+",'"+vr+"')";
		int res=db.update(sql);
		if(res==0){
			System.out.println("����ʧ��");
			return false;
		}
		System.out.println("�����ɹ�");
		return true;
	}
	
	//Ԥ��������
	public boolean preInsert(String bId,String bName,int number,String vr){
		DBTools db=new DBTools();
		String sql="insert into book_shop value(null,?,?,?,?)";
		PreparedStatement pre=db.getPre(sql);
		try {
			pre.setString(1, bId);
			pre.setString(2, bName);
			pre.setInt(3, number);
			pre.setString(4, vr);
			pre.addBatch();
			pre.executeBatch();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Ԥ��������ʧ��");
			return false;
		}
		System.out.println("Ԥ���������ɹ�");
		return true;
	}
	
	//ɾ��
	public boolean delete(String sql){
		DBTools db=new DBTools();
		int res=db.update(sql);
		if(res==0){
			return false;
		}
		return true;
	}
	
	//�޸�
	public boolean update(String sql){
		DBTools db=new DBTools();
		int res=db.update(sql);
		if(res==0){
			return false;
		}
		return true;
	}
	
	//��ѯ
	public List<BookBean> getBookList(){
		DBTools db=new DBTools();
		String sql="select * from book_shop";
		ResultSet res=db.getRes(sql);
		List<BookBean> list=new ArrayList<>();
		try {
			while(res.next()){
				BookBean book=new BookBean();
				book.setbId(res.getString("bId"));
				book.setbName(res.getString("bName"));
				book.setNumber(res.getInt("number"));
				book.setVr(res.getString("vr"));
				list.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static void main(String[] args) {
		BookDao b=new BookDao();
		//Ԥ��������
//		b.preInsert("TP312JA","Java����ʵս",12,"���������������");
		//����
//		b.insert("TP312JA","JavaWeb����ʵս",18,"���������������");
		//ɾ��
		b.delete("delete from book_shop where id='3' ");
		//�޸�
//		b.update("update book_shop set bName='' where bId='' ");
		//��ѯ
		List<BookBean> lists=b.getBookList();
		for(BookBean list:lists){
			System.out.println(list);
		}
	}

}
