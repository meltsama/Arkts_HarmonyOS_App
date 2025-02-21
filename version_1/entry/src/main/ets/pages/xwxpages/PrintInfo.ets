import router from '@ohos.router'

@Entry
@Component
export struct PrintInfo {
  @State message: string = '  为了更好地服务患者，现将我院住院病案复印流程通知如下：\n'+
    '    一、患者出院后复印病案时间\n' +
    '\n' +
    '    患者出院14天后方可复印病案（因为患者出院后病历要经过归档、审核装订等很多流程，为了保证大家拿到的病历完整性，所以请耐心等待）。\n' +
    '\n' +
    '    二、复印病历方式\n' +
    '\n' +
    '    我院复印病历现有2种方式供大家选择：\n' +
    '\n' +
    '    （一）现场复印（出院14天后方可到我院病案复印窗口进行复印，建议尽量避开周一，周一复印病历患者较多）。\n' +
    '\n' +
    '    我院病案复印窗口：住院楼一楼住院服务中心处\n' +
    '\n' +
    '    （二）微信公众号预约登记复印提取方式有2种选择：自取或邮寄。\n' +
    '\n' +
    '    三、复印病历需携带手续\n' +
    '\n' +
    '    （一）患者本人办理：需携带出院结算清单和有效身份证件原件。\n' +
    '\n' +
    '    （二）非患者本人办理：需携带患者出院结算单、患者和办理者两人的身份证原件。\n' +
    '\n' +
    '    （三）未成年人患者的病历复印：需携带患者出院结算单、患者及监护人的户口原件（两者户口必须在一起或能证明与未成年人关系的法定证明材料）、监护人本人身份证原件。\n' +
    '\n' +
    '    特此强调说明：有效身份证件指本市医保卡或身份证（证件均必须是原件）\n' +
    '\n' +
    '    四、复印病历收费\n' +
    '\n' +
    '    （一）现场复印：按照现场复印病历纸张数收取费用。\n' +
    '\n' +
    '    （二）预约复印：先收取预交费用，待复印好后根据张数加上邮寄快递费用“多退少补” 来收取复印费用。\n' +
    '\n' +
    '    五、复印病历用途\n' +
    '\n' +
    '    来我院复印病历请明确告知复印人员复印病历用途，基本包括：\n' +
    '\n' +
    '    （一）医保报销\n' +
    '\n' +
    '    （二）办理门特（本市）\n' +
    '\n' +
    '    （三）看病复诊\n' +
    '\n' +
    '    （四）自留用途\n' +
    '\n' +
    '    （五）其他\n' +
    '\n' +
    '    特别提示：复印时如没说明具体用途，我们会默认为是医保报销进行复印。\n' +
    '\n' +
    '    六、复印病历的工作时间及咨询电话\n' +
    '\n' +
    '    周一至周五（国家法定假日除外）\n' +
    '\n' +
    '    上午：8:00—12:00\n' +
    '\n' +
    '    下午：14:00—17:00'

  build() {
    Column({space:15}) {
      Row(){
        Image($r('app.media.backbutton')).margin({left:5}).width(20).onClick(() =>{
          router.back()
        })
        //大标题
        Text('住院病案复印须知')
          .textAlign(TextAlign.Center)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .width('85%')
      }
      .width('100%')


      Scroll(){ //通知滑动
        Column() {
          //小标题
          Text('住院病案复印须知')
            .textAlign(TextAlign.Start)
            .width('100%')
            .fontSize(18)
            .fontWeight(500)
            .margin({bottom:20})
          Text(this.message)
            .fontSize(15)
        }
      }
      .height('90%')  //上下留白
      //同意按钮
      Button({type:ButtonType.Normal}){
        Text('我已阅读并同意须知')
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
      ///////////////跳转
      .onClick(() => {
        router.pushUrl({url:'pages/daohangye'})
      })
    }
    //主column属性
    .padding(15)
    .height('100%')
    .width('100%')
  }
}