package com.studywithme.controller.admin;

import com.studywithme.model.School;
import com.studywithme.paging.PageRequest;
import com.studywithme.paging.Pageable;
import com.studywithme.service.impl.RoleService;
import com.studywithme.service.impl.SchoolService;
import com.studywithme.service.impl.UserService;
import com.studywithme.sort.Sorter;
import com.studywithme.util.FormUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin-home")
public class AdminHome extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Pageable pageble = new PageRequest();
        pageble = FormUtil.toModel(PageRequest.class, request);
        pageble.setSorter(FormUtil.toModel(Sorter.class, request));
        String error = request.getParameter("error");
        if (error != null) {
            request.setAttribute("error","Email đã tồn tại");
            request.setAttribute("idUser",error);
        }
        request.setAttribute("pageable", pageble);
        request.setAttribute("roles", RoleService.getInstance().findAll());
        request.setAttribute("users", UserService.getInstance().findAllUser(pageble));
        request.setAttribute("listSchool", SchoolService.getInstance().findAll());
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/admin/admin_home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        Pageable pageble = new PageRequest();
        pageble = FormUtil.toModel(PageRequest.class, request);
        pageble.setSorter(FormUtil.toModel(Sorter.class, request));
        if (action.equals("editProfile")) {
            String profileUserId = request.getParameter("profileUserId");
            String idRole = request.getParameter("role");
            String lastName = request.getParameter("lastName");
            String firstName = request.getParameter("firstName");
            String gender = request.getParameter("gender");
            String idSchool = request.getParameter("idSchool");
            String dateOfBirth = request.getParameter("dateOfBirth");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if (!UserService.getInstance().editUser(profileUserId,idRole,lastName,firstName,gender,idSchool,dateOfBirth,email,password)){
                String url = "/PBL3/admin-home?page="+pageble.getPage()+"&maxPageItem="+pageble.getMaxPageItem()+"&sortName="+pageble.getSorter().getSortName()+"&sortBy="+pageble.getSorter().getSortBy()+"&error="+profileUserId;
                response.sendRedirect(url);
            } else{
                response.sendRedirect("/PBL3/admin-home?page=1&maxPageItem=8&sortName=createdDate&sortBy=desc");
            }
        }
    }
}
