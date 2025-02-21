
@CustomDialog
export struct MessageDialog {
  controller: CustomDialogController
  // @Link message: string

  build() {
    Column() {
      Row() {
        Text('手机短信验证')
          .fontWeight(600)
          .fontSize(18)
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      Text('已发送短信验证码至')
        .fontSize(15)
        .margin({ top: 20, bottom: 0, left:-50 })

      Text('13666666666')
        .fontSize(15)
        .borderWidth({ bottom: 1 })
        .borderStyle(BorderStyle.Solid)
        .borderColor(Color.Black)
        .margin({ left: -90 })

      //2.表单部分
      Column({ space: 15 }) {
        Row() {
          //2.1 用户名输入框
          TextInput({ placeholder: '请输入短信验证码' })
            .margin({ top: 10 })
            .backgroundColor(Color.White)//背景颜色为白色
            .border({ width: { bottom: 0.5 }, color: Color.Gray, })//下边框
            .borderRadius(8)//没有圆角
            .placeholderColor('#c3c3c5')//提示信息的颜色
            .caretColor('#fa711d')//获取焦点的颜色
            .margin({
              top: 20,
              bottom: 20
            })
            .width('70%')
            .height('7%')
          Text('重新发送')
            .fontSize(15)
            .fontColor(Color.Blue)
            .margin({top:10,left:10})
        }

      }

      Row() {
        Button('关闭')
          .fontSize(15)
          .onClick(() => {
            this.controller.close();//关闭弹窗
          }).backgroundColor(Color.White).fontColor(Color.Gray).margin({right:70})
        Button('确定')
          .fontSize(15)
          .onClick(() => {
            this.controller.close();//关闭弹窗
          }).backgroundColor(Color.White).fontColor(Color.Blue)
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
    }
    .width('80%')
    .borderRadius(20)
    .backgroundColor(Color.White)
    .padding(20)
  }
}