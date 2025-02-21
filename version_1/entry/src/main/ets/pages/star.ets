import { router } from '@kit.ArkUI'

const TOTAL_COUNT = 60
@Entry
@Component

struct star {
  onPageShow(): void {
    !this.isBack && this.resumeTimer()
  }

  onPageHide(): void {
    this.pauseTimer()
  }

  aboutToDisappear(): void {
    clearInterval(this.timerId)
  }

  startTimer() {
    this.timerId = setInterval(() => {
      this.count--
      this.isBack = false
      if (this.count < 0) {
        clearInterval(this.timerId)
        this.count = TOTAL_COUNT
      }
    }, 1000)
  }

  pauseTimer() {
    if (!this.isPaused) {
      this.isPaused = true;
      clearInterval(this.timerId)
    }
  }

  resumeTimer() {
    if (this.isPaused) {
      this.isPaused = false
      this.startTimer()
    }
  }
  @State count: number = TOTAL_COUNT
  timerId: number = -1
  isPaused: boolean = false
  isBack: boolean = false
  build() {
    Column({space:15}) {
      //2.1 用户名输入框
      Text('找回密码')
        .fontSize('20')
        .fontWeight(600)
        .margin({bottom:50})
      TextInput({ placeholder: '请输入您的手机号码' })
        .backgroundColor(Color.White)//背景颜色为白色
        .border({ width: { bottom: 0.5 }, color: '#ff817a7a' })//下边框
        .borderRadius(0)//没有圆角
        .placeholderColor('#c3c3c5')//提示信息的颜色
        .caretColor('#ff9ab9e3') //获取焦点的颜色
      //.width('80%')
      //2.2 验证码框
      Row(){
        TextInput({placeholder:'请输入手机验证码'})
          .backgroundColor(Color.White) //背景颜色为白色
          .border({width:{bottom:0.5},color:'#ff817a7a'}) //下边框
          .borderRadius(0) //没有圆角
          .placeholderColor('#c3c3c5') //提示信息的颜色
          .caretColor('#ff9fe0ea') //获取焦点的颜色
          .width('70%')
        Text(`获取验证码(${this.count}s)`)
          .fontColor('#ff08c4de')
          .onClick(()=>{
            this.startTimer()
          })

      }
      Button({type:ButtonType.Normal}){ //type:ButtonType.Normal 表示普通按钮
        Text('下一步')
          .fontColor('#ffffff') //文本颜色为白色
      }
      .width('100%')//宽度
      .height(44) //高度
      .borderRadius(40) //圆角
      //.backgroundColor('#FB801D')
      .linearGradient({ //颜色渐变
        direction: GradientDirection.Right, //渐变的方向
        colors: [['#ffb0efec',0],['#ff99d1e2',1]]
      })
      //点击事件  箭头函数 () => { .... }
      .onClick(()=>{
        //跳转到Index页面
        router.pushUrl({url:'pages/ChangePassword'})
        //router.replaceUrl({url:'pages/Index'})
      })
    }
    .margin({   //外边距
      top:40,
      bottom:80
    })

    }


}

