import router from '@ohos.router'

@Entry
@Component

export struct service {
  @State quesList: Array<string> = [
    '病例复印如何申请?',
    '病例复印如何取消?',
    '如何注销账号?'
  ]


  build() {
    Column({space:25}) {
      Text('智慧云病案')
        .fontSize(18)
        .fontWeight(FontWeight.Bolder)
        .textAlign(TextAlign.Start)
        .width('100%')

      //轮播图
      Swiper() {
        Image('/pages/xwxpicture/swiper1.png')
          .borderRadius(15)
        Image('/pages/xwxpicture/swiper2.png')
          .borderRadius(15)
      }
      .autoPlay(true)
      .interval(2000)
      //下方小圆点
      .indicator(
        Indicator.dot()
          .right(0)
          .itemWidth(5)
          .itemHeight(5)
          .selectedItemWidth(10)
          .selectedItemHeight(10)
          .color(Color.White)
          .selectedColor(Color.Gray)
      )
      //左右选择
      .displayArrow({
        showBackground: true,
        isSidebarMiddle: true,
        backgroundSize: 18,
        backgroundColor: Color.White,
        arrowSize: 18,
        arrowColor: Color.Blue
      }, false)
      .width('100%')
      .height(120)
      .loop(true)

      //俩按钮
      Row(){
        //按钮1：复印申请
        Button({type:ButtonType.Normal}){
          Row(){
            //打印图标
            Image('/pages/xwxpicture/buttonl.svg')
              .width(30)
              .fillColor('white')
              .margin(10)
            //文字
            Column({space:10}){
              Text('复印申请')
                .fontColor('white')
                .fontSize(15)
                .fontWeight(FontWeight.Bolder)
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('住院病案一键申请')
                .fontColor('white')
                .fontSize(12)
                .textAlign(TextAlign.Start)
                .width('100%')
            }
          }
        }
        // 按钮属性
        .borderRadius(5)
        .width('48%')
        .height('11%')
        .linearGradient({ //颜色渐变
          direction: GradientDirection.Right, //渐变的方向  Right表示从左到右，Bottom表示从上到下,以此类推
          colors: [['#6DAAFF',0],['#1878FF',1],['#6DAAFF',2]]
        })

        ///////////////按钮跳转
        .onClick(() => {
          router.pushUrl({url:'pages/xwxpages/PrintInfo'})
        })

        //按钮2：申请记录
        Button({type:ButtonType.Normal}){
          Row(){
            //打印图标
            Image('/pages/xwxpicture/buttonr.svg')
              .width(30)
              .fillColor('white')
              .margin(10)
            //文字
            Column({space:10}){
              Text('申请记录')
                .fontColor('white')
                .fontSize(15)
                .fontWeight(FontWeight.Bolder)
                .textAlign(TextAlign.Start)
                .width('100%')
              Text('便捷预约挂号')
                .fontColor('white')
                .fontSize(12)
                .textAlign(TextAlign.Start)
                .width('100%')
            }
          }
        }
        //按钮属性
        .borderRadius(5)
        .width('48%')
        .height('11%')
        .linearGradient({ //颜色渐变
          direction: GradientDirection.Right,
          colors: [['#97E4E4',0],['#15C3C3',1],['#97E4E4',2]]
        })
        ////////////////按钮跳转
        .onClick(() => {
          router.pushUrl({url:'pages/qiud/shenq'}) ////要改->邱
        })
      }
      //按钮之间空隙
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')

      //文字：常见问题
      Row(){
        Text('  ')
          .backgroundColor('#0468FF')
          .margin({right:8})
          .borderRadius(5)
        Text('常见问题')
          .fontWeight(FontWeight.Bold)
          .fontSize(15)
          .width('75%')  //把“换一组顶到右边”
        Image('/pages/xwxpicture/refresh.svg')
          .height(15)
          .fillColor('#7F7F7F')
          .padding({right:5})
        Text('换一组')
          .fontSize(13)
          .fontColor('#7F7F7F')
          // .textAlign(TextAlign.End)
          // .width('70%')
      }
      .justifyContent(FlexAlign.Start)
      .width('100%')

      //三个问题
      ForEach(this.quesList,(item: string) => {
        Column() {
          Row() {
            Button() {
              Text(item)
                .padding(10)
            }
            .backgroundColor('white')
            ////////////////问题跳转
            .onClick(() => {
              router.pushUrl({url:'pages/xzypages/bzxq'}) ///要改->肖-帮助详情
            })

            Button() {
              Image('/pages/xwxpicture/next.svg')
                .fillColor('#ff585858')
                .height(25)

            }
            .backgroundColor('white')
            ///////////////图标跳转
            .onClick(() => {
              router.pushUrl({url:'pages/xzypages/bzxq'}) ///要改->肖-帮助详情
            })
          }
          //行属性
          .border({ width: { bottom: 1 }, color: '#ffcbcbcb' })
          .justifyContent(FlexAlign.SpaceBetween)
          .width('100%')
        }
      })
      //查看更多问题
      Text('查看更多问题 >')
        .fontColor('#1E77FF')
        .margin(20)
        ///////////////跳转
        .onClick(() => {
          router.pushUrl({url:'pages/xwxpages/help'})  ///要改->肖-帮助中心
        })
    }
    //各行之间空
    .padding(15)
    .width('100%')
    .height('100%')
  }
}