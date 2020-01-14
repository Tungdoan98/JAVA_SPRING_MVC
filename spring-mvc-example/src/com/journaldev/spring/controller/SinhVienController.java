package com.journaldev.spring.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.journaldev.spring.connection.ConnectionUtils;
import com.journaldev.spring.encode.SymetriCryptor;
import com.journaldev.spring.model.SinhVien;



@Controller
public class SinhVienController {
	@RequestMapping(value = "/ShowdataSV", method = RequestMethod.GET, headers="Accept=*/*",produces = { MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public ArrayList<SinhVien> Showdata(){
		System.out.println("Vao ham");
		ArrayList<SinhVien> listSV = new ArrayList<SinhVien>();
		String sql = "SELECT * FROM SINHVIEN order by msv ";
		Connection connection;
		try {
			connection = ConnectionUtils.getMyConnection();
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()) {
				SinhVien sv = new SinhVien(rs.getString(5), rs.getString(2), rs.getString(3) , rs.getInt(4) , rs.getInt(1));
				listSV.add(sv);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return listSV;	
	}
	
	@RequestMapping(value = "/deleteSV/{id}", method = RequestMethod.POST, headers = "Accept=*/*", produces = {
			MediaType.APPLICATION_JSON_VALUE, //
			MediaType.APPLICATION_XML_VALUE })
	@ResponseBody
	public int deleteStudent(@PathVariable("id") String id){
		System.out.println("vao ham delete");
		System.out.println(id);
		int d=0;
		String sql="DELETE FROM SINHVIEN WHERE ID = '"+id+"' ";
		Connection connection;
		try {
			connection = ConnectionUtils.getMyConnection();
			Statement statement = connection.createStatement();
			 ResultSet rs1 = statement.executeQuery(sql);
			 if(rs1 != null) {
				 d=1;
			 }
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		System.out.println("d" + d);
		return d;
	}
	
	@RequestMapping(value="/AddSV",method=RequestMethod.POST)
    public @ResponseBody String addSV(@RequestParam("code") String code,
			@RequestParam("name") String name, @RequestParam("age") int age,
			@RequestParam("className") String className,ModelMap maps){
		int d=0;
		int id_max = 0;
		System.out.println(code);
		String query = "SELECT * FROM SINHVIEN" ;
		Connection connection;
		try {
			 connection = ConnectionUtils.getMyConnection();
			 Statement statement = connection.createStatement();	
			 ResultSet rs = statement.executeQuery(query);
			 while (rs.next()) {
				 if(code.trim().equals(rs.getString(5).trim())) {
					 return "Student already exists !";
				 }
				 else {
					int id = rs.getInt(1);
					 if(id>id_max) {
						 id_max = id;
					 }
				 }			 
			 }
			 int id_new = id_max + 1;
			 String sql = "INSERT INTO SINHVIEN (ID, NAME, CLASSNAME, AGE, MSV) VALUES ('"+id_new+"','"+name+"', '"+className+"', '"+age+"', '"+code+"')";
			 ResultSet rs1 = statement.executeQuery(sql);
			 if(rs1 != null) {
				 d=1;
			 }
			 connection.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(d==1) {
			return "Add student succeed !";
		}
		else {
			d=2;
			return "Add student error !";
		}
    } 
	@RequestMapping(value="/EditSV",method=RequestMethod.POST)
    public @ResponseBody String EditSV(@RequestParam("id") String id,@RequestParam("code") String code,
			@RequestParam("name") String name, @RequestParam("age") int age,
			@RequestParam("className") String className,ModelMap maps){
		int d=0;
		System.out.println("vao ham update");
	    String sql = "UPDATE SINHVIEN SET NAME = '"+name+"',CLASSNAME='"+className+"',AGE ='"+age+"', MSV = '"+code+"' WHERE ID = '"+id+"'";
	    Connection connection;
	    try {
	      connection = ConnectionUtils.getMyConnection();
	      Statement statement = connection.createStatement();
	       ResultSet rs1 = statement.executeQuery(sql);
	       if(rs1 != null) {
	         d=1;
	       }
	    
	    } catch (ClassNotFoundException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } 
		if(d==1) {
			return "Edit student succeed !";
		}
		else {
			return "Edit student error !";
		}
    } 
}