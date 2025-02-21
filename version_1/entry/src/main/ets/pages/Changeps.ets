import { router } from '@kit.ArkUI'

@Entry
@Component
struct Index {

  build() {
    Column({space:30}){
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('修改密码')
          .fontSize('20')
          .fontWeight(600)
          .margin({left:100})

      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .margin({bottom:50,
        left:40
      })

      Image($r('app.media.duigou'))
        .width(50)
        .height(50)
        .margin({
        left:10,
        top:50}

    )
      Text('修改密码成功')
        .fontSize('20')
        .fontWeight(600)
        .margin({bottom:50,
          left:10
        })
      Text('您的账号密码修改成功，请妥善保管新的密码')
        .fontSize('10')
        .fontWeight(600)
        .margin({
          top:10,
          bottom:-20,
          left:10
        })
      Button({type:ButtonType.Normal}){
        Text('去登录')
          .fontColor('#ffffff') //文本颜色为白色

      }
      .width('80%')//宽度
      .height(44) //高度
      .borderRadius(40) //圆角
      .linearGradient({ //颜色渐变
        direction: GradientDirection.Right, //渐变的方向
        colors: [['#ffb0efec',0],['#ff99d1e2',1]]
      })
      //点击事件  箭头函数 () => { .... }
      .onClick(()=>{
        //跳转到Index页面
        router.pushUrl({url:'pages/LoginPage'})
        //router.replaceUrl({url:'pages/Index'})
      })







  }
  .width('100%')

  }
}