package com.raogaru.demo.model;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.math.BigDecimal;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long empId;

    @Column(name="first_name", nullable = false)
    private String fname;

    @Column(name="last_name", nullable = false)
    private String lname;

    @Column(name="gender", nullable = false)
    private String gender;

    @Column(name="dob", nullable = true)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dob;

    @Column(name="typ", nullable = false)
    private String typ;

    @Column(name="salary", precision = 10, scale = 2)
    private BigDecimal salary;

    @Column(name="status",nullable = false)
    private String status;

    // Getters and Setters
    public Long getId() { return empId; }
    public void setId(Long id) { this.empId = id; }

    public String getFname() { return fname; }
    public void setFname(String fname) { this.fname = fname; }

    public String getLname() { return lname; }
    public void setLname(String lname) { this.lname = lname; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public LocalDate getDob() { return dob; }
    public void setDob(LocalDate dob) { this.dob = dob; }

    public String getTyp() { return typ; }
    public void setTyp(String typ) { this.typ = typ; }

    public BigDecimal getSalary() { return salary; }
    public void setSalary(BigDecimal salary) { this.salary = salary; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}

