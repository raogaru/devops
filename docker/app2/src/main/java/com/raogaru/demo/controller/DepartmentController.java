package com.raogaru.demo.controller;

import com.raogaru.demo.model.Department;
import com.raogaru.demo.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/departments")
public class DepartmentController {

    private final DepartmentService service;

    public DepartmentController(DepartmentService service) {
        this.service = service;
    }

    @GetMapping
    public String listDepartments(Model model) {
        model.addAttribute("departments", service.getAll());
        return "departments";
    }

    @GetMapping("/new")
    public String newDepartmentForm(Model model) {
        model.addAttribute("department", new Department());
        return "department_form";
    }

    @PostMapping
    public String saveDepartment(@ModelAttribute Department department) {
        service.save(department);
        return "redirect:/departments";
    }

    @GetMapping("/edit/{id}")
    public String editDepartment(@PathVariable Long id, Model model) {
        model.addAttribute("department", service.getById(id));
        return "department_form";
    }

    @GetMapping("/delete/{id}")
    public String deleteDepartment(@PathVariable Long id) {
        service.delete(id);
        return "redirect:/departments";
    }

    @GetMapping("/search")
    public String searchDepartments(@RequestParam String keyword, Model model) {
        model.addAttribute("departments", service.searchByName(keyword));
        return "departments";
    }
}

