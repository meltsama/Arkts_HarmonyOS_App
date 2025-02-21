// struct Help {
//   build() {
//     Column() {
//       Text('帮助中心')
//         .fontSize(18)
//         .fontWeight(FontWeight.Bold)
//       Row(){
//         Image($r('app.media.search'))
//           .height(20)
//         TextInput()
//       }
//     }
//     .padding()
//   }
// }
  // xxx.ets

import router from '@ohos.router'

@Entry
@Component
struct SearchExample {
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State positionInfo: CaretOffset = { index: 0, x: 0, y: 0 }
  controller: SearchController = new SearchController()
  @State quesList: Array<string> = [
    '病例复印如何申请?',
    '病例复印如何取消?',
    '如何注销账号?',
    '如何注销账号?',
    '如何注销账号?',
    '如何注销账号?',
    '如何注销账号?'
  ]

  build() {
    Column(){
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('帮助中心')
          .margin({left:130})
          .textAlign(TextAlign.Center)
          .fontWeight(FontWeight.Bolder)
      }
      .width('100%')
      .margin({left:20,bottom:10})

      Column(){  //背景色层
        Column() {  //组件层
          Column(){  //搜索框组件
            Search({ value: this.changeValue, placeholder: '请输入搜索内容', controller: this.controller })
              .searchButton('搜索')
              .width('95%')
              .height(40)
              .backgroundColor('#F2F2F2')
              .placeholderColor(Color.Grey)
              .placeholderFont({ size: 14, weight: 400 })
              .textFont({ size: 14, weight: 400 })
              .margin(10)
          }
          .backgroundColor('white')
          .margin({ bottom:10,top:4 })
          //热门问题
          Column(){
            Row(){
              Text('  ')
                .backgroundColor('#0468FF')
                .margin({right:8})
                .borderRadius(5)
              Text('热门问题')
                .fontWeight(FontWeight.Bold)
                .fontSize(15)
            }
            .margin({top:5})
            .justifyContent(FlexAlign.Start)
            .width('100%')
          }
          .backgroundColor('white')
          .padding(15)
          //问题
          Column(){
            ForEach(this.quesList,(item: string) => {
              Column() {
                Row() {
                  Button() {
                    Text(item)
                  }
                  .margin({left:20,bottom:15})
                  .backgroundColor('white')
                  ////////////////问题跳转
                  .onClick(() => {
                    router.pushUrl({url:'pages/xzypages/bzxq'})  //改
                  })

                  Button() {
                    Image('/pages/xwxpicture/next.svg')
                      .fillColor('#2C2C2C')
                      .height(25)
                  }
                  .margin({right:15,bottom:10})
                  .backgroundColor('white')
                  ///////////////图标跳转
                  .onClick(() => {
                    router.pushUrl({url:'pages/xzypages/bzxq'})  //改
                  })
                }
                //行属性
                .margin({top:15})
                .border({ width: { bottom: 1 }, color: '#ffcbcbcb' })
                .justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
              }
            })
          }//问题
          .backgroundColor('white')
          .height('70%')
          .margin({bottom:15})
          //底部按钮
          Column(){
            Button({type:ButtonType.Normal}){
              Text('我要反馈')
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
              router.pushUrl({url:'暂无'})  //改
            })
          }
          .justifyContent(FlexAlign.End)
          .height('10%')
          .backgroundColor('white')
          .padding(15)
        }//组件层
      }//背景色层
      .backgroundColor('#F2F2F2')
      .width('100%')
      .height('100%')
    }
  }
}