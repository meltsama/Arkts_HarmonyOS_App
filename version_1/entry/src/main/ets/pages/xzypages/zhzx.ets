import { router } from '@kit.ArkUI';

@Entry
@Component
export struct zhzx {
  build() {
    Column() {
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('账号注销')
          .fontSize(20)
          .margin({left:110})
          .fontWeight(600)//.padding(20)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .margin({left:40})
      .justifyContent(FlexAlign.Start)

      Divider().strokeWidth(1.5).color('#F2F2F2').margin({top:10})
      Stack() {
        Image('/pages/xzypicture/beijing.png').backgroundImageSize(ImageSize.Cover).opacity(0.4)
        Column() {
          //整个页面
          Column() {
            //1.logo和标题部分
            Column({ space: 15 }) { //相互之间的间距
              Image('/pages/xzypicture/tixingshixin.png')
                .width(60)//图片的宽度
                .height(60) //图片的高度
                .margin({
                  top: 0,
                  bottom: 0
                })
                //.backgroundColor(Color.Black)
              //1.2 标题
              Text('注销账号将永久失效且不可恢复，并放弃以下服务')
                .fontSize(17)//字体大小为28
                .fontWeight(700)//1.3 副标题
                .width('90%')
                //.padding(10)
              Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
                Text('1、账号所产生的订单数据将清除')
                  .fontSize(15)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                Text('如挂号订单、医嘱订单等数据将会清除。')
                  .fontSize(15)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                  .fontColor(Color.Gray)
                Text('2、无法登陆')
                  .fontSize(15)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                Text('一旦注销，您将无法使用该账号登录智慧医院平台和使用对应服务。')
                  .fontSize(15)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                  .fontColor(Color.Gray)
                Text('3、账号无法找回')
                  .fontSize(15)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                Text('一旦注销后，该账号将无法通过任何方式找回。')
                  .fontSize(17)
                  .fontWeight(700)
                  .width('100%')
                  .height(40)
                  .fontColor(Color.Gray)
              }
              .height(240)
              .width('100%')
              .padding(10)
              .backgroundColor(Color.White)
              .borderRadius(8) //没有圆角
            }

            //2.表单部分
            Column({ space: 15 }) {
              //2.1 用户名输入框
              TextInput({ placeholder: '请输入注销原因(必填)' })
                .backgroundColor(Color.White)//背景颜色为白色
                .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })//下边框
                .borderRadius(8)//没有圆角
                .placeholderColor('#c3c3c5')//提示信息的颜色
                .caretColor('#fa711d')//获取焦点的颜色
                .margin({
                  top: -10,
                  bottom: 60
                })
                .width('100%')
                .height('20%')

              //2.4 按钮
              Button({ type: ButtonType.Normal }) { //type:ButtonType.Normal 表示普通按钮
                Text('我已同意以上条款并继续注销')
                  .fontColor('#ffffff') //文本颜色为白色
              }
              .width('100%') //宽度
              .height(44) //高度
              .borderRadius(4) //圆角
              .backgroundColor('#FF4D4F')
              //点击事件  箭头函数 () => { .... }
              .onClick(() => {
                router.pushUrl({ url: 'pages/xzypages/zxqr' })
              })
            }
            .margin({
              //外边距
              top: 40,
              bottom: 30
            })
          }
          .width('100%')
          .height('100%')
          .padding(15)

        }
      }
    }
  }
}