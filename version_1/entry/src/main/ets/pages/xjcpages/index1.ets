import { router } from '@kit.ArkUI';
import { Button } from '@kit.InputKit';

@Entry
@Component
export struct index1{

  @Builder
  MyColumn(name: string, img: ResourceStr,ur:string){
    Column() {
      Image(img).width(60).onClick(() =>{
        router.pushUrl({url:ur})
      })
      Text(name).width(70)
    }

  }


  build(){

    Column({ space : 25 } ){

      Column(){
        Image('/pages/xjcpicture/1/img.png').width(160)//.margin({left:0,right:200})

      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      //.justifyContent(FlexAlign.Start)
      //.alignItems(VerticalAlign.Top)

      Divider()
        .color('#345d')
        .strokeWidth(2)








      Row(){
        Text('申请订单').width(200).fontSize(25).fontWeight(FontWeight.Bold)

        Text('全部').width(50)

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(10)

      Row({space:20}){
        Column(){

        }

        this.MyColumn('   待审核', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index2')
        this.MyColumn('   待支付', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index2')
        this.MyColumn('   待寄出', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index2')
        this.MyColumn('   待签收', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index2')






      }
      .width('100%')
      //.width('90%').alignItems(VerticalAlign.Center).height('15%').border({ width: 1})
      //.justifyContent(FlexAlign.Start)
      .margin({left:0,right:0})


      Row(){
        Text('服务设置').width(200).fontSize(25).fontWeight(FontWeight.Bold)

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(10)

      Row({space:20}){

        this.MyColumn(' 地址管理', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index2')
        this.MyColumn(' 意见反馈', '/pages/xjcpicture/1/img_1.png','pages/xjcpages/index5')
        this.MyColumn(' 帮助中心', '/pages/xjcpicture/1/img_1.png','pages/xwxpages/help')
        this.MyColumn(' 关于我们', '/pages/xjcpicture/1/img_1.png','pages/xzypages/gywm')

      }
      //.width('100%')
      //.justifyContent(FlexAlign.Start)
      .width('100%')
      .margin({left:46,right:10})


      Column(){
          Image('/pages/xjcpicture/1/img_1.png').width(60)
          Text('   设置').width(70)
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      .margin({left:56,right:10})
      .onClick(() => {
        router.pushUrl({ url: 'pages/xzypages/sz' })
      })
      //.alignItems(HorizontalAlign.Start)
      //.alignItems(VerticalAlign.Top)

    // Row(){
       // Image('picture/1/img_2.png').width(60).margin(40)
       // Image('picture/1/img_3.png').width(60).margin(40)
     //}
     //.justifyContent(FlexAlign.SpaceEvenly)
     //.alignItems(VerticalAlign.Bottom)
    }




  }
}
