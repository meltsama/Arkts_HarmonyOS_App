import { ComponentContent, router } from '@kit.ArkUI';
import { PromptActionClass } from './PromptActionClass';

class Params {
  text: string = " "
  constructor(text: string) {
    this.text = text;
  }
}
//自定义弹窗    内部文本按钮等
@Builder
function buildText(params: Params) {
  Column() {
    //标题文本
    Text(params.text)
      .fontSize(18)
      .padding({top: 20})
    //内容文本
    Text('是否继续操作取消申请？')
      .fontSize(16)
      .margin(40)
    //两个按钮的实现
    Row(){
      Button({type:ButtonType.Normal}){
        Text('取消')
      }
      .padding({top: 20, bottom: 20})
      .borderWidth(1)
      .borderColor('#F6F9FC')
      .backgroundColor(Color.White)
      .borderRadius({bottomLeft:20})//左下角圆角
      .width('50%')
      //点击事件，无功能
      .onClick(() => {
        PromptActionClass.closeDialog()
      })
      Button({type:ButtonType.Normal}){
        Text('确定')
          .fontColor('#1989FA')
      }
      .padding({top: 20, bottom: 20})
      .borderWidth(1)
      .borderColor('#F6F9FC')
      .backgroundColor(Color.White)
      .borderRadius({bottomRight:20})//右下角圆角
      .width('50%')
      //点击事件，无功能
      .onClick(() => {
        PromptActionClass.closeDialog()
      })
    }
  }
  .backgroundColor(Color.White)
  .width('87%')
  .height(180)
  .borderRadius(20)
}

//定义类，用于详细信息显示
class MyArticle {
  Ltype : string
  Rtype : string
  //构造函数
  constructor(Ltype: string, Rtype: string) {
    this.Ltype = Ltype
    this.Rtype = Rtype
  }
}

@Entry
@Component
export struct DshPage {
  //详细信息初始化，赋值
  @State MyArticleList: Array<MyArticle> = [
    new MyArticle('申请医院', '四川省保健院北苑'),
    new MyArticle('申请人', '王小科'),
    new MyArticle('申请时间', '2020-01-01 10:30:20'),
    new MyArticle('订单金额', '￥17.00'),
  ]

  //自定义弹窗的变量等
  @State message: string = "取消申请"
  private ctx: UIContext = this.getUIContext();
  private contentNode: ComponentContent<Object> =
    new ComponentContent(this.ctx, wrapBuilder(buildText), new Params(this.message));

  aboutToAppear(): void {
    PromptActionClass.setContext(this.ctx);
    PromptActionClass.setContentNode(this.contentNode);
    //设置弹窗位置，中心点，xy，y负往上移
    PromptActionClass.setOptions({ alignment: DialogAlignment.Center, offset: { dx: 0, dy: -50 } });
  }

  build() {
    Column(){

      Column(){

        //框中第一行信息，行组件
        Row(){
          Text('  ')
            .width(4)
            .backgroundColor('#ff6f6fee')
            .borderRadius(5)
            .margin({right: 15})
          Text('住院病案复印')
            .width('78%')
            .textAlign(TextAlign.Start)
            .fontSize('19')
            .fontWeight(FontWeight.Bold)
          Text('待审核')
            .fontSize('12')
            .fontColor('#fffab617')
            .backgroundColor('#fffdf8de')
            .padding(5)
            .borderRadius(3)
            // .textAlign(TextAlign.End)
        }
        .width('100%')
        .padding({ top: 20, right: 20, bottom: 10 })//内边距20

        //列组件，存详细信息
        Column(){
          //中间的详细信息
          ForEach(this.MyArticleList,(item : MyArticle) =>{
            Row(){
              Text(item.Ltype)
                .width('50%')
                .textAlign(TextAlign.Start)
                .fontSize(14)
                .fontColor('#ff888888')
              Text(item.Rtype)
                .width('50%')
                .textAlign(TextAlign.End)
                .fontSize(14)
            }
            .width('100%')
            .padding({ left: 20, right: 20, top:10 })//左右内边距20
          })
        }
        .width('100%')

        //按钮行
        Row(){
          //层叠布局
          Stack() {
            Column() {
              //设置按钮
              Button({type:ButtonType.Normal}){
                Text('取消申请')
                  .fontSize(12)
              }
              .width(100)
              .height(35)
              .borderRadius(10)
              .borderWidth(1)
              .borderColor('#faf3e9e9')
              .backgroundColor(Color.White)
              .margin({ top: 20, right: 20 })
              //弹出文本框
              .onClick(() => {
                PromptActionClass.openDialog()
              })
            }
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.End)

      }
      .height(235)
      .width('100%')
      .borderRadius(10)
      .backgroundColor(Color.White)
      //点击进入详情页面，下一级页面        *****!!!!! 谢总的页面
      .onClick(() => {
        router.pushUrl({url:'pages/xpcpages/xpc1'})
      })

    }
    .height('100%')
    .width('100%')
    .padding({ top: 15, left: 10, right: 10 })
    .backgroundColor('#F2F2F2')
  }
}