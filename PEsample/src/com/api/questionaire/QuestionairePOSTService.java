package com.api.questionaire;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.naming.NamingException;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.api.model.Answers;

import api.vgu.sqm.questionnaire.Configuration;

@Path("/questionaire")
public class QuestionairePOSTService {
	
	@Path("/post")
	@GET
	public String getMessage() throws SQLException, NamingException   {
		return "Hello Package Api.Questionaire POST Service!";
	}
	
	@Path("/answers")
	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	public Response submitQuestionaire(Answers answers)throws SQLException, NamingException{
		Connection db= Configuration.getAcademiaConnection();
		try {
			PreparedStatement st = db.prepareStatement("call StoreQuestionnaireDetail(\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\","
					+ "\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\",\"?\")");
			st.setString(1, answers.getCname());
			st.setString(2, answers.getLname());
			st.setString(3, answers.getAttend());
			st.setString(4, answers.getGender());
			st.setString(5, answers.getQ1());
			st.setString(6, answers.getQ2());
			st.setString(7, answers.getQ3());
			st.setString(8, answers.getQ4());
			st.setString(9, answers.getQ5());
			st.setString(10, answers.getQ6());
			st.setString(11, answers.getQ7());
			st.setString(12, answers.getQ8());
			st.setString(13, answers.getQ9());
			st.setString(14, answers.getQ10());
			st.setString(15, answers.getQ11());
			st.setString(16, answers.getQ12());
			st.setString(17, answers.getQ13());
			st.setString(18, answers.getQ14());
			st.setString(19, answers.getQ15());
			st.setString(20, answers.getQ16());
			st.setString(21, answers.getQ17());
			st.setString(22, answers.getQ18());
			st.executeQuery();
			return Response.ok().entity("New academic year successfully inserted").build();
		}catch(SQLException e) {
			e.printStackTrace();
			return Response.ok().entity(e.toString()).build();
			}
		finally {
			db.close();			
		}
	}
}
