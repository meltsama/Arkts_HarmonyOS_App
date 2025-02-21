import { promptAction, router } from '@kit.ArkUI'
const TOTAL_COUNT = 60
@Entry
@Component
struct LoginPage {
  @State count: number = TOTAL_COUNT
  timerId: number = -1
  isPaused: boolean = false
  isBack: boolean = false
  // //@State作用：值修改，页面UI也会被重新渲染
  @State name:string = '' //用户名
  // @State password:string = '' //密码
  @State verificationCode: string = '';//验证码
  @State ischecked: boolean = false
  @State color1: string = '#ffb0efec'
  @State color2: string = '#ff99d1e2'
  //做登录验证
  doLogin(){

    if(!this.name){ //表示没有输入数据
      promptAction.showToast({message:'请输入手机号'})
      return //直接结束，不往后面继续执行
    }
    if(!this.verificationCode){ //表示没有输入数据
      promptAction.showToast({message:'请输入密码'})
      return //直接结束，不往后面继续执行
    }
    if (this.name!= '17786629842') {
      promptAction.showToast({message:'账号错误'})
      return
    }
    if (this.verificationCode!= '123456') {
      promptAction.showToast({message:'验证码错误'})
      return
    }
    router.pushUrl({ url:'pages/zhuye' })//跳入主页面此处更改
  }
  // // 状态变量，用于存储输入的手机号码、密码和验证码
  // @State phoneNumber: string = '';
  // @State password: string = '';
  // @State verificationCode: string = '';

  // 状态变量，用于存储错误信息
//  @State errorMessage: string = '';

  // 状态变量，用于控制复选框的选中状态
 // @State agreeTerms: boolean = false;

  // 方法：验证手机号码格式
  // private validatePhoneNumber(phone: string): boolean {
  //   const phoneRegex = /^1[3-9]\d{9}$/; // 简单的手机号码正则表达式，仅作示例
  //   return phoneRegex.test(phone);
  // }
  //
  // // 方法：验证密码（这里假设密码至少6位）
  // private validatePassword(pwd: string): boolean {
  //   return pwd.length >= 6;
  // }
  //
  // // 方法：提交登录信息
  // // private async submitLoginInfo() {
  // //   // 清除之前的错误信息
  // //   this.errorMessage = '';
  //
  //   // 验证手机号码
  //   if (!this.phoneNumber) {
  //     this.errorMessage = '手机号码不能为空';
  //     return;
  //   }
  //   if (!this.validatePhoneNumber(this.phoneNumber)) {
  //     this.errorMessage = '手机号码格式不正确';
  //     return;
  //   }
  //
  //   // 验证密码
  //   if (!this.password) {
  //     this.errorMessage = '密码不能为空';
  //     return;
  //   }
  //   if (!this.validatePassword(this.password)) {
  //     this.errorMessage = '密码长度至少6位';
  //     return;
  //   }
  //
  //   // 验证验证码（这里假设有一个异步方法验证验证码）
  //   if (!this.verificationCode) {
  //     this.errorMessage = '验证码不能为空';
  //     return;
  //   }
  //   // 假设有一个验证验证码的API，这里用异步模拟
  //   try {
  //     const isCodeValid = await this.validateVerificationCode(this.verificationCode);
  //     if (!isCodeValid) {
  //       this.errorMessage = '验证码错误';
  //       return;
  //     }
  //   } catch (error) {
  //     this.errorMessage = '验证码验证失败，请重试';
  //     return;
  //   }
  //
  //   // 检查是否同意服务条款
  //   if (!this.agreeTerms) {
  //     this.errorMessage = '请同意以下服务须知';
  //     return;
  //   }
  //
  //   // 如果所有验证都通过，则执行登录逻辑（这里省略）
  //   // ...
  //   this.errorMessage = '登录成功！'; // 仅作示例，实际应显示成功信息或执行跳转等操作
  // }

  // // 假设的异步验证码验证方法（实际应调用后端API）
  // private async validateVerificationCode(code: string): Promise<boolean> {
  //   // 这里应该是调用后端API验证验证码的逻辑，为了简化，直接返回true作为示例
  //   return Promise.resolve(true); // 仅作示例，实际应根据API响应返回true或false
  // }

