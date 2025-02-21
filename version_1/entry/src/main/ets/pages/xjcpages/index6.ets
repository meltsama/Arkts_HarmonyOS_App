import { router } from '@kit.ArkUI'
@Entry
@Component
struct index6{
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
        Text('反馈详细').width(150).fontSize(25).fontWeight(FontWeight.Bold).margin({left:95,right:0})
       // Image('picture/2/img_1.png').width(100)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)






      Column(){
        Row(){
          Image('/pages/xjcpicture/5/img.png').width(100).margin({left:10})
          Image('/pages/xjcpicture/5/img_1.png').width(50)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Divider().strokeWidth(1)



        Column({space:10}){
          this.MyRow('反馈类型','功能故障')
          this.MyRow('联系方式','13666666666')
          this.MyRow('反馈时间','2024-01-01 15：20：20')
          this.MyRow('反馈内容','无法复印申请')
          Image('/pages/xjcpicture/6/img.png').width(70).margin({left:0,right:250,top:20})
        }
        .width('90%').alignItems(HorizontalAlign.Center).height('25%').margin(15)



      }

    }







  }


}
