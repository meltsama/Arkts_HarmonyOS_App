import { router } from "@kit.ArkUI";

@Entry
@Component
export struct bzxq {
  @State color1: string = '#ffffffff'; // 初始颜色为白色
  @State color2: string = '#ffffffff'; // 初始颜色为白色

  build() {
    Column() {
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('帮助详情')
          .margin({left:113})
          .fontSize(20)
          .fontWeight(600)//.padding(20)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({left:20})

      Stack() {
        Image('/pages/xzypicture/beijing.png').backgroundImageSize(ImageSize.Cover).opacity(0.4)
          Column() {
              //Image($r('app.media.img')).backgroundImageSize(ImageSize.Cover).opacity(0.4)
              Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
               Column() {
                 Row({ space: 15 }) { //相互之间的间距
                   //1.1 logo
                   Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
                     Text('问')
                       .fontSize(20)
                       .fontWeight(600)
                       .width('100%')
                       .height('100%')
                       .fontColor('#1777FF')
                   }
                   .height(40)
                   .width(40)
                   .padding(9)
                   .backgroundColor('#E5F4FF')
                   .borderRadius(8) //没有圆角
                   .margin({
                     left:-70
                   })

                   Text('病历复印如何申请?')
                     .fontSize(20)
                     .fontWeight(600)//.width('100%')
                       //.height('100%')
                     .fontColor(Color.Black)
                     //.padding()
                     .margin({
                       top: 5,
                       //right: 10
                     })
                 }.padding(10)

                 Row({ space: 15 }) { //相互之间的间距
                   //1.1 logo
                   Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
                     Text('答')
                       .fontSize(20)
                       .fontWeight(600)
                       .width('100%')
                       .height('100%')
                       .fontColor('#13C2C3')
                   }
                   .height(40)
                   .width(40)
                   .padding(9)
                   .backgroundColor('#E7FFFB')
                   .borderRadius(8) //没有圆角
                   .margin({
                     left:5,
                     top: 15
                   })

                   Text('首先完善复印人的信息-复印用途选择-复印内容选择-提交审核-付款-打印-等待收货-结束')
                     .fontSize(15)
                     .fontWeight(600)
                     .width('80%')
                     //.height('100%')
                     //.padding(10)
                     .fontColor(Color.Gray)
                     .margin({
                       top: 10,
                     })
                 }
                 Image('/pages/xzypicture/fuwu.png')
                   .width('110')
                   .height('200')
                   .padding(15)
                   .margin({
                     left: -100
                   })
               }
              }
              .height(350)
              .width('90%')
              .padding(10)
              .backgroundColor(Color.White)
              .borderRadius(8) //没有圆角
              .margin({
                top:-100,
                bottom:120
              })
            Text('是否对您有帮助？')
              .fontSize(19)
              .fontColor(Color.Black)
              .margin({bottom:30})

            Row() {
              Button({ type: ButtonType.Normal }) { //type:ButtonType.Normal 表示普通按钮
                Row() {
                  Image('/pages/xzypicture/xiaolianhaoping.png').width('20%')
                    .margin({right:10})
                  Text('有帮助')
                    .fontColor(Color.Black) //文本颜色为白色
                }
              }
              .width('35%') //宽度
              .height(40) //高度
              .borderRadius(8) //圆角
              .backgroundColor(Color.White)
              .onClick(() => {
                this.color1 = '#E5F4FF';
                this.color2 = '#FFFFFF'// 点击后改变颜色为蓝色
              })
              .stateStyles({
                normal: {.backgroundColor(this.color1)}
              });
              Button({ type: ButtonType.Normal }) { //type:ButtonType.Normal 表示普通按钮
                Row() {
                  Image('/pages/xzypicture/kulian.png').width('20%')
                    .margin({right:10})
                  Text('没帮助')
                    .fontColor(Color.Black) //文本颜色为白色
                }
              }
              .margin({
                bottom:0,
                left:20
              })
              .width('35%') //宽度
              .height(40) //高度
              .borderRadius(8) //圆角
              .backgroundColor(Color.White)
              .onClick(() => {
                this.color2 = '#E5F4FF';
                this.color1 = '#FFFFFF'// 点击后改变颜色为蓝色
              })
              .stateStyles({
                normal: {.backgroundColor(this.color2)}
              });
            }
            }
          }
        }
      }
    }

