# YYMyTool

具体使用

```
platform :ios, '8.0'

target 'XXX工程' do
   pod 'YYMyTool'
   
   # 单独使用 某个工具类
   # pod 'YYMyTool/YYToolBase/RequestTool'

end

```
### 使用所有（pod 'YYMyTool'）

### 时间 工具（pod 'YYMyTool/YYToolBase/RequestTool'）


```
- (void)getTime{
    
    
      //    类型 有 时分秒， 分秒 
    
    [[YYTimeManager shareManager] getMoreTimeShowType:0 andSecond:10 andNetxSecond:3 andPlayingBlcok:^(NSString *hhStr, NSString *minStr, NSString *secStr) {
        
      //     处理 倒计时 显示 时间
        
    } andNextSecondBlcok:^(NSInteger nextSecond) {
        
     //      处理 每隔3秒后 事件
        
    } andFinishCompleted:^(NSInteger lastSecond) {
        
        //   处理 最后 1秒后  事件

        
    }];
    
    
}


```
