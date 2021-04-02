package api.questionaire;

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

import com.vgu.sqm.questionnaire.Configuration;

@Path("/questionaire")
public class QuestionaireGETService {
	
		
	@Path("/info/{CName}")
	@GET
	public Response getClassInfo(@PathParam("CName") String id) throws SQLException, NamingException{
		Connection db = Configuration.getAcademiaConnection();
		try {
			
			PreparedStatement st = db.prepareStatement(
					"call GetClassesInfo(?)");
			st.setString(0, id);
			
			ResultSet rs = st.executeQuery();
			System.out.println(rs);
			

			JsonObject entry = Json.createObjectBuilder()
			.add("academic_name", rs.getString(0))
			.add("semester_name", rs.getString(1))
			.add("faculty_name", rs.getString(2))
			.add("program_name", rs.getString(3))
			.add("module_name", rs.getString(4)).build();
			return Response.ok().entity(entry.toString()).build();
		}
		finally {
			db.close();
		}
	}
	@Path("/lecturer/{CName}")
	@GET
	public Response GetClassesLecturer(String CName) throws SQLException, NamingException{
		Connection db = Configuration.getAcademiaConnection();
		try {
			JsonArrayBuilder classInfoArrayBuilder = Json.createArrayBuilder();
			
			PreparedStatement st = db.prepareStatement(
					"call GetClassesLecturer(?)");
			st.setString(0,  CName);
			
			ResultSet rs = st.executeQuery();
			System.out.println(rs);
			
			while (rs.next()) {
				JsonObject entry = Json.createObjectBuilder()									
						.add("Lecturer_Name", rs.getString(0)).build();
				classInfoArrayBuilder.add(entry);
			}
			return Response.ok().entity(classInfoArrayBuilder.build().toString()).build();
		}
		finally {
			db.close();
		}
		
	}
}
