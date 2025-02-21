import { promptAction, router } from '@kit.ArkUI'

const TOTAL_COUNT = 60
@Entry
@Component

struct star {
  @State password:string = '' //密码
  @State newpassword:string = '' //新密码
  doLogin(){
    if(!this.password){ //表示没有输入数据
      promptAction.showToast({message:'请输入密码'})
      return //直接结束，不往后面继续执行
  }
    if(!this.newpassword){ //表示没有输入数据
      promptAction.showToast({message:'请输入新密码'})
      return //直接结束，不往后面继续执行
    }
    if (this.password!=this.newpassword) {
      promptAction.showToast({message:'两次密码不一致'})
      return
    }
    router.pushUrl({url:'pages/Changeps'})
  }
  // onPageShow(): void {
  //   !this.isBack && this.resumeTimer()
  // }
  //
  // onPageHide(): void {
  //   this.pauseTimer()
  // }
  //
  // aboutToDisappear(): void {
  //   clearInterval(this.timerId)
  // }
  //
  // startTimer() {
  //   this.timerId = setInterval(() => {
  //     this.count--
  //     this.isBack = false
  //     if (this.count < 0) {
  //       clearInterval(this.timerId)
  //       this.count = TOTAL_COUNT
  //     }
  //   }, 1000)
  // }
  //
  // pauseTimer() {
  //   if (!this.isPaused) {
  //     this.isPaused = true;
  //     clearInterval(this.timerId)
  //   }
  // }
  //
  // resumeTimer() {
  //   if (this.isPaused) {
  //     this.isPaused = false
  //     this.startTimer()
  //   }
  // }
  // @State count: number = TOTAL_COUNT
  // timerId: number = -1
  // isPaused: boolean = false
  // isBack: boolean = false
  build() {
    Column({space:15}) {
      //2.1 用户名输入框
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
      .margin({left:40 , bottom:50})


      TextInput({ placeholder: '请输入您的新密码' })
        .backgroundColor(Color.White)//背景颜色为白色
        .border({ width: { bottom: 0.5 }, color: '#ff817a7a' })//下边框
        .borderRadius(0)//没有圆角
        .placeholderColor('#c3c3c5')//提示信息的颜色
        .caretColor('#ff9ab9e3') //获取焦点的颜色
        .type(InputType.Password)
        .onChange((value: string) => {
          this.password = value
        })
      //.width('80%')
      //2.2 验证码框
      Row(){
        TextInput({placeholder:'请重新输入你的新密码'})
          .backgroundColor(Color.White) //背景颜色为白色
          .border({width:{bottom:0.5},color:'#ff817a7a'}) //下边框
          .borderRadius(0) //没有圆角
          .placeholderColor('#c3c3c5') //提示信息的颜色
          .caretColor('#ff9fe0ea') //获取焦点的颜色
          .width('1000%')
          .type(InputType.Password)
          .onChange((value: string) => {
            this.newpassword = value
          })
        // Text(`获取验证码(${this.count}s)`)
        //   .fontColor('#ff08c4de')
        //   .onClick(()=>{
        //     this.startTimer()
        //   })

      }
      Button({type:ButtonType.Normal}){ //type:ButtonType.Normal 表示普通按钮
        Text('确认修改')
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
        //router.pushUrl({url:'pages/Changeps'})
        //router.replaceUrl({url:'pages/Index'})
        this.doLogin()
      })
    }
    .margin({   //外边距
      top:40,
      bottom:80
    })

  }


}
