import { router } from '@kit.ArkUI'
@Entry
@Component
struct index4{
  @State click: string = ""

  build(){

    Column({space:25}){
      Row(){
        Image('/pages/xjcpicture/2/img.png').width(50)          .onClick(() =>{
          router.pushUrl({url:'屏蔽'})
        })
        Text('新增地址').width(150).fontSize(25).fontWeight(FontWeight.Bold).margin({left:95,right:0})
        //Image('picture/2/img_1.png').width(100)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)





      Row(){
        Text('收件人* ').fontWeight(FontWeight.Bold).margin({left:0,right:42})
        Text('请输入收货人').fontColor('#ff9ba0b3')
      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)





      Row(){
        Text('联系电话* ').fontWeight(FontWeight.Bold).margin({left:0,right:26})
        Text('请输入收货人联系电话').fontColor('#ff9ba0b3')      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)




      Row(){
        Text('收货地址* ').fontWeight(FontWeight.Bold).margin({left:0,right:26})
        Text('请选择现居住地').fontColor('#ff9ba0b3')
        Image('/pages/xjcpicture/3/img.png').width(70)
      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)







      Row(){
        Text('地址详细* ').fontWeight(FontWeight.Bold).margin({left:0,right:26})
        Text('请输入现住址详细，精确到门牌号').fontColor('#ff9ba0b3')      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)


      Row(){
        Text('设置默认').fontWeight(FontWeight.Bold)
        // Image('/pages/xjcpicture/3/img_1.png').width(70)
        Toggle({ type: ToggleType.Switch, isOn: true })
      }
      .width('100%')
      .padding({left:15,right:15})
      .justifyContent(FlexAlign.SpaceBetween)



      Row(){
        Image('/pages/xjcpicture/4/img.png').width('100%')
      }
      .height('40%')
      .alignItems(VerticalAlign.Bottom)
      .onClick(() =>{
        router.pushUrl({url:'pages/xjcpages/index2'})
      })


    }




  }


}
