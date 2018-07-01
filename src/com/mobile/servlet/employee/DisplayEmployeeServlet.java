package com.mobile.servlet.employee;import com.mobile.model.Employee;import com.mobile.util.DaoFactory;import com.mobile.util.Pagination;import javax.servlet.ServletException;import javax.servlet.annotation.WebServlet;import javax.servlet.http.HttpServlet;import javax.servlet.http.HttpServletRequest;import javax.servlet.http.HttpServletResponse;import java.io.IOException;import java.util.List;@WebServlet(name = "DisplayEmployeeServlet", urlPatterns = {"/DisplayEmployeeServlet"})public class DisplayEmployeeServlet extends HttpServlet {    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        dosomething(request, response);    }    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        dosomething(request, response);    }    private void dosomething(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        String pageNo = request.getParameter("pageNo");        int page = 1;        if(pageNo!=null) {            page = Integer.parseInt(pageNo);        }        Pagination pagination = new Pagination();        pagination.setPageNo(page);        pagination.setUrl("DisplayEmployeeServlet?");        List<Employee> employees = DaoFactory.getEmployeeDao().getAllEmployee(pagination);        request.setAttribute("employees",employees);        request.setAttribute("pagination", pagination);        request.getRequestDispatcher("employee.jsp").forward(request,response);    }}