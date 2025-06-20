# 运行流程：

1.构建maven

2.安装npm的相关依赖：

```
npm install
```

3.依次运行eureka-server，zuul-gateway，user-service，purchase-service，user-consumer，purchase-consumer，如果项目运行不起来，请删除target重新测试

4.当所有的工程全部启动后，在asset-management-system-front目录下运行

```
npm run dev
```

# 注意：

在运行文件时，文件的上级目录不建议存在中文