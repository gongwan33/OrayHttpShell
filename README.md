# OrayHttpShell
A shell script for Oray DDNS using the http protocol of Oray. (Oray client for Linux)

## Quick start
+ Please pull this branch to your local environment and add x permission for ddns_oray.sh 

```
sudo chmod a+x ./ddns_oray.sh
```

+ Please edit ddns_oray.sh and replac the values of $user, $passwd, $hostname with your own account information.

| Variable Name | Description |
|---------------|:-----------:|
| user          | Your user name |
| passwd        | Your password |
| hostname      | Your domain. If there are more than one, please separate with ',' |

+ Add new task in crontab.

```
> crontab -e
```

Add the following line. Please don't foget to replace ${the path to your ddns_oray.sh} with your own path.

```
* * * * * ${the path to your ddns_oray.sh}>ddns.log
```

---

# OrayHttpShell
花生壳Linux客户端。使用花生壳http协议，通过Shell脚本实现。

## 快速教程
+ 请将脚本同步至本地环境。并增加ddns_oray.sh的执行权限。

```
sudo chmod a+x ./ddns_oray.sh
```

+ 编辑ddns_oray.sh, 用你自己的账号信息替换$user, $passwd, $hostname的值.

| 变量名 | 描述 |
|---------------|:-----------:|
| user          | 用户名 |
| passwd        | 密码 |
| hostname      | 域名，多个域名用','隔开 |

+ 在crontab中增加新任务.

```
> crontab -e
```

添加如下行. 请务必将${the path to your ddns_oray.sh}替换为你本地的路径.

```
* * * * * ${the path to your ddns_oray.sh}>ddns.log
```
