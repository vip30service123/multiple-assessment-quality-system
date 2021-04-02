package com.vgu.sqm.questionnaire;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import com.vgu.sqm.questionnaire.Configuration;


@Path("/example")
public class ExampleResource {
	@GET
	public String getMessage() throws SQLException, NamingException   {
		
		return "Hello World!" + "    " + getClasses();
	}
	public String getClasses()throws SQLException, NamingException{
		Connection db= Configuration.getAcademiaConnection();
		try {
			PreparedStatement st = db.prepareStatement("call GetClasses");
			ResultSet rs = st.executeQuery();
			String CName = "";
			while(rs.next()) {
				CName=CName+ " - " + rs.getString(1);
			}
			return CName;
		}
		finally {
			db.close();			
		}
	}
	
}