  // login(){
  //
  //   if(!this.isAgree){
  //     promptAction.showToast({
  //       message: '请阅读条款',
  //       duration: 5000
  //     })
  //     return;
  //   }
  //
  //   let reg = /^[a-zA-Z0-9_]{3,10}$/
  //   if(reg.test(this.username) == false){
  //     promptAction.showToast({
  //       message: '用户名输入格式错误',
  //       duration: 5000
  //     })
  //     return;
  //   }
  //   let reg_pwd = /^[a-zA-Z0-9_]{6,}$/
  //   if(reg_pwd.test(this.password) == false){
  //     promptAction.showToast({
  //       message: '密码输入格式错误',
  //       duration: 5000
  //     })
  //     return;
  //   }
  //
  //   promptAction.showToast({
  //     message: '登录成功'+ this.username + '--->'+ this.password,
  //     duration: 5000
  //   })
  //
  // }
//验证码倒计时
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
  build() {
    //整个页面
    Column({space:30}){
      //1.logo和标题部分
      Column({space:0}){  //相互之间的间距
        //1.1 logo
        //Image($r('app.media.avatar'))
          //.width(120) //图片的宽度
          //.height(120) //图片的高度
        //1.2 标题
        Text('智慧云病案')
          .fontSize(28)//字体大小为28
          .height('100')
          .width('100%')
        //1.3 副标题
        Text('开启智慧医疗新时代')
          .fontSize(15) //字体大小为15
          .fontColor('gray') //字体颜色为gray（灰色）
          //.height('100')
          .width('100%')

      }
      Row({space:15}){

        Text('验证码登陆')
          .fontSize(15)
          .fontColor('blue')
          //.width('100%')
          .fontColor('#ff08c4de')
          .onClick(()=>{
            router.pushUrl({url:'pages/LoginPage'})
          })
        Text('密码登陆')
          .fontSize(15)
          //.fontColor('')
          //.width('100%')

          .onClick(()=>{
            router.pushUrl({url:'pages/Index'})
          })

      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .margin({top: 30})

      //2.表单部分
      Column({space:15}){
        //2.1 用户名输入框
        TextInput({placeholder:'请输入您的手机号码'})
          .backgroundColor(Color.White) //背景颜色为白色
          .border({width:{bottom:0.5},color:'#e4e4e4'}) //下边框
          .borderRadius(0) //没有圆角
          .placeholderColor('#c3c3c5') //提示信息的颜色
          .caretColor('#ff9ab9e3') //获取焦点的颜色
          .type(InputType.PhoneNumber)
          .maxLength(11)
          .onChange((value: string) => {
            this.name = value
          })
          //.width('80%')
        //2.2 验证码框
        Row(){
          TextInput({placeholder:'请输入手机验证码'})
            .backgroundColor(Color.White) //背景颜色为白色
            .border({width:{bottom:0.5},color:'#e4e4e4'}) //下边框
            .borderRadius(0) //没有圆角
            .placeholderColor('#c3c3c5') //提示信息的颜色
            .caretColor('#ff9fe0ea') //获取焦点的颜色
            .width('70%')
            .type(InputType.Number)
            .onChange((value: string) => {
              this.verificationCode = value
            })
          Text(`获取验证码(${this.count}s)`)
            .fontColor('#ff08c4de')
            .onClick(()=>{
              this.startTimer()
            })
        }
        //2.3 阅读
        Row(){
          //2.3.1 复选框
          Checkbox()
            //.shape(CheckBoxShape.ROUNDED_SQUARE)
            .shape(1)
            .onClick(()=>{
              if (this.ischecked === false){
                this.ischecked = true;
                this.color1 = '#ffb0efec';
                this.color2 = '#FF0990A7';
              }
              else if (this.ischecked === true){
                this.ischecked = false;
                this.color1 = '#ffb0efec';
                this.color2 = '#ff99d1e2';
              }
              })
          //2.3.2 同意
          Text('已阅读并同意')
            .fontSize(14)
            .fontColor('gray')
          //2.3.3 协议
          Text('用户协议')
            .fontSize(14)
          //2.3.4 和
          Text(' 和 ')
            .fontSize(14)
            .fontColor('gray')
          //2.3.5 隐私政策
          Text('隐私政策')
            .fontSize(14)
        }
        .width('100%')
        //2.4 按钮
        Button({type:ButtonType.Normal}){ //type:ButtonType.Normal 表示普通按钮
          Text('立即登录')
            .fontColor('#ffffff') //文本颜色为白色
        }
        .width('100%')//宽度
        .height(44) //高度
        .borderRadius(4) //圆角
        //.backgroundColor('#FB801D')
        .linearGradient({ //颜色渐变
          direction: GradientDirection.Right, //渐变的方向
          colors: [[this.color1,0],[this.color2,1]]
        })
        //点击事件  箭头函数 () => { .... }
        .onClick(()=>{
          if (this.ischecked === true)
          //跳转到Index页面
             this.doLogin();
          //router.replaceUrl({url:'pages/Index'})
          else {promptAction.showToast({message:'您需要详细阅读并勾选同意《用户协议》和《隐私政策》才可进入'})}
        })
      }
      .margin({   //外边距
        top:40,
        bottom:80
      })
      //3.其它部分
      Column(){
        //3.1 其它登录方式
        Text('其它方式')
          .fontSize(14)
          .fontColor('gray')

      }

    }
    .width('100%')
    .height('100%')
    .padding(20)
    //.padding({right:15,left:15,top:15,bottom:15}) //内边距  (不写方向就是四周)
  }
}