## mysql

将此脚本保存为 backup.sh，并设置 cron 定时任务：

```
crontab -e
```

添加以下行，例如每天凌晨2点执行备份：

```
0 2 * * * /path/to/backup.sh
```

如果启用了二进制日志（binlog），在进行完全备份后，可以考虑保留二进制日志，以支持基于时间点的恢复（PITR）

```
//my.cnf
[mysqld]
log-bin=mysql-bin

-- 查看二进制日志文件
SHOW BINARY LOGS;

-- 使用mysqlbinlog工具解析二进制日志文件
mysqlbinlog mysql-bin.000001


//sql consle:
FLUSH LOGS;

```
