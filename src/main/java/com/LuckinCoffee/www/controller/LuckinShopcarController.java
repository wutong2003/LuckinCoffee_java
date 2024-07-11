package com.LuckinCoffee.www.controller;

import com.LuckinCoffee.www.domain.LuckinOrder;
import com.LuckinCoffee.www.domain.LuckinShopcar;
import com.LuckinCoffee.www.domain.Result;
import com.LuckinCoffee.www.service.LuckinShopcarService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class LuckinShopcarController {
    @Autowired
    private LuckinShopcarService luckinShopcarService;
    @PostMapping("/saveLuckinShopcar")
    public Result saveLuckinShopcar(@RequestBody LuckinShopcar luckinShopcar){
        boolean save = luckinShopcarService.save(luckinShopcar);
        System.out.println("saveLuckinShopcar"+save);
        System.out.println(luckinShopcar);
        return Result.success();
    }

    @PostMapping("/AddLuckinShopcar/{id}/{sum}")
    public Result AddLuckinShopcar(@PathVariable String id, @PathVariable Integer sum){
        System.out.println(id+'a'+sum);
        LambdaQueryWrapper<LuckinShopcar> wrapper = new LambdaQueryWrapper<LuckinShopcar>()
                .eq(LuckinShopcar::getId,id);
        LuckinShopcar one = luckinShopcarService.getOne(wrapper);
        one.setSum(one.getSum()+sum);
        luckinShopcarService.remove(wrapper);
        luckinShopcarService.save(one);
        return Result.success();
    }

    @PostMapping("/SubLuckinShopcar/{id}/{sum}")
    public Result SubLuckinShopcar(@PathVariable String id, @PathVariable Integer sum){
        System.out.println(id+'a'+sum);
        LambdaQueryWrapper<LuckinShopcar> wrapper = new LambdaQueryWrapper<LuckinShopcar>()
                .eq(LuckinShopcar::getId,id);
        LuckinShopcar one = luckinShopcarService.getOne(wrapper);
        one.setSum(one.getSum()-sum);
        luckinShopcarService.remove(wrapper);
        luckinShopcarService.save(one);
        return Result.success();
    }

    @GetMapping("/getLuckinShopcarList")
    public Result getLuckinShopcarList(){
        List<LuckinShopcar> list = luckinShopcarService.list();
        System.out.println("getLuckinShopcarList"+list);
        return Result.success(list);
    }

    @GetMapping("/removeLuckinShopcar")
    public Result removeLuckinShopcar(){
        luckinShopcarService.remove(new QueryWrapper<>());
        return Result.success();
    }

    @GetMapping("/removeLuckinShopcar/{id}")
    public Result removeLuckinShopcarByid(@PathVariable String id){
        try {
            LambdaQueryWrapper<LuckinShopcar> wrapper = new LambdaQueryWrapper<LuckinShopcar>()
                    .eq(LuckinShopcar::getId,id);
            luckinShopcarService.remove(wrapper);
        } catch (Exception e){
            return Result.success();
        }
        return Result.success();
    }

    @DeleteMapping("/deleteLuckinShopcar/{id}")
    public Result deleteLuckinShopcar(@PathVariable Integer id){
        LambdaQueryWrapper<LuckinShopcar> wrapper = new LambdaQueryWrapper<LuckinShopcar>()
                .eq(LuckinShopcar::getId,id);
        luckinShopcarService.remove(wrapper);
        return Result.success();
    }

}
