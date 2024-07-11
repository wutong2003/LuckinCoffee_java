package com.LuckinCoffee.www.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @TableName luckin_user
 */
@TableName(value ="luckin_user")
@Data
public class LuckinUser implements Serializable {
    private String username;

    private String phone;

    private String password;

    private String photo;

    private String gender;

    private Date createdAt;

    private Date updatedAt;

    private static final long serialVersionUID = 1L;
}