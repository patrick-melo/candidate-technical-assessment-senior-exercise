package com.gaggle.movie;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public Optional<Person> findById(Long id) {

        return personRepository.findById(id);
    }

    public List<Person> findByNameLike(String name) {

        var it = personRepository.findByNameLike("%"+name+"%");

        var persons = new ArrayList<Person>();
        it.forEach(e -> persons.add(e));

        return persons;
    }

}