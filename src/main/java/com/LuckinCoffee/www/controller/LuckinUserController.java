package com.LuckinCoffee.www.controller;

import com.LuckinCoffee.www.domain.LuckinUser;
import com.LuckinCoffee.www.domain.Result;
import com.LuckinCoffee.www.service.LuckinUserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@RestController
public class LuckinUserController {
    @Autowired
    private LuckinUserService luckinUserService;

    @GetMapping("/LoginUser/{phone}/{password}")
    public Result LoginUser(@PathVariable String phone, @PathVariable String password) {
        System.out.println(phone+password);
        LambdaQueryWrapper<LuckinUser> wrapper = new LambdaQueryWrapper<LuckinUser>()
                .eq(LuckinUser::getPhone, phone);
        LuckinUser luckinUser = luckinUserService.getOne(wrapper);
        if (luckinUser == null) {
            return Result.success("NO");
        }
        if (Objects.equals(phone, luckinUser.getPhone()) && Objects.equals(password, luckinUser.getPassword())){
            System.out.println("登录成功");
            return Result.success("OK");
        }else {
            return Result.success("ERROR");
        }
    }

    @GetMapping("/phone/{phone}")
    public Result getphone(@PathVariable String phone) {
        System.out.println(phone);
        LambdaQueryWrapper<LuckinUser> wrapper = new LambdaQueryWrapper<LuckinUser>()
                .eq(LuckinUser::getPhone, phone);
        LuckinUser luckinUser;
        luckinUser = luckinUserService.getOne(wrapper);
        return Result.success(luckinUser);
    }

    @PostMapping("/SaveUser")
    public Result SaveUser(@RequestBody LuckinUser luckinUser) {
        System.out.println(luckinUser);
        luckinUser.setPhoto("/images/touxiang/avt.jpg");
        boolean save = luckinUserService.save(luckinUser);
        System.out.println(save);
        if(save==false){
            return Result.success("no");
        }
        return Result.success("ok");
    }


}
