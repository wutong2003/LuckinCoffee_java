package com.LuckinCoffee.www.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @TableName luckin_goods
 */
@TableName(value ="luckin_goods")
@Data
public class LuckinGoods implements Serializable {
    private Integer id;

    private String resourcestr;

    private String resourcestr2;

    private String title;

    private String title2;

    private String title3;

    private BigDecimal price;

    private Integer price1;

    private Integer discountprice;
    private Integer type;


    private static final long serialVersionUID = 1L;
}