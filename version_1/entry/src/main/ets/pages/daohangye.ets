import { BasicInfo } from './xwxpages/BasicInfo'
import { PrintContent } from './xwxpages/PrintContent'
import { Send } from './xwxpages/send'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct daohangye {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State selectedIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder tabBuilder(name: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(name)
        .fontColor(this.selectedIndex === targetIndex ? this.selectedFontColor : this.fontColor)
        .fontSize(15)
        .fontWeight(this.selectedIndex === targetIndex ? 500 : 400)
        .lineHeight(22)
        .padding(10)
    }
    .width('100%')
    .height(60)
    .padding({top:5 , bottom:5 })
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {

      //行组件，第一行标题
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })
        Text('住院病案申请')
          .width('88%')
          .textAlign(TextAlign.Center)//居中对齐
          .fontSize('19')//字号
          .fontWeight(FontWeight.Bold)//加粗
      }
      .width('100%')
      .borderWidth({bottom:1})//下划线大小
      .borderColor('#ffe8eaea')//颜色
      .padding(18)//内边距

      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column(){BasicInfo()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder('基本信息', 0, $r('app.media.afternum1'), $r('app.media.number1')))

        TabContent() {
          Column(){PrintContent()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder('复印内容', 1, $r('app.media.afternum2'), $r('app.media.number2')))

        TabContent() {
          Column(){Send()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder('邮寄方式', 2, $r('app.media.afternum3'), $r('app.media.number3')))

      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(70)
      .animationDuration(400)
      .onChange((index: number) => {
        // currentIndex控制TabContent显示页签
        this.currentIndex = index
        this.selectedIndex = index
      })
      .onAnimationStart((index: number, targetIndex: number, event: TabsAnimationEvent) => {
        if (index === targetIndex) {
          return
        }
        // selectedIndex控制自定义TabBar内Image和Text颜色切换
        this.selectedIndex = targetIndex
      })
      .width('100%')
      .backgroundColor('white')
    }.width('100%')
  }
}