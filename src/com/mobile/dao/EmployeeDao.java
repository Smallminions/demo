package com.mobile.dao;

import com.mobile.model.Employee;
import com.mobile.util.Pagination;

import java.util.List;

public interface EmployeeDao {
    //???????????????????
    public List<Employee> getAllEmployee(Pagination pagination);
    public Employee getEmployee(String eid);
    public boolean findEmployee(String eid);
    public boolean insertEmployee(Employee employee);
    public boolean updateEmployee(Employee employee);
    public boolean deleteEmployee(String eid);
    public boolean employeeLogin(String id, String pwd);
}
