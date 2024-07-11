package com.LuckinCoffee.www.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @TableName luckin_shopcar
 */
@TableName(value ="luckin_shopcar")
@Data
public class LuckinShopcar implements Serializable {
    private Integer id;
    private String resourcestr;

    private String title;

    private BigDecimal price;
    private BigDecimal price2;

    private String user;

    private Integer sum;

    private String cupshaped;

    private String brix;

    private String temperature;

    private static final long serialVersionUID = 1L;
}