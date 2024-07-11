package com.LuckinCoffee.www.controller;

import com.LuckinCoffee.www.domain.LuckinOrder;
import com.LuckinCoffee.www.domain.Result;
import com.LuckinCoffee.www.service.LuckinOrderService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@RestController
public class LuckinOrderController {
    @Autowired
    private LuckinOrderService luckinOrderService;

    @PostMapping("/saveLuckinOrde")
    public Result saveLuckinOrde(@RequestBody LuckinOrder luckinOrder){
        //插入当前时间
        LocalDateTime dateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        String formattedDateTime = dateTime.format(formatter);
        luckinOrder.setTime(formattedDateTime);

        boolean save = luckinOrderService.save(luckinOrder);
        System.out.println("成功插入订单表"+save);
        System.out.println("luckinOrder"+luckinOrder);
        return Result.success();
    }


    @GetMapping("/getLuckinOrdeList/{phone}")
    public Result getLuckinOrdeList(@PathVariable String phone){
        LambdaQueryWrapper<LuckinOrder> wrapper = new LambdaQueryWrapper<LuckinOrder>()
                .eq(LuckinOrder::getUser,phone)
                .orderByDesc(LuckinOrder::getTime);
        List<LuckinOrder> list = luckinOrderService.list(wrapper);
        return Result.success(list);
    }

    @DeleteMapping("/deleteOrder/{id}")
    public Result deleteOrder(@PathVariable Integer id){
        LambdaQueryWrapper<LuckinOrder> wrapper = new LambdaQueryWrapper<LuckinOrder>()
                .eq(LuckinOrder::getId,id);
        luckinOrderService.remove(wrapper);
        return Result.success();
    }

}
