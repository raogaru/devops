package com.raogaru.demo.service;

import com.raogaru.demo.model.Department;
import com.raogaru.demo.repository.DepartmentRepository;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class DepartmentService {

    private final DepartmentRepository repo;

    public DepartmentService(DepartmentRepository repo) {
        this.repo = repo;
    }

    public List<Department> getAll() { return repo.findAll(); }

    public Department getById(Long id) { return repo.findById(id).orElse(null); }

    public Department save(Department emp) { return repo.save(emp); }

    public void delete(Long id) { repo.deleteById(id); }

    public List<Department> searchByName(String name) {
        return repo.findByNameContainingIgnoreCase(name);
    }
}

