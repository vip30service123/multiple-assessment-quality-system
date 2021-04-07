
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
import api.model.Classes;

@Path("/graph")
public class GraphGETService {
	@Path("/get")
	@GET
	public String getMessage() throws SQLException, NamingException {
		return "Hello from api.graph";
	}
		@Path("/attends")
	@GET
	public Response getAttend(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {			
			PreparedStatement st = db.prepareStatement(
					"call GetAttends(\"" + classes.getAYName() + "\", "
							+ "\"" + classes.getSName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getMName() + "\", "
							+ "\"" + classes.getLName() + "\", "
							+ "\"" + classes.getCName() + "\" )");
			ResultSet rs = st.executeQuery();
			JsonObjectBuilder builder = Json.createObjectBuilder();
			if(rs.next()) {
				builder.add("Never", rs.getString(1))
				.add("Rarely", rs.getString(2))
				.add("Sometime", rs.getString(3))
				.add("Often", rs.getString(4))
				.add("Always", rs.getString(5));
			}
			JsonObject entry = builder.build();
			return Response.ok().entity(entry.toString()).build();
		}
		finally {
			db.close();
		}
	}
	@Path("/gender")
	@GET
	public Response getGender(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {			
			PreparedStatement st = db.prepareStatement(
					"call GetGenders(\"" + classes.getAYName() + "\", "
							+ "\"" + classes.getSName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getMName() + "\", "
							+ "\"" + classes.getLName() + "\", "
							+ "\"" + classes.getCName() + "\" )");
			ResultSet rs = st.executeQuery();
			JsonObjectBuilder builder = Json.createObjectBuilder();
			if(rs.next()) {
				builder.add("Female", rs.getString(1))
				.add("Male", rs.getString(2))
				.add("Other", rs.getString(3));
				
			}
			JsonObject entry = builder.build();
			return Response.ok().entity(entry.toString()).build();
		}
		finally {
			db.close();
		}
	}
	@Path("/class")
	@GET
	public Response getClassGraph(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {			
			PreparedStatement st = db.prepareStatement(
					"call GetClassGraph(\"" + classes.getAYName() + "\", "
							+ "\"" + classes.getSName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getMName() + "\", "
							+ "\"" + classes.getLName() + "\" )");
			ResultSet result = st.executeQuery();
			JsonArrayBuilder builder = Json.createArrayBuilder();
			while (result.next()) {
				builder.add(Json.createObjectBuilder().add("Class", result.getString(1)).build());
			}
			return Response.ok().entity(builder.build().toString()).build();
		}
		catch (SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
		}
		finally {
			db.close();
		}
	}
	@Path("/academic_year")
	@GET
	public Response getAcademicYear(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			JsonArrayBuilder academicYearArrayBuilder = Json.createArrayBuilder();
			PreparedStatement st = db.prepareStatement(
					"call GetAcademicYearGraph(\"" + classes.getSName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getMName() + "\", "
							+ "\"" + classes.getLName() + "\", "
							+ "\"" + classes.getCName() + "\" )");
			ResultSet result = st.executeQuery();
			while (result.next()) {
				academicYearArrayBuilder.add(Json.createObjectBuilder().add("Academic_Year", result.getString(1)).build());
			}
			return Response.ok().entity(academicYearArrayBuilder.build().toString()).build();
		}
		catch (SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
		}
		finally {
			db.close();
		}
	}
	
	@Path("/module")
	@GET
	public Response getModule(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			JsonArrayBuilder moduleArrayBuilder = Json.createArrayBuilder();
			PreparedStatement st = db.prepareStatement(
					"call GetModuleGraph(\"" + classes.getAYName() + "\", "
							+ "\"" + classes.getSName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getLName() + "\", "
							+ "\"" + classes.getCName() + "\" )");
			ResultSet result = st.executeQuery();
			while (result.next()) {
				moduleArrayBuilder.add(Json.createObjectBuilder().add("Module", result.getString(1)).build());
			}
			return Response.ok().entity(moduleArrayBuilder.build().toString()).build();
		}
		catch (SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
		}
		finally {
			db.close();
		}
	}
	
	@Path("/lecturer")
	@GET
	public Response getLecturer(Classes classes) throws SQLException, NamingException {
		Connection db = (Connection) Configuration.getAcademiaConnection();
		try {
			JsonArrayBuilder lecturerArrayBuilder = Json.createArrayBuilder();
			PreparedStatement st = db.prepareStatement(
					"call GetLecturerGraph(\"" + classes.getAYName() + "\", "
							+ "\"" + classes.getSName() + "\", "
							+ "\"" + classes.getFName() + "\", "
							+ "\"" + classes.getPName() + "\", "
							+ "\"" + classes.getMName() + "\", "
							+ "\"" + classes.getCName() + "\" )");
			ResultSet result = st.executeQuery();
			while (result.next()) {
				lecturerArrayBuilder.add(Json.createObjectBuilder().add("Lecturer", result.getString(1)).build());
			}
			return Response.ok().entity(lecturerArrayBuilder.build().toString()).build();
		}
		catch (SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
		}
		finally {
			db.close();

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
						.add("Semester", rs.getString(1)).build());
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
						.add("Program", rs.getString(1)).build());
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

