
create database if not exists longapi;
use longapi;
DROP TABLE IF EXISTS `user`;
create table if not exists user
(
    id           bigint auto_increment comment 'id'
        primary key,
    userAccount  varchar(256)                           not null comment '账号',
    userPassword varchar(512)                           not null comment '密码',
    unionId      varchar(256)                           null comment '微信开放平台id',
    mpOpenId     varchar(256)                           null comment '公众号openId',
    userName     varchar(256)                           null comment '用户昵称',
    userAvatar   varchar(1024)                          null comment '用户头像',
    userProfile  varchar(512)                           null comment '用户简介',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user/admin/ban',
    accessKey    varchar(512)                           not null comment 'accessKey',
    secretKey    varchar(512)                           not null comment 'secretKey',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    gender       tinyint                                null comment '性别'
)
    comment '用户' collate = utf8mb4_general_ci
                   row_format = DYNAMIC;

create index idx_unionId
    on user (unionId);

INSERT INTO longapi.user (id, userAccount, userPassword, unionId, mpOpenId, userName, userAvatar, userProfile, userRole, accessKey, secretKey, createTime, updateTime, isDelete, gender) VALUES (1784918493536698370, 'long', 'a6c3790c76cdb4f5b33b923a24906675', null, null, 'LONG', 'https://image-bed-ichensw.oss-cn-hangzhou.aliyuncs.com/Multiavatar-f5871c303317a4dafbf6.png', null, 'admin', '9e4179158ff82d356d1f77b97c3116e2', '2cfa0416ba5e9cdc5c5af31b24c8a96d', '2024-04-29 20:11:45', '2024-04-29 20:12:27', 0, null);
