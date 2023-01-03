package servlet;

import dto.OrderDto;
import dto.UserInfoDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.InfoOrderService;
import util.JspHelper;

import java.io.IOException;
import java.util.Optional;

import static util.UrlPath.USER_ORDER_LIST;

@WebServlet(USER_ORDER_LIST)
public class UserOrdersServlet extends HttpServlet {
    InfoOrderService infoOrderService = InfoOrderService.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var user = (UserInfoDto) req.getSession().getAttribute("user");
        var orderById = infoOrderService.findOrderById(user.getId());

        req.setAttribute("userorderlist", orderById);

        req.getRequestDispatcher(JspHelper.getPath("userorderlist"))
                .forward(req, resp);
    }
}
