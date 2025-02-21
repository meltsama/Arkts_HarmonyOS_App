import router from '@ohos.router'

@Entry
@Component
struct Page1 {

  build() {
    Column() {
      Row(){
        Image($r('app.media.backbutton')).margin({left:15}).width(20).onClick(() =>{
          router.back()
        })
        Text('住院病案申请')
          .textAlign(TextAlign.Center)
          .fontSize(17)
          .fontWeight(FontWeight.Bold)
          .width('82%')
      }
      .width('100%')
      .margin({bottom:10})

      Column(){
        Image('/pages/xwxpicture/SuccessSubmit.svg')
          .margin({top:100,bottom:20})
          .height(50)
          .fillColor('#13C2C2')
        Text('申请提交成功')
          .fontSize(17)
          .fontColor('#13C2C2')
        Text('您的申请已完成提交，请耐心等待医院审核，审核完成后将短信通知')
          .fontSize(15)
          .margin({left:30,right:30,top:30,bottom:120})
          .textAlign(TextAlign.Center)
          .fontColor('#848484')
        Button({ type: ButtonType.Normal }){
          Text('查看订单')
            .fontColor('white')
            .height(40)
            .width(150)
            .textAlign(TextAlign.Center)
        }
        .borderRadius(10)
        ///////////////跳转
        .onClick(() => {
          router.pushUrl({url:'pages/qiud/shenq'})  //跳邱
        })
      }
      .alignItems(HorizontalAlign.Center)
      .backgroundColor('#F2F2F2')
      .height('100%')
    }

  }

}