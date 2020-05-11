Step to build
```
$docker image build -t db:1.0 .
$docker container run --rm --name db db:1.0
$docker container exec -it db bash
>mysql -uroot -proot -ddemo
mysql>show tables;
mysql>select * from GREETINGS;
```