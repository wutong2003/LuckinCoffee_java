package com.LuckinCoffee.www.controller;

import com.LuckinCoffee.www.domain.LuckinGoods;
import com.LuckinCoffee.www.domain.Result;
import com.LuckinCoffee.www.mapper.LuckinGoodsMapper;
import com.LuckinCoffee.www.service.LuckinGoodsService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class LuckinGoodsController {
    @Autowired
    private LuckinGoodsService luckinGoodsService;

    @GetMapping("/getLuckinGoodsList/{type}")
    public Result getLuckinGoodsList(@PathVariable String type){
        LambdaQueryWrapper<LuckinGoods> wrapper = new LambdaQueryWrapper<LuckinGoods>()
                .eq(LuckinGoods::getType,type);
        List<LuckinGoods> list = luckinGoodsService.list(wrapper);
        return Result.success(list);
    }

}
