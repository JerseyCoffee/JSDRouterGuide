# JSDRouterGuide
基于 JLRoutes 封装实现组件化架构

## 优雅的封装 Router！ 
   针对 JLRoutes 进行封装, 完成 App 内所有控制器之间跳转, 解除不同模块之间非必要的耦合度; 

## 已完成
   
   * App 内控制器跳转, 传参等; 

## 待补充
App 内部跳转除了, 频繁的控制器之间切换外, 还有比如跳转到 H5, 或者跳转到 WebView 等; 
App 外跳转则包含 Scheme 启动, 3D Touch, UniversalLink, 点击通知等都会触发;  
这些包含跳转, 页面切换的我们均可以统一使用 Router 来进行有效的管理, 使 App 变得更加动态化, 模块之间耦合度更低; 
* [ ] 支持 H5 跳转
* [ ] 外部 Scheme 启动 App
* [ ] UniversalLink
* [ ] 3D Touch Shortcut
* [ ] 支持后台动态下发 RouterMap 配置

**后续会继续更新文章和代码,让 Router 完善起来!**

Blog 传送门: [掘金](https://juejin.im/post/5dfb2540f265da33942a8783)
