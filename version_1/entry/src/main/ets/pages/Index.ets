import { promptAction, router } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State name:string = '' //用户名
  // @State password:string = '' //密码
  @State password: string = '';//验证码
  @State ischecked: boolean = false
  @State color1: string = '#ffb0efec'
  @State color2: string = '#ff99d1e2'
  //做登录验证
  doLogin(){

    if(!this.name){ //表示没有输入数据
      promptAction.showToast({message:'请输入手机号'})
      return //直接结束，不往后面继续执行
    }
    if(!this.password){ //表示没有输入数据
      promptAction.showToast({message:'请输入密码'})
      return //直接结束，不往后面继续执行
    }
    if (this.name!= '17786629842') {
      promptAction.showToast({message:'账号错误'})
      return
    }
    if (this.password!= '123456') {
      promptAction.showToast({message:'密码错误'})
      return
    }
    router.pushUrl({ url:'pages/Index' })//跳入主页面此处更改
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
          //.fontColor('blue')
            //.width('100%')
          //.fontColor('#ff08c4de')
          .onClick(()=>{
            router.pushUrl({url:'pages/LoginPage'})
          })
        Text('密码登陆')
          .fontSize(15)
            //.fontColor('')
            //.width('100%')
          .fontColor('#ff08c4de')

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

        //2.2 密码框
        TextInput({placeholder:'请输入密码'})
          .backgroundColor(Color.White) //背景颜色为白色
          .border({width:{bottom:0.5},color:'#e4e4e4'}) //下边框
          .borderRadius(40) //没有圆角
          .placeholderColor('#c3c3c5') //提示信息的颜色
          .caretColor('#ff9fe0ea') //获取焦点的颜色
          .type(InputType.Password)
          .onChange((value: string) => {
            this.password = value
          })
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
          colors: [['#ffb0efec',0],['#ff99d1e2',1]]
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
    .padding(15)
    //.padding({right:15,left:15,top:15,bottom:15}) //内边距  (不写方向就是四周)
  }
}