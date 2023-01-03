package service;

import dao.OrderDao;
import dto.OrderDto;

import java.util.Optional;

public class InfoOrderService {
    private static OrderDao orderDao = OrderDao.getInstance();
    private static final InfoOrderService INSTANCE = new InfoOrderService();

    public Optional<OrderDto> findOrderById(Integer id) {
        return orderDao.findById(id.intValue())
                .map(order -> OrderDto.builder()
                        .id(order.getId())
                        .userInfoId(order.getId().toString())
                        .roomId(order.getRoomId().toString())
                        .beginTimeOfTheOrder(order.getBeginTimeOfTheOrder().toString())
                        .endTimeOfTheOrder(order.getEndTimeOfTheOrder().toString())
                        .condition(order.getCondition().name())
                        .message(order.getMessage())
                        .build());
   
    }

    public static InfoOrderService getInstance() {
        return INSTANCE;
    }
}
