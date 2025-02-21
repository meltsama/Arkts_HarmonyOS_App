import { router } from '@kit.ArkUI';

@Entry
@Component
export struct Send {
  @State message: string = 'Hello World';

  build() {
    Column({space:10}) {
      Row(){
        Text('领取方式')
          .textAlign(TextAlign.Start)
          .width('100%')
          .fontWeight(FontWeight.Bold)
        Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
          .select(false)
          .selectedColor('#1990FF')
          .shape(CheckBoxShape.CIRCLE)
          .onChange((value: boolean) => {
            console.info('Checkbox1 change is' + value)
          })
          .offset({x:'-65%'})
        Text('邮寄')
          .offset({x:'-65%'})
          .margin({right:10})
        Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
          .select(false)
          .selectedColor('#1990FF')
          .shape(CheckBoxShape.CIRCLE)
          .onChange((value: boolean) => {
            console.info('Checkbox1 change is' + value)
          })
          .offset({x:'-60%'})
        Text('现场领取')
          .offset({x:'-60%'})
      }
      Image('/pages/xwxpicture/dizhi.png')
        .width('100%')
        .margin({bottom:20})
      Row(){
        Text('复印内容')
          .fontWeight(FontWeight.Bold)
          .margin({bottom:5})
        Text('份数：1份')
          .margin({bottom:5})
      }.justifyContent(FlexAlign.SpaceBetween).width('100%')
      Text('1、住院病案首页').textAlign(TextAlign.Start).width('100%').fontSize(14)
      Text('2、入院记录').textAlign(TextAlign.Start).width('100%').fontSize(14)
      Text('3、检验报告').textAlign(TextAlign.Start).width('100%').fontSize(14)
      Text('4、检查报告').textAlign(TextAlign.Start).width('100%').fontSize(14)
      Text('5、出院记录').textAlign(TextAlign.Start).width('100%').fontSize(14)
      Divider().strokeWidth(2).color('#F2F2F2').margin({top:10,bottom:10})
      Text('服务须知')
        .textAlign(TextAlign.Start)
        .width('100%')
        .fontWeight(FontWeight.Bold)
        .margin({bottom:10})
      Text('1、根据实际打印张数计算价格；每张复印纸为0.5/张;')
        .textAlign(TextAlign.Start).width('100%').fontSize(12).fontColor('red')
      Text('2、邮寄费用为顺丰到付，由患者自费;')
        .textAlign(TextAlign.Start).width('100%').fontSize(12).fontColor('red')
      Text('3、下单后，医院审核通过后将在3天内完成邮寄;')
        .textAlign(TextAlign.Start).width('100%').fontSize(12).fontColor('#7F7F7F')
      Text('4、为了保证隐私和安全，我们要求收件时进行身份确认。')
        .textAlign(TextAlign.Start).width('100%').fontSize(12).fontColor('#7F7F7F')
      Button({type:ButtonType.Normal}){
        Text('提交审核')
          .textAlign(TextAlign.Center)
          .width('100%')
          .fontColor('white')
          .fontSize(15)
          .height(40)
      }
      .borderRadius(10)
      .height(40)
      .width('100%')
      .backgroundColor('#1677FF')
      .margin({top:15})
      ///////////////跳转
      .onClick(() => {
        router.pushUrl({url:'pages/xwxpages/Submit'})
      })
    }
    .padding(15)
  }
}