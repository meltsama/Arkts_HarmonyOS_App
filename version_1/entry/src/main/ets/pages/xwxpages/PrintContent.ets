import { LengthMetrics, router } from '@kit.ArkUI'

//定义类，用于详细信息显示
class Mybutton {
  zi : string
  colorb : string
  colorf : string
  //构造函数
  constructor(zi : string, colorb : string, colorf : string) {
    this.zi = zi
    this.colorb = colorb
    this.colorf = colorf
  }
}

@Entry
@Component
export struct PrintContent {
  @State value: number = 0
  @State text: string = "请选择复印用途"
  @State index: number = 2
  @State space: number = 80
  @State arrowPosition: ArrowPosition = ArrowPosition.END
  @State colorback: Array<string> = ['#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2',
    '#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2','#F2F2F2']
  @State colorfont: Array<string> = ['#000000','#000000','#000000','#000000','#000000','#000000','#000000',
    '#000000','#000000','#000000','#000000','#000000','#000000','#000000']
  // @State colorb: string = '#F2F2F2'; // 按钮背景初始颜色为灰色
  // @State colorf: string = '#000000'; // 按钮字体初始颜色为黑色
  @State quesList: Array<string> = [
    '住院病案首页', '入院记录', '出院记录','病历记录','检验报告','检查报告','体温单',
    '长期医嘱','临时医嘱','入院病人护理评估记录单','护理记录','入院证','医院质控','目录页及其他'
  ]
  @State MyButtonList: Array<Mybutton> = [
    new Mybutton('住院病案首页', '#F2F2F2','#000000'),
    new Mybutton('入院记录', '#F2F2F2','#000000'),
    new Mybutton('出院记录', '#F2F2F2','#000000'),
    new Mybutton('病历记录', '#F2F2F2','#000000'),
    new Mybutton('检验报告', '#F2F2F2','#000000'),
    new Mybutton('检查报告', '#F2F2F2','#000000'),
    new Mybutton('体温单', '#F2F2F2','#000000'),
    new Mybutton('长期医嘱', '#F2F2F2','#000000'),
    new Mybutton('临时医嘱', '#F2F2F2','#000000'),
    new Mybutton('入院病人护理评估记录单', '#F2F2F2','#000000'),
    new Mybutton('护理记录', '#F2F2F2','#000000'),
    new Mybutton('入院证', '#F2F2F2','#000000'),
    new Mybutton('医院质控', '#F2F2F2','#000000'),
    new Mybutton('目录页及其他', '#F2F2F2','#000000'),
  ]

