package com.raogaru.demo.service;

import com.raogaru.demo.model.Employee;
import com.raogaru.demo.repository.EmployeeRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EmployeeService {

    private final EmployeeRepository repo;

    public EmployeeService(EmployeeRepository repo) {
        this.repo = repo;
    }

    public List<Employee> getAll() { return repo.findAll(); }

    public Employee getById(Long id) { return repo.findById(id).orElse(null); }

    public Employee save(Employee emp) { return repo.save(emp); }

    public void delete(Long id) { repo.deleteById(id); }

    public List<Employee> searchByName(String name) {
        return repo.findByNameContainingIgnoreCase(name);
    }
}

