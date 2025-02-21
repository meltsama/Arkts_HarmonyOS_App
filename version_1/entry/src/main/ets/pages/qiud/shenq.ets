import { DfyPage } from './DfyPage'
import { DjcPage } from './DjcPage'
import { DqsPage } from './DqsPage'
import { DshPage } from './DshPage'
import { DzfPage } from './DzfPage'
import { YbhPage } from './YbhPage'
import { YqxPage } from './YqxPage'
import { YwcPage } from './YwcPage'
import { router } from '@kit.ArkUI'

@Entry
@Component
export struct shenq {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State selectedIndex: number = 0
  private controller: TabsController = new TabsController()
  //定义页签属性
  @Builder tabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.selectedIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(15)
        .fontWeight(this.selectedIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 5 })
      Divider()
        .strokeWidth(2)
        .color('#007DFF')
        .opacity(this.selectedIndex === index ? 1 : 0)
    }.width(70)
  }

  build() {
    Column() {

      //行组件，第一行标题
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('申请记录')
          .width('88%')
          .textAlign(TextAlign.Center)//居中对齐
          .fontSize('19')//字号
          .fontWeight(FontWeight.Bold)//加粗
      }
      .width('100%')
      .borderWidth({bottom:1})//下划线大小
      .borderColor('#ffe8eaea')//颜色
      .padding(18)//内边距

      //顶部导航栏的实现，TabContent()中实现内容的呈现，直接调其他页
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
            List(){
              DshPage()
                .width('100%')
                .height(255)
              DzfPage()
                .width('100%')
                .height(255)
              DfyPage()
                .width('100%')
                .height(255)
              DjcPage()
                .width('100%')
                .height(200)
              DqsPage()
                .width('100%')
                .height(255)
              YbhPage()
                .width('100%')
                .height(335)
              YqxPage()
                .width('100%')
                .height(200)
              YwcPage()
                .width('100%')
                .height(200)
              ListItem() {
                Row(){
                  Image('/qiuimage/dixian.png')
                    .width('100%')
                    .alignSelf(ItemAlign.Start)
                }
                .height(68)
                .borderRadius({bottomRight: 10, bottomLeft: 10})
                .backgroundColor('#F2F2F2')
              }
            }
            .width('100%')
            .height('100%')

        }.tabBar(this.tabBuilder(0, '全部'))

        TabContent() {
          Column(){DshPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(1, '待审核'))

        TabContent() {
          Column(){DzfPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(2, '待支付'))

        TabContent() {
          Column(){DfyPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(3, '待复印'))

        TabContent() {
          Column(){DjcPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(4, '待寄出'))

        TabContent() {
          Column(){DqsPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(5, '待签收'))

        TabContent() {
          Column(){YbhPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(6, '已驳回'))

        TabContent() {
          Column(){YqxPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(7, '已取消'))

        TabContent() {
          Column(){YwcPage()}.width('100%').height('100%')
        }.tabBar(this.tabBuilder(8, '已完成'))

      }
      .vertical(false)//横向tab
      .barWidth('100%')
      .barHeight(56)
      .animationDuration(400)//切换TabContent的动画时长
      .scrollable(true)
      .barMode(BarMode.Scrollable)//Tabs中实现菜单栏横向滑动
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

    }
    .width('100%')
    .height('100%')
  }
}