import { router } from '@kit.ArkUI'

@Entry
@Component
export struct BasicInfo {
  @State text1: string = "请选择证件类型"
  @State index1: number = 2
  @State space1: number = 80
  @State text2: string = "请选择代办人与患者关系"
  @State index2: number = 2
  @State space2: number = 80
  @State text3: string = "请选择证件类型"
  @State index3: number = 2
  @State space3: number = 80
  @State arrowPosition: ArrowPosition = ArrowPosition.END
  private selectedDate: Date = new Date('2025-01-07')
  build() {
    Column({space:25}) {
      //滑动
      Scroll(){
        Column(){
          //病人信息
          Column({space:10}){
            Text('请完善以下基本信息')
              .textAlign(TextAlign.Start)
              .fontWeight(FontWeight.Bold)
              .width('100%')
              .margin({top:15,bottom:15})
            Row(){
              Text('申请类型')
                .textAlign(TextAlign.Start)
                .width('100%')
              Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
                .select(false)
                .selectedColor('#1990FF')
                .shape(CheckBoxShape.CIRCLE)
                .onChange((value: boolean) => {
                  console.info('Checkbox1 change is' + value)
                })
                .offset({x:'-65%'})
              Text('本人办理')
                .offset({x:'-65%'})
                .margin({right:10})
              Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
                .select(true)
                .selectedColor('#1990FF')
                .shape(CheckBoxShape.CIRCLE)
                .onChange((value: boolean) => {
                  console.info('Checkbox1 change is' + value)
                })
                .offset({x:'-65%'})
              Text('代理人办理')
                .offset({x:'-65%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('患者姓名')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-80%'})
                .fontColor('red')
              TextInput({placeholder:'请输入姓名',text:'王小柯'})
                .caretColor('black')
                .width('40%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('证件类型')
                .textAlign(TextAlign.Start)
                .width('100%')
              //证件选择器
              Select([{ value: '请选择证件类型'}, { value: '居民身份证'},{ value: '港澳台通行证'}])
                .selected(this.index1)
                .value(this.text1)
                .font({ size: 16, weight: 500 })
                .fontColor('#182431')
                .selectedOptionFont({ size: 16, weight: 400 })
                .optionFont({ size: 16, weight: 400 })
                .space(this.space1)
                .arrowPosition(this.arrowPosition)
                .menuAlign(MenuAlignType.START, {dx:0, dy:0})
                .optionWidth(200)
                .optionHeight(300)
                .onSelect((index:number, text?: string | undefined)=>{
                  console.info('Select:' + index)
                  this.index1 = index;
                  if(text){
                    this.text1 = text;
                  }
                })
                .backgroundColor('white')
                .offset({x:'-70%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('证件号')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-85%'})
                .fontColor('red')
              TextInput({placeholder:'请输入证件号',text:'505154623153121523'})
                .caretColor('black')
                .width('70%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('本人电话')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-80%'})
                .fontColor('red')
              TextInput({placeholder:'请输入电话',text:'13666666666'})
                .caretColor('black')
                .width('40%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('验证码')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-85%'})
                .fontColor('red')
              TextInput({placeholder:'请输入验证码',text:'999666'})
                .caretColor('black')
                .width('40%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
              Text('获取验证码')
                .fontColor('#1890FF')
                .offset({x:'-70%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('住院号')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-85%'})
                .fontColor('red')
              TextInput({placeholder:'请输入住院号',text:'2015010110'})
                .caretColor('black')
                .width('40%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
              Text('查看示例')
                .fontColor('#1890FF')
                .offset({x:'-65%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            //日期空///////////////////////////////////////////////
            Row(){
              Text('入院时间')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-80%'})
                .fontColor('red')
              Column() {
                CalendarPicker({ hintRadius: 10, selected: this.selectedDate })
                  .textStyle({ color: "#ff182431", font: { size: 20, weight: FontWeight.Normal } })
                  .margin(10)
                  .onChange((value) => {
                    console.info("CalendarPicker onChange:" + JSON.stringify(value))
                  })
              }.alignItems(HorizontalAlign.End).width("100%").offset({x:'-100%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('出院时间')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-80%'})
                .fontColor('red')
              Column() {
                CalendarPicker({ hintRadius: 10, selected: this.selectedDate })
                  .textStyle({ color: "#ff182431", font: { size: 20, weight: FontWeight.Normal } })
                  .margin(10)
                  .onChange((value) => {
                    console.info("CalendarPicker onChange:" + JSON.stringify(value))
                  })
              }.alignItems(HorizontalAlign.End).width("100%").offset({x:'-100%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('身份证照片')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-75%'})
                .fontColor('red')
            }.margin({ bottom:20 })
            //照片框
            Column({ space: 10 }){
              //第一行
              Row(){
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({top:20,bottom:10 })
                  Text('正面身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({ top:20,bottom:10 })
                  Text('反面身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              //第二行
              Row(){
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({ top:20,bottom:10 })
                  Text('手持身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
              }.justifyContent(FlexAlign.Start).width('100%')
            }
          }

          //代办人信息
          Column({space:10}){
            Text('请完善以下代办人基本信息')
              .textAlign(TextAlign.Start)
              .fontWeight(FontWeight.Bold)
              .width('100%')
              .margin({top:40})
            Row(){
              Text('关系')
                .textAlign(TextAlign.Start)
                .width('100%')
              //证件选择器
              Select([{ value: '请选择代办人与患者的关系'}, { value: '亲属'},{ value: '朋友'}])
                .selected(this.index2)
                .value(this.text2)
                .font({ size: 16, weight: 500 })
                .fontColor('#182431')
                .selectedOptionFont({ size: 16, weight: 400 })
                .optionFont({ size: 16, weight: 400 })
                .space(0)
                .arrowPosition(this.arrowPosition)
                .menuAlign(MenuAlignType.START, {dx:0, dy:0})
                .optionWidth(200)
                .optionHeight(300)
                .onSelect((index:number, text?: string | undefined)=>{
                  console.info('Select:' + index)
                  this.index2 = index;
                  if(text){
                    this.text2 = text;
                  }
                })
                .backgroundColor('white')
                .offset({x:'-70%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('代办人姓名')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-75%'})
                .fontColor('red')
              TextInput({placeholder:'请输入代办人姓名'})
                .caretColor('black')
                .width('70%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Row(){
              Text('证件类型')
                .textAlign(TextAlign.Start)
                .width('100%')
              //证件选择器
              Select([{ value: '请选择证件类型'}, { value: '居民身份证'},{ value: '港澳台通行证'}])
                .selected(this.index3)
                .value(this.text3)
                .font({ size: 16, weight: 500 })
                .fontColor('#182431')
                .selectedOptionFont({ size: 16, weight: 400 })
                .optionFont({ size: 16, weight: 400 })
                .space(this.space3)
                .arrowPosition(this.arrowPosition)
                .menuAlign(MenuAlignType.START, {dx:0, dy:0})
                .optionWidth(200)
                .optionHeight(300)
                .onSelect((index:number, text?: string | undefined)=>{
                  console.info('Select:' + index)
                  this.index3 = index;
                  if(text){
                    this.text3 = text;
                  }
                })
                .backgroundColor('white')
                .offset({x:'-70%'})
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('代办人证件号')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-70%'})
                .fontColor('red')
              TextInput({placeholder:'请输入代办人证件号'})
                .caretColor('black')
                .width('70%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('代办人电话')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-75%'})
                .fontColor('red')
              TextInput({placeholder:'请输入代办人联系电话'})
                .caretColor('black')
                .width('70%')
                .offset({ x: '-70%' })
                .backgroundColor('white')
            }
            Divider().strokeWidth(2).color('#F2F2F2')
            Row(){
              Text('代办人身份证照片')
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('*')
                .offset({x:'-60%'})
                .fontColor('red')
            }.margin({ bottom:20 })
            //照片框
            Column({ space: 10 }){
              //第一行
              Row(){
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({top:20,bottom:10 })
                  Text('正面身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({ top:20,bottom:10 })
                  Text('反面身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              //第二行
              Row(){
                Column(){  //框内
                  Text('+')
                    .fontSize(30)
                    .padding({ top:20,bottom:10 })
                  Text('手持身份证')
                    .fontSize(14)
                    .padding({ bottom:20 })
                }
                .width('48%')
                .backgroundColor('#E6F4FF')
                .borderRadius(10)
              }.justifyContent(FlexAlign.Start).width('100%')
            }
            Row(){
              Text('代办人委托书照片')
                .textAlign(TextAlign.Start)
                .width('100%')
                .margin({top:20})
              Text('*')
                .offset({x:'-60%'})
                .fontColor('red')
                .margin({top:20})
              Text('查看示例')
                .fontColor('#1890FF')
                .offset({x:'-25%'})
                .margin({top:20})
            }.margin({ bottom:10 })
            Row(){
              Column(){  //框内
                Text('+')
                  .fontSize(30)
                  .padding({ top:20,bottom:10 })
                Text('代办人委托书')
                  .fontSize(14)
                  .padding({ bottom:20 })
              }
              .width('48%')
              .backgroundColor('#E6F4FF')
              .borderRadius(10)
            }.justifyContent(FlexAlign.Start).width('100%')
            Text('1、上传身份证图片支持JPG/PNG格式，最大支持10M')
              .textAlign(TextAlign.Start)
              .width('100%')
              .fontColor('#7F7F7F')
              .fontSize(13)
            Text('2、如自拍摄照片则需保证照片清晰且填写真实有效，否则将降低申请通过率，请按要求拍摄，感谢您的支持')
              .textAlign(TextAlign.Start)
              .width('100%')
              .fontColor('#7F7F7F')
              .fontSize(13)
            Button({type:ButtonType.Normal}){
              Text('下一步')
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
            .margin({top:20,bottom:20})
            ///////////////跳转
            .onClick(() => {
              router.pushUrl({url:'暂无'})
            })
          }
        }
      }
    }
    .padding(15)
  }
}