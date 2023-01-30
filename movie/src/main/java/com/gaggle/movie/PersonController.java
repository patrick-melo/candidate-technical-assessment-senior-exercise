package com.gaggle.movie;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class PersonController {
	private static final Logger log = LoggerFactory.getLogger(PersonController.class);

 	private final PersonService personService;

    public PersonController(PersonService personService) {
        this.personService = personService;
    }

	@GetMapping("/{id}")
	public Optional<Person> person(@PathVariable Long id) {
		log.info("id="+id);
		return personService.findById(id);
	}

	@GetMapping("/")
	public List<Person> person(@RequestParam(value = "name") String name) {
		log.info("name="+name);
		return personService.findByNameLike(name);
	}
}
