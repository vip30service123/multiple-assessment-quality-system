package api.graph;

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

import api.configuration.Configuration;
import api.model.Classes;

@Path("/graph")
public class GraphGETService {
	@Path("/get")
	@GET
	public String getMessage() throws SQLException, NamingException {
		return "Hello from api.graph";
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
		}
	}
}
