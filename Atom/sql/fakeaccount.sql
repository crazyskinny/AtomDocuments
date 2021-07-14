create table sam.fake_account
(
    id           bigint auto_increment comment '主键'
        primary key,
    account      varchar(64)                        not null comment 'mt4登录账号',
    broker_id    int                                not null comment '经纪商id',
    user_id      bigint                             not null comment '用户id',
    status       int      default 1                 not null comment '1-待核查，2-已处理，3-人工判断无需处理',
    account_name varchar(200)                       null comment '账户名称',
    group_name   varchar(64)                        null comment '组名',
    create_time  datetime default CURRENT_TIMESTAMP null comment '创建时间',
    update_time  datetime                           null
);

create index fake_account_broker_id_account_index
    on sam.fake_account (account,broker_id);

create index fake_account_user_id
    on sam.fake_account (user_id)
