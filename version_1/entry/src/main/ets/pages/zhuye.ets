import { index1 } from "./xjcpages/index1"
import { service } from "./xwxpages/service"

@Entry
@Component
export struct TabsExample {
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
    }
    .width('100%')
    .height(60)
    .padding({top:5 })
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column(){service()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder('服务', 0, $r('app.media.afterzy'), $r('app.media.zy')))

        TabContent() {
          Column(){index1()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder('我的', 1, $r('app.media.afterwd'), $r('app.media.wd')))

      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .height('100%')
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
    }.width('100%')
  }
}
