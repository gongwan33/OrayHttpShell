# OrayHttpShell
A shell script for Oray DDNS using the http protocol of Oray. (Oray client for Linux)

## Quick start
+ Please pull this branch to your local environment and add x permission for ddns_oray.sh 

```
sudo chmod a+x ./ddns_oray.sh
```

+ Please edit ddns_oray.sh and replace $user, $passwd, $hostname with your own account.

| Variable Name | Description |
|---------------|:-----------:|
| user          | Your User Name |
| passwd        | Your Password |
| hostname      | Your domain. If there are more than one, please separate with ',' |

+ Add new task in crontab.

```
> crontab -e
```

Add the following line. Please don't foget to replace ${the path to your ddns_oray.sh} with your own path.

```
* * * * * ${the path to your ddns_oray.sh}>ddns.log
```
