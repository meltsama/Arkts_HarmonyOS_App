import { router } from '@kit.ArkUI'
@Entry
@Component
struct index5{

  @Builder
  MyRow(name1: string, name2: string){
    Row() {
      Text(name1).fontColor('#ffb7b0ab')
      Text(name2).fontWeight(FontWeight.Normal).margin({left:60,right:0})
    }
    .width('100%')
    .justifyContent(FlexAlign.Start)

  }




  build(){

    Column({space:25}){

      Row(){
        Image('/pages/xjcpicture/2/img.png').width(50).onClick(() =>{
          router.back()
        })
        Text('我的反馈').width(150).fontSize(25).fontWeight(FontWeight.Bold).margin({left:95,right:0})
        //Image('picture/2/img_1.png').width(100)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)


      Column(){

        Column(){

          Row(){
            Image('/pages/xjcpicture/5/img.png').width(100)
            Image('/pages/xjcpicture/5/img_1.png').width(50)
          }
          .borderRadius({topLeft: 10, topRight: 10})
          .borderWidth(1)
          .borderColor('#FFF1F0')
          .width('90%')
          .justifyContent(FlexAlign.SpaceBetween)
          .onClick(() =>{
            router.pushUrl({url:'pages/xjcpages/index6'})
          })

          Column({space:10}){
            this.MyRow('反馈类型','功能故障')
            this.MyRow('反馈内容','无法复印申请')
            this.MyRow('联系方式','13666666666')
            this.MyRow('反馈时间','2024-01-01 15：20：20')
          }
          .width('90%').alignItems(HorizontalAlign.Center).border({ width: 1}).borderColor('#FFF1F0')
          .padding(10).borderRadius({bottomLeft: 10, bottomRight: 10})
        }
        .margin({bottom:20})



        Column(){
          Row(){
            Image('/pages/xjcpicture/5/img_2.png').width(100)
            Image('/pages/xjcpicture/5/img_1.png').width(50)
          }
          .borderRadius({topLeft: 10, topRight: 10})
          .borderWidth(1)
          .borderColor('#FFF1F0')
          .width('90%')
          .justifyContent(FlexAlign.SpaceBetween)
          .onClick(() =>{
            router.pushUrl({url:'pages/xjcpages/index7'})
          })
          Column({space:10}){
            this.MyRow('反馈类型','功能故障')
            this.MyRow('反馈内容','无法复印申请')
            this.MyRow('联系方式','13666666666')
            this.MyRow('反馈时间','2024-01-01 12：20：20')
          }
          .width('90%').alignItems(HorizontalAlign.Center).border({ width: 1}).borderColor('#FFF1F0')
          .padding(10).borderRadius({bottomLeft: 10, bottomRight: 10})
        }




        Row(){
          Image('/pages/xjcpicture/5/img_3.png').width('90%')
        }
        .height('38%')
        .alignItems(VerticalAlign.Bottom)

      }.width('100%').height('100%')


      }




  }


}
