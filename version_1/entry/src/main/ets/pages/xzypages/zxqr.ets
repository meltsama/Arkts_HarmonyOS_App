import { MessageDialog } from './MessageDialog';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct zxqr {

  //弹框
  d1: CustomDialogController = new CustomDialogController({
    builder: MessageDialog({
      // message: $dialogMessage, //消息
    }),
    isModal: true, //false: 点击空白处不会关闭模态框
    customStyle: true, //开启自定义样式
    alignment: DialogAlignment.Center, // 可设置dialog的对齐方式，设定显示在底部或中间等，默认为底部显示
  })

  build() {
    Column() {
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('注销确认')
          .fontSize(20)
          .margin({left:110})
          .fontColor(Color.Black)
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
          Row() {
            Image('/pages/xzypicture/tixingshixin_yellow.png')
              .width('15%')
              .borderRadius(10)

            Text('请确保以下条件都已满足，方可注销')
              .padding({ left: 10 })
              .fontColor(Color.Black)
              .fontSize(15)
              .fontWeight(600)
              .margin({ bottom: -10 }) //数字越大字体越大
          }
          .margin({
            left: 10,
            right: 7,
            top: -300,
            bottom: 20
          })
          .width('100%')
          .padding({ left: 10, right: 10 })

          Flex({ direction: FlexDirection.Column }) { // 子组件在容器主轴上列布局
            Text('1、账号所产生的订单数据将清除')
              .fontSize(15)
              .fontWeight(700)
              .width('100%')
              .height(50)
            Text('近两周内问更改绑定手机号且账号无被限制记录，当前绑定手机号能正常接收短信验证。')
              .fontSize(15)
              .fontWeight(700)
              .width('100%')
              .height(50)
              .fontColor(Color.Gray)
            Text('2、无法登陆')
              .fontSize(15)
              .fontWeight(700)
              .width('100%')
              .height(50)
            Text('挂号订单、医嘱订单、住院充值订单、便民门诊订单都已完成或退款。')
              .fontSize(15)
              .fontWeight(700)
              .width('100%')
              .height(50)
              .fontColor(Color.Gray)
            Text('3、账号无任何未处理完成的纠纷')
              .fontSize(15)
              .fontWeight(700)
              .width('100%')
              .height(50)

          }
          .height(250)
          .width('90%')
          .padding(10)
          .backgroundColor(Color.White)
          .borderRadius(8) //没有圆角
          .margin({
            top:10,
            bottom:40
          })
        }.margin({top:'10'})

        //2.4 按钮
        Button({ type: ButtonType.Normal }) { //type:ButtonType.Normal 表示普通按钮
          Text('我已完成以上操作，继续注销')
            .fontColor('#ffffff') //文本颜色为白色
        }
        .width('90%') //宽度
        .height(44) //高度
        .borderRadius(4) //圆角
        .backgroundColor('#FF4D4F')
        //点击事件  箭头函数 () => { .... }
        .onClick(() => {
          this.d1.open();//显示弹窗
        })
        .margin({top:550})
      }
    }
    .width('100%')
    .height('100%')
    //.padding(15)
  }
}



