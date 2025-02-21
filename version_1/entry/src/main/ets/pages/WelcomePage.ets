import { router } from '@kit.ArkUI'

@Entry
@Component
struct WelcomePage {
  @State opacityValue:number = 0.2
  //钩子函数，这个函数意思是，页面一打开就会执行
  onPageShow(): void {
    console.log('hello')
    this.opacityValue = 1
  }

  build() {
    Column(){
      Blank() //空白填充
      Column(){
        Image($r('app.media.qidongye'))
          .width('100%')


        Text('智能云病案')
          .fontSize(50) //字号
          .fontColor(Color.Black) //颜色
          .fontWeight(600) //加粗
          .height('10%')
      }
      .opacity(this.opacityValue) //透明度（值可以从0到1，0表示完全透明）
      .animation({
        duration: 2000,  //动画的持续时间，单位是毫秒
        iterations: 1,   //动画重复几次
        onFinish: ()=>{  //动画结束后做什么
          //动画结束后，跳转到登录页面
          router.replaceUrl({url:'pages/LoginPage'})
        }
      })
      Blank() //空白填充
      Blank() //空白填充
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe3f3f3')
    //.linearGradient({
      //colors:[['#ff9fdddd',0],['#ff43edfc',1]]
    //})


  }
}