import { router } from '@kit.ArkUI';

@Entry
@Component
export struct gywm {
  build() {
    Column() {
      Stack() {
        Image('Color.White').backgroundImageSize(ImageSize.Cover).opacity(0.4)
        Column() {
          //整个页面
          Column() {
            //1.logo和标题部分
            Column({ space: 15 }) { //相互之间的间距
              Row(){
                Image($r('app.media.backbutton')).width(20).onClick(() =>{
                  router.back()
                })

                Text('关于我们')
                  .margin({left:112})
                  .fontSize(20)
                  .fontWeight(600)//.padding(20)

              }
              .width("100%")
              .justifyContent(FlexAlign.Start)
              .margin({
                left: 40,
                bottom: 80
              })

              //1.1 logo
              Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
                Text('智慧医疗')
                  .fontSize(20)
                  .fontWeight(600)
                  .width('100%')
                  .height(80)
                  .fontColor(Color.Blue)
              }

              .height(100)
              .width(100)
              .padding(10)
              .backgroundColor('#E5F4FF')
              .borderRadius(8) //没有圆角
            }

            //2.表单部分
            Column({ space: 15 }) {
              //2.1 用户名输入框
              Flex({ direction: FlexDirection.Column }) {
                Row() { // 子组件在容器主轴上列布局
                  Text('软件版本')
                    .fontSize(18)//.fontWeight(700)
                    .width('85%')
                    .height(40)
                  Text('1.0.0')
                    .fontSize(18)
                    .height(20)
                }
                  Divider().strokeWidth(1.5).color('#F2F2F2').margin({bottom:20})
                Row() { // 子组件在容器主轴上列布局
                  Text('用户协议')
                    .fontSize(18)//.fontWeight(700)
                    .width('90%')
                    .height(40)
                  Button() {
                    Image('/pages/xzypicture/qianjin.png')
                      .fillColor('#ff585858')
                      .height(20)
                  }
                  .backgroundColor('white')
                  ///////////////图标跳转
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/xzypages/yhxy' })
                  })
                }
                Divider().strokeWidth(1.5).color('#F2F2F2').margin({bottom:20})
                Row() { // 子组件在容器主轴上列布局
                  Text('隐私政策')
                    .fontSize(18)//.fontWeight(700)
                    .width('90%')
                    .height(40)
                  Button() {
                    Image('/pages/xzypicture/qianjin.png')
                      .fillColor('#ff585858')
                      .height(20)
                  }
                  .backgroundColor('white')
                  ///////////////图标跳转
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/xzypages/yhxy' })
                  })
                }
                Divider().strokeWidth(1.5).color('#F2F2F2').margin({bottom:20})
                Row() { // 子组件在容器主轴上列布局
                  Text('平台协议')
                    .fontSize(18)//.fontWeight(700)
                    .width('90%')
                    .height(40)
                  Button() {
                    Image('/pages/xzypicture/qianjin.png')
                      .fillColor('#ff585858')
                      .height(20)
                  }
                  .backgroundColor('white')
                  ///////////////图标跳转
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/xzypages/yhxy' })
                  })
                }
                Divider().strokeWidth(1.5).color('#F2F2F2')
                }
              .height(240)
              .width('90%')
              .padding(10)
              .backgroundColor(Color.White)
              .borderRadius(8) //没有圆角
              .margin({
                top:50,
                bottom:150
              })
              Text('由StarYun提供技术支持')
                .fontColor(Color.Gray)
                //.fontSize(10)
                .fontWeight(550)
            }
            .width('100%')
            .height('100%')
            .padding(15)
          }
        }
      }
    }
  }
}