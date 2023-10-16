package com.example.demo5;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private ArrayList<Product>list;

    public void init() {
       list=new ArrayList<>();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        list.add(new Product("anime","20.000.000","1a912963eba55a8b55a9af4df45d28a6.jpg"));
        list.add(new Product("anime","20.000.000","1e4149d370b658474000088bf0f648b7.jpg"));
        list.add(new Product("anime","20.000.000","5287ff357d18b1686e3e9a250afb1ef7.jpg"));
        list.add(new Product("anime","20.000.000","d0b9dc4af77fd8c03f966347dc143033.jpg"));
        list.add(new Product("anime","20.000.000","f698bc51b8ba228db4eae7b68ef33f0c.jpg"));

        HttpSession session=request.getSession();
        session.setAttribute("list",list);
        response.sendRedirect("listCart.jsp");

    }

    public void destroy() {
    }
}