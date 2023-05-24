package com.studywithme.controller.web;

import com.studywithme.model.User;
import com.studywithme.service.IAddressTypeService;
import com.studywithme.service.IAppointmentService;
import com.studywithme.service.IDistrictService;
import com.studywithme.service.impl.AddressTypeService;
import com.studywithme.service.impl.AppointmentService;
import com.studywithme.service.impl.DistrictService;
import com.studywithme.sort.Sorter;
import com.studywithme.util.FormUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/createAppointment")
public class CreateAppointment extends HttpServlet {
    private IDistrictService districtService;
    private IAppointmentService appointmentService;
    private IAddressTypeService addressTypeService;
    public CreateAppointment() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        districtService = new DistrictService();
        addressTypeService = new AddressTypeService();
        Sorter sorter = new Sorter();
        sorter = FormUtil.toModel(Sorter.class, request);
        request.setAttribute("dateMeeting", sorter.getDateMeeting());
        request.setAttribute("districts",districtService.findAll());
        request.setAttribute("addressTypes",addressTypeService.findAll());
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/CreateAppointment.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("user");
        User user = null;
        user = (User)obj;
        String dateMeetingStr = request.getParameter("dateMeeting");
        String startTimeStr = request.getParameter("startTime");
        String endTimeStr = request.getParameter("endTime");
        String idWard = request.getParameter("ward");
        String address = request.getParameter("address");
        String max = request.getParameter("max");
        String idAddressType = request.getParameter("addressType");
        appointmentService = new AppointmentService();
        appointmentService.createAppointment(dateMeetingStr,startTimeStr,endTimeStr,max,address,idAddressType,idWard,user);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/view/web/CreateAppointment.jsp");
        rd.forward(request, response);
    }
}
