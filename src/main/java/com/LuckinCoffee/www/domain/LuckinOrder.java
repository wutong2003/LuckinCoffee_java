package com.LuckinCoffee.www.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @TableName luckin_order
 */
@TableName(value ="luckin_order")
@Data
public class LuckinOrder implements Serializable {

    private Integer id;

    private String resourcestr;

    private String title;

    private String user;

    private BigDecimal price;

    private Integer sum;

    private String cupshaped;

    private String brix;

    private String temperature;

    private String money;

    private String time;

    private String address;

    private static final long serialVersionUID = 1L;
}