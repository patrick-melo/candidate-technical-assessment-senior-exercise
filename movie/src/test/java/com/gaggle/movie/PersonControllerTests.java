package com.gaggle.movie;

import static org.hamcrest.Matchers.*;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

@SpringBootTest
@AutoConfigureMockMvc
public class PersonControllerTests {

	@Autowired
	private MockMvc mockMvc;

	@Test
	public void noNameParamPersonShouldReturn400() throws Exception {

		this.mockMvc.perform(get("/"))
					.andDo(print()).andExpect(status().is(400));					
	}
	
	@Test
	public void idParamShouldReturnSingleResult() throws Exception {

		this.mockMvc.perform(get("/1"))
					.andDo(print()).andExpect(status().isOk())
					.andExpect(jsonPath("$.movie").value("Batman: The Killing Joke (2016)"));
	}

	@Test
	public void partialNameParamPersonShouldReturnMultipleResults() throws Exception {

		this.mockMvc.perform(get("/").param("name", "bru"))
					.andDo(print()).andExpect(status().isOk())
					.andExpect(jsonPath("$", hasSize(15)));
	}

    @Test
	public void firstNameParamPersonShouldReturnMultipleResults() throws Exception {

		this.mockMvc.perform(get("/").param("name", "Bruce"))
					.andDo(print()).andExpect(status().isOk())
					.andExpect(jsonPath("$", hasSize(15)));
	}

	@Test
	public void lastNameParamPersonShouldReturnMultipleResults() throws Exception {

		this.mockMvc.perform(get("/").param("name", "Wayne"))
					.andDo(print()).andExpect(status().isOk())
					.andExpect(jsonPath("$", hasSize(15)));
	}

	@Test
	public void fullNameParamPersonShouldReturnResults() throws Exception {

		this.mockMvc.perform(get("/").param("name", "Bruce Wayne"))
					.andDo(print()).andExpect(status().isOk())
					.andExpect(jsonPath("$", hasSize(15)));
	}	

}
