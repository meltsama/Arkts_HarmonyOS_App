import { router } from '@kit.ArkUI';
@Entry
@Component
struct index2{


  build(){

    Column(){
    Row(){
      Image('/pages/xjcpicture/2/img.png').width(50).onClick(() =>{
        router.back()
      })
      Text('地址管理').width(150).fontSize(25).fontWeight(FontWeight.Bold).margin({left:95,right:0})
      //Image('picture/2/img_1.png').width(100)
    }
    .width('100%')
    .justifyContent(FlexAlign.Start)

      Row(){
        Image('/pages/xjcpicture/2/img_2.png').width(50)
        Column(){
          Text('默认  王小柯  13666666666')
          Text('四川省成都市土豆区666号')
        }
      }
      .width('100%')
      .onClick(() =>{
        router.pushUrl({url:'pages/xjcpages/index3'})
      })

      Row(){
        Image('/pages/xjcpicture/2/img_2.png').width(50)
        Column(){
          Text('小土豆  13666666666')
          Text('四川省成都市土豆区666号')
        }
      }
      .width('100%')
      .onClick(() =>{
        router.pushUrl({url:'pages/xjcpages/index3'})
      })


      Row(){
        Image('/pages/xjcpicture/2/img_4.png').width('100%')
      }
      .height('77%')
      .alignItems(VerticalAlign.Bottom)
      .onClick(() =>{
        router.pushUrl({url:'pages/xjcpages/index4'})
      })


    }





  }


}
