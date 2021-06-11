package pl.coderslab.users;

import pl.coderslab.User;
import pl.coderslab.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUser", value = "/users/editUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(id));
        request.setAttribute("user", user);

        getServletContext().getRequestDispatcher("/users/editUser.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = new User();
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setUsername(request.getParameter("userName"));
        user.setEmail(request.getParameter("userEmail"));
        user.setPassword(request.getParameter("userPassword"));
        UserDao userDao = new UserDao();
        userDao.update(user);
        response.sendRedirect(request.getContextPath() + "/users/list");
    }
}
