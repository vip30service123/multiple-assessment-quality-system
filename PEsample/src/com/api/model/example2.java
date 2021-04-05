package com.api.model;

import java.sql.SQLException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.naming.NamingException;

public class example2 {
	@Path("/example2")
	@GET
	public String getMessage() throws SQLException, NamingException   {
		return "Hello Package Api.Questionaire.Model!";
	}	

}
