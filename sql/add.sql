-- 商品表
create table luckin_goods
(
    id            int auto_increment
        primary key,
    ResourceStr   varchar(255)   null,
    ResourceStr2  varchar(255)   null,
    title         varchar(255)   null,
    title2        varchar(255)   null,
    title3        varchar(255)   null,
    price         decimal(10, 2) null,
    price1        int            null,
    discountprice int            null,
    type          int            null
);

-- 订单表
create table luckin_order
(
    id          int auto_increment
        primary key,
    ResourceStr varchar(255)   null,
    title       varchar(255)   null,
    user        varchar(255)   null,
    price       decimal(10, 2) null,
    sum         int            null,
    brix        varchar(255)   null,
    temperature varchar(255)   null,
    cupshaped   varchar(255)   null,
    money       varchar(255)   null,
    address     varchar(255)   null,
    time        varchar(255)   null
);

-- 购物车表
create table luckin_shopcar
(
    id          int auto_increment
        primary key,
    ResourceStr varchar(255)   null,
    title       varchar(255)   null,
    price       decimal(10, 2) null,
    user        varchar(255)   null,
    sum         int            null,
    cupshaped   varchar(255)   null,
    brix        varchar(255)   null,
    temperature varchar(255)   null,
    price2      decimal(10, 2) null
);

-- 用户表
create table luckin_user
(
    id         int auto_increment
        primary key,
    username   varchar(50)                                     not null,
    phone      varchar(50)                                     not null,
    password   varchar(255)                                    not null,
    created_at timestamp    default CURRENT_TIMESTAMP          null,
    updated_at timestamp    default CURRENT_TIMESTAMP          null on update CURRENT_TIMESTAMP,
    photo      varchar(255) default '/images/touxiang/avt.jpg' null,
    gender     varchar(255)                                    null
);

