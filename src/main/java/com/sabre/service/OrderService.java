package com.sabre.service;

import com.sabre.entity.Order;
import com.sabre.entity.OrderProduct;
import com.sabre.entity.Product;
import com.sabre.repository.OrderProductRepository;
import com.sabre.repository.OrderRepository;
import com.sabre.repository.ProductRepository;
import com.sabre.web.dto.Dto;
import com.sabre.web.dto.OrderNewDto;
import com.sabre.web.errors.OrderNotFoundException;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService implements CrudService<Order> {
    
    @Autowired
    private OrderRepository orderRepository;
    
    @Autowired
    private ProductRepository productRepository;
    
    @Autowired
    private OrderProductRepository orderProductRepository;

    @Override
    public List<Order> getAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order getOne(Long id) throws RuntimeException {
        return orderRepository.findById(id).orElseThrow(() -> new OrderNotFoundException(String.format("Order with id '%d' not found", id)));
    }

    @Override
    public Dto getNewDto() throws RuntimeException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Dto getUpdateDto(Long id) throws RuntimeException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void save(Order t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void save(Dto dto) {
        
        OrderNewDto orderNewDto = (OrderNewDto) dto;
        
        Order order = new Order();
        
        order.setCustomerName(orderNewDto.getCustomerName());
        order.setCustomerAddress(orderNewDto.getCustomerAddress());
        order.setCustomerPhone(orderNewDto.getCustomerPhone());
        order.setGrossAmount(orderNewDto.getGrossAmount());
        order.setVatCharge(orderNewDto.getVatCharge());
        order.setVatAmount(orderNewDto.getVatAmount());
        order.setDiscount(orderNewDto.getDiscount());
        order.setNetAmount(orderNewDto.getNetAmount());
        order.setPaid(false);
        order.setOrderDate(new Date(System.currentTimeMillis()));
        
        orderRepository.save(order);
        
        orderNewDto.getProductQtys().forEach(productQty -> {
            Product product = productRepository.getOne(productQty.getProductId());
            OrderProduct orderProduct = new OrderProduct();
            
            orderProduct.setOrder(order);
            orderProduct.setProduct(product);
            orderProduct.setQty(productQty.getQty());
            
            orderProductRepository.save(orderProduct);
        });
        
    }

    @Override
    public void delete(Long id) throws RuntimeException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void update(Order t) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void update(Dto dto) throws RuntimeException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
