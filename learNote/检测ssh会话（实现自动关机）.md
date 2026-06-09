# 自动关机脚本（固定时间检测有无ssh连接）
## 基础版


> 目标机器：luna \
> 达到效果：在凌晨12点睡觉前、早上8：40跑完定时任务后**自动关机**（如果检测到无ssh链接）


``` bash
#!/bin/bash

# 日志文件（可选）
LOGFILE="/var/log/auto_shutdown.log"

# 检查是否有任何 SSH 会话（通过 pts 伪终端）
# who 命令输出中包含 'pts/' 的一般是远程连接（SSH/telnet）
if who | grep -q 'pts/'; then
    echo "$(date): 检测到 SSH 会话，取消关机" >> "$LOGFILE"
    exit 0
else
    echo "$(date): 没有 SSH 会话，执行关机" >> "$LOGFILE"
    /usr/sbin/shutdown -h now
fi
```
缺点：
- 如果刚巧断开链接，则会关机
- 太直接
- 如果使用 screen 或 tmux应该会被误判


## 升级版


