import { router } from '@kit.ArkUI';

@Entry
@Component
struct index3{


  build(){

    Column({space:25}){

      Row(){
        Image('/pages/xjcpicture/2/img.png')
          .width(50)
          .onClick(() =>{
          router.pushUrl({url:'pages/xjcpages/index2'})
        })
        Text('地址编辑').width(150).fontSize(25).fontWeight(FontWeight.Bold).margin({left:80,right:0})
       // Image('picture/2/img_1.png').width(100)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)




      Row(){
        Text('收件人 *              王小柯').fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)



      Row(){
        Text('联系电话 *           13666666666').fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)




      Row(){
        Text('收货地址 *           四川省-成都市-锦江区').fontWeight(FontWeight.Bold)
        Image('/pages/xjcpicture/3/img.png').width(70)

      }
      .width('100%')
      .padding({left:15})
      .justifyContent(FlexAlign.Start)
      Divider().strokeWidth(3)




      Row(){
        Text('地址详细 *           土豆街520号').fontWeight(FontWeight.Bold)
      }
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
        Image('/pages/xjcpicture/3/img_2.png').width('100%')
      }
      .height('40%')
      .alignItems(VerticalAlign.Bottom)
      .onClick(() =>{
        router.pushUrl({url:'pages/xjcpages/index2'})
      })

    }






  }


}