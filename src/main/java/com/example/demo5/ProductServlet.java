package com.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ProductServlet", value = "/cart")
public class ProductServlet extends HttpServlet {
    private static ArrayList<Product> list;

    public void init() {
        list = new ArrayList<>();
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String image = req.getParameter("image");

        list.add(new Product(name, price, image));
        HttpSession session = req.getSession();
        session.setAttribute("product", list);
        resp.sendRedirect("listCart.jsp");
    }
}
