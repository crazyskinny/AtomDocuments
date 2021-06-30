 -- auto-generated definition
create table fake_account
(
    id                   bigint auto_increment comment '主键'    primary key,
    account              varchar(64)                            not null comment 'mt4登录账号',
    broker_id            int                                    not null comment '经纪商id',
    user_id              bigint                                 not null comment '用户id',
    status               int          default 1                 not null comment '1-待核查，2-已处理，3-人工判断无需处理',
    create_time          datetime     default CURRENT_TIMESTAMP comment '创建时间',
    update_time          datetime                               null
);


create index fake_account_broker_id_account_index
    on fake_account (broker_id, account);

create index fake_account_user_id
        on fake_account (user_id);
