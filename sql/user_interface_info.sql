
create database if not exists longapi;
use longapi;
DROP TABLE IF EXISTS `user_interface_info`;
create table if not exists user_interface_info
(
    id              bigint auto_increment comment '主键'
        primary key,
    userId          bigint                             not null comment '调用用户 id',
    interfaceInfoId bigint                             not null comment '接口 id',
    totalNum        int      default 0                 not null comment '总调用次数',
    leftNum         int      default 0                 not null comment '剩余调用次数',
    status          int      default 0                 not null comment '0-正常，1-禁用',
    createTime      datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime      datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete        tinyint  default 0                 not null comment '是否删除(0-未删, 1-已删)'
)
    comment '用户调用接口关系' collate = utf8mb4_general_ci
                               row_format = DYNAMIC;

INSERT INTO longapi.user_interface_info (id, userId, interfaceInfoId, totalNum, leftNum, status, createTime, updateTime, isDelete) VALUES (46, 1784918493536698370, 1, 1, 99999998, 0, '2024-04-29 20:12:38', '2024-04-29 20:12:59', 0);
INSERT INTO longapi.user_interface_info (id, userId, interfaceInfoId, totalNum, leftNum, status, createTime, updateTime, isDelete) VALUES (47, 1784918493536698370, 30, 0, 99999999, 0, '2024-04-29 20:12:42', '2024-04-29 20:12:42', 0);
INSERT INTO longapi.user_interface_info (id, userId, interfaceInfoId, totalNum, leftNum, status, createTime, updateTime, isDelete) VALUES (48, 1784918493536698370, 27, 0, 99999999, 0, '2024-04-29 20:12:44', '2024-04-29 20:12:44', 0);
INSERT INTO longapi.user_interface_info (id, userId, interfaceInfoId, totalNum, leftNum, status, createTime, updateTime, isDelete) VALUES (49, 1784918493536698370, 26, 0, 99999999, 0, '2024-04-29 20:12:45', '2024-04-29 20:12:45', 0);