  build() {
    Column({space:10}) {
      Row(){
        Text('复印份数')
          .fontWeight(FontWeight.Bold)
        Counter() {
          Text(this.value.toString())
        }
        .onInc(() => {
          this.value++
        })
        .onDec(() => {
          this.value--
        })
      }.justifyContent(FlexAlign.SpaceBetween).width('100%')
      Divider().strokeWidth(2).color('#CCCCCC')
      Row(){
        Text('复印用途').fontWeight(FontWeight.Bold)
        Select([{ value: '请选择复印用途'}, { value: '医保报销'},{ value: '生育险报销'},{ value: '复诊留存'},{ value: '保险理赔'}])
          .selected(this.index)
          .value(this.text)
          .font({ size: 16, weight: 500 })
          .fontColor('#7F7F7F')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .arrowPosition(this.arrowPosition)
          .menuAlign(MenuAlignType.START, {dx:0, dy:0})
          .optionWidth(200)
          .optionHeight(300)
          .onSelect((index:number, text?: string | undefined)=>{
            console.info('Select:' + index)
            this.index = index;
            if(text){
              this.text = text;
            }
          })
          .backgroundColor('white')
      }.justifyContent(FlexAlign.SpaceBetween).width('100%')
      Divider().strokeWidth(2).color('#CCCCCC')
        Text('复印内容').textAlign(TextAlign.Start).width('100%')
      Column({ space: 5 }) {
        Flex({ wrap: FlexWrap.Wrap, space: {main: LengthMetrics.px(50), cross: LengthMetrics.px(50)} }) { // 子组件多行布局
          // ForEach(this.MyButtonList,(item: Mybutton) =>{
          //   Text(item.zi)
          //     .padding(10)
          //     .borderRadius(8) //圆角
          //     .backgroundColor(item.colorb)
          //     .fontColor(item.colorf)
          //     .onClick(() => {
          //       if (item.colorb === '#F2F2F2'){
          //         item.colorf = '#1677FF';
          //         item.colorb = '#E6F4FF';
          //       }
          //       else if (item.colorb === '#E6F4FF'){
          //         item.colorf = '#000000';
          //         item.colorb = '#F2F2F2';
          //       }
          //     })
          // })
          //cv版
          Text(this.quesList[0])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[0])
            .fontColor(this.colorfont[0])
            .onClick(() => {
              //if判断
              if (this.colorback[0] === '#F2F2F2'){
                this.colorfont[0] = '#1677FF';
                this.colorback[0] = '#E6F4FF';
              }
              else if (this.colorback[0] === '#E6F4FF'){
                this.colorfont[0] = '#000000';
                this.colorback[0] = '#F2F2F2';
              }
            })
          Text(this.quesList[1])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[1])
            .fontColor(this.colorfont[1])
            .onClick(() => {
              //if判断
              if (this.colorback[1] === '#F2F2F2'){
                this.colorfont[1] = '#1677FF';
                this.colorback[1] = '#E6F4FF';
              }
              else if (this.colorback[1] === '#E6F4FF'){
                this.colorfont[1] = '#000000';
                this.colorback[1] = '#F2F2F2';
              }
            })
          Text(this.quesList[2])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[2])
            .fontColor(this.colorfont[2])
            .onClick(() => {
              //if判断
              if (this.colorback[2] === '#F2F2F2'){
                this.colorfont[2] = '#1677FF';
                this.colorback[2] = '#E6F4FF';
              }
              else if (this.colorback[2] === '#E6F4FF'){
                this.colorfont[2] = '#000000';
                this.colorback[2] = '#F2F2F2';
              }
            })
          Text(this.quesList[3])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[3])
            .fontColor(this.colorfont[3])
            .onClick(() => {
              //if判断
              if (this.colorback[3] === '#F2F2F2'){
                this.colorfont[3] = '#1677FF';
                this.colorback[3] = '#E6F4FF';
              }
              else if (this.colorback[3] === '#E6F4FF'){
                this.colorfont[3] = '#000000';
                this.colorback[3] = '#F2F2F2';
              }
            })
          Text(this.quesList[4])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[4])
            .fontColor(this.colorfont[4])
            .onClick(() => {
              //if判断
              if (this.colorback[4] === '#F2F2F2'){
                this.colorfont[4] = '#1677FF';
                this.colorback[4] = '#E6F4FF';
              }
              else if (this.colorback[4] === '#E6F4FF'){
                this.colorfont[4] = '#000000';
                this.colorback[4] = '#F2F2F2';
              }
            })
          Text(this.quesList[5])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[5])
            .fontColor(this.colorfont[5])
            .onClick(() => {
              //if判断
              if (this.colorback[5] === '#F2F2F2'){
                this.colorfont[5] = '#1677FF';
                this.colorback[5] = '#E6F4FF';
              }
              else if (this.colorback[5] === '#E6F4FF'){
                this.colorfont[5] = '#000000';
                this.colorback[5] = '#F2F2F2';
              }
            })
          Text(this.quesList[6])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[6])
            .fontColor(this.colorfont[6])
            .onClick(() => {
              //if判断
              if (this.colorback[6] === '#F2F2F2'){
                this.colorfont[6] = '#1677FF';
                this.colorback[6] = '#E6F4FF';
              }
              else if (this.colorback[6] === '#E6F4FF'){
                this.colorfont[6] = '#000000';
                this.colorback[6] = '#F2F2F2';
              }
            })
          Text(this.quesList[7])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[7])
            .fontColor(this.colorfont[7])
            .onClick(() => {
              //if判断
              if (this.colorback[7] === '#F2F2F2'){
                this.colorfont[7] = '#1677FF';
                this.colorback[7] = '#E6F4FF';
              }
              else if (this.colorback[7] === '#E6F4FF'){
                this.colorfont[7] = '#000000';
                this.colorback[7] = '#F2F2F2';
              }
            })
          Text(this.quesList[8])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[8])
            .fontColor(this.colorfont[8])
            .onClick(() => {
              //if判断
              if (this.colorback[8] === '#F2F2F2'){
                this.colorfont[8] = '#1677FF';
                this.colorback[8] = '#E6F4FF';
              }
              else if (this.colorback[8] === '#E6F4FF'){
                this.colorfont[8] = '#000000';
                this.colorback[8] = '#F2F2F2';
              }
            })
          Text(this.quesList[9])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[9])
            .fontColor(this.colorfont[9])
            .onClick(() => {
              //if判断
              if (this.colorback[9] === '#F2F2F2'){
                this.colorfont[9] = '#1677FF';
                this.colorback[9] = '#E6F4FF';
              }
              else if (this.colorback[9] === '#E6F4FF'){
                this.colorfont[9] = '#000000';
                this.colorback[9] = '#F2F2F2';
              }
            })
          Text(this.quesList[10])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[10])
            .fontColor(this.colorfont[10])
            .onClick(() => {
              //if判断
              if (this.colorback[10] === '#F2F2F2'){
                this.colorfont[10] = '#1677FF';
                this.colorback[10] = '#E6F4FF';
              }
              else if (this.colorback[10] === '#E6F4FF'){
                this.colorfont[10] = '#000000';
                this.colorback[10] = '#F2F2F2';
              }
            })
          Text(this.quesList[11])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[11])
            .fontColor(this.colorfont[11])
            .onClick(() => {
              //if判断
              if (this.colorback[11] === '#F2F2F2'){
                this.colorfont[11] = '#1677FF';
                this.colorback[11] = '#E6F4FF';
              }
              else if (this.colorback[11] === '#E6F4FF'){
                this.colorfont[11] = '#000000';
                this.colorback[11] = '#F2F2F2';
              }
            })
          Text(this.quesList[12])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[12])
            .fontColor(this.colorfont[12])
            .onClick(() => {
              //if判断
              if (this.colorback[12] === '#F2F2F2'){
                this.colorfont[12] = '#1677FF';
                this.colorback[12] = '#E6F4FF';
              }
              else if (this.colorback[12] === '#E6F4FF'){
                this.colorfont[12] = '#000000';
                this.colorback[12] = '#F2F2F2';
              }
            })
          Text(this.quesList[13])
            .padding(10)
            .borderRadius(8) //圆角
            .backgroundColor(this.colorback[13])
            .fontColor(this.colorfont[13])
            .onClick(() => {
              //if判断
              if (this.colorback[13] === '#F2F2F2'){
                this.colorfont[13] = '#1677FF';
                this.colorback[13] = '#E6F4FF';
              }
              else if (this.colorback[13] === '#E6F4FF'){
                this.colorfont[13] = '#000000';
                this.colorback[13] = '#F2F2F2';
              }
            })
        }
      }.width('100%').margin({ top: 5, bottom: 10 })
      Text('补充备注')
        .textAlign(TextAlign.Start)
        .width('100%')
        .fontWeight(FontWeight.Bold)
      TextInput({placeholder:'可选填补充说明'})
        .width('100%')
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
      .margin({top:5})
      ///////////////跳转
      .onClick(() => {
        router.pushUrl({url:'暂无'})
      })
    }
    .padding(15)
  }
}