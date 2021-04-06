package api.graph;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;

import javax.naming.NamingException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import api.configuration.Configuration;
import api.model.*;


@Path("/graph")
public class GraphGETService {
	
	@Path("/get")
	@GET
	public String getMessage() throws SQLException, NamingException   {
		return "Hello Package Api.Graph GET Service!";
	}
	
	@Path("/faculty")
	@GET
	public Response getFaculty(Classes classes) throws SQLException, NamingException{
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			PreparedStatement st = db.prepareStatement(
					"call GetFacultyGraph(\""+ classes.getAYName()+ "\", "
							+ "\"" + classes.getSName() + "\","
							+ "\"" + classes.getPName() + "\","
							+ "\"" + classes.getMName() + "\","
							+ "\"" + classes.getLName() + "\","
							+ "\"" + classes.getCName() + "\""
					+ ")"
			);
			System.out.println(st);
			ResultSet rs = st.executeQuery();
			JsonArrayBuilder faculty = Json.createArrayBuilder();
			while(rs.next()) {
				faculty.add( Json.createObjectBuilder()									
						.add("Faculty", rs.getString(1)).build());
			}
			JsonArray entry = faculty.build();
			return Response.ok().entity(entry.toString()).build();
		}catch(SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
			}
		finally {
			db.close();			
		}
	}
	
	@Path("/semester")
	@GET
	public Response getSemester(Classes classes) throws SQLException, NamingException{
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			PreparedStatement st = db.prepareStatement(
					"call GetSemesterGraph(\""+ classes.getAYName()+ "\", "
							+ "\"" + classes.getFName() + "\","
							+ "\"" + classes.getPName() + "\","
							+ "\"" + classes.getMName() + "\","
							+ "\"" + classes.getLName() + "\","
							+ "\"" + classes.getCName() + "\""
					+ ")"
			);
			System.out.println(st);
			ResultSet rs = st.executeQuery();
			JsonArrayBuilder faculty = Json.createArrayBuilder();
			while(rs.next()) {
				faculty.add( Json.createObjectBuilder()									
						.add("Faculty", rs.getString(1)).build());
			}
			JsonArray entry = faculty.build();
			return Response.ok().entity(entry.toString()).build();
		}catch(SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
			}
		finally {
			db.close();			
		}
	}
	
	@Path("/program")
	@GET
	public Response getProgram(Classes classes) throws SQLException, NamingException{
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			PreparedStatement st = db.prepareStatement(
					"call GetProgramGraph(\""+ classes.getAYName()+ "\", "
							+ "\"" + classes.getSName() + "\","
							+ "\"" + classes.getFName() + "\","
							+ "\"" + classes.getMName() + "\","
							+ "\"" + classes.getLName() + "\","
							+ "\"" + classes.getCName() + "\""
					+ ")"
			);
			System.out.println(st);
			ResultSet rs = st.executeQuery();
			JsonArrayBuilder faculty = Json.createArrayBuilder();
			while(rs.next()) {
				faculty.add( Json.createObjectBuilder()									
						.add("Faculty", rs.getString(1)).build());
			}
			JsonArray entry = faculty.build();
			return Response.ok().entity(entry.toString()).build();
		}catch(SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
			}
		finally {
			db.close();			
		}
	}
}
