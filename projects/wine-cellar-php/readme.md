# Slim framework + jQuery 做的 RESTful API  -- Wine Cellar Application

#### 项目和教程地址：

-  https://github.com/ccoenraets/wine-cellar-php
- http://coenraets.org/blog/2011/12/restful-services-with-jquery-php-and-the-slim-framework/?utm_medium=twitter&utm_source=twitterfeed

#### 部署方法：

1. 建立一个叫 "cellar" 的数据库
2. 导入cellar.sql
3. 打开 api/index.php，编辑 getConnection() 函数，确保正确的数据库连接配置
5. 打开 js/main.js， 编辑 rootURL

运行成功！

#### 利用curl测试

    # 测试GET全部wines
    curl -i -X GET http://localhost/wine-cellar-php/api/wines

    # 测试GET全部name为chateau的wines
    curl -i -X GET http://localhost/wine-cellar-php/api/wines/search/chateau

    # 测试GET wine #5
    curl -i -X GET http://localhost/wine-cellar-php/api/wines/5

    # 测试DELETE wine #5
    curl -i -X DELETE http://localhost/wine-cellar-php/api/wines/5

    # 测试ADD wine
    curl -i -X POST -H 'Content-Type: application/json' -d '{"name": "New Wine", "year": "2009"}' http://localhost/wine-cellar-php/api/wines

    # 测试MODIFY wine #27
    curl -i -X PUT -H 'Content-Type: application/json' -d '{"id": "27", "name": "New Wine", "year": "2010"}' http://localhost/wine-cellar-php/api/wines/27

还可以使用firefox的插件，如RESTClient来做REST请求测试！

两种方法都测试成功！
