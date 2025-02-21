import { ComponentContent, router } from '@kit.ArkUI';
import { PromptActionClass2 } from './PromptActionClass2';

class Params2 {
  text: string = " "
  constructor(text: string) {
    this.text = text;
  }
}
//自定义弹窗    内部文本按钮等
@Builder
function buildText2(params: Params2) {
  Column() {
    //标题文本
    Text(params.text)
      .fontSize(18)
      .padding({top: 20})
    //内容文本
    Text('5633')
      .fontSize(40)
      .fontWeight(FontWeight.Bold)
      .margin(30)
      .fontColor('#0468FF')
    //两个按钮的实现
    Row(){
      Button({type:ButtonType.Normal}){
        Text('确定')
          .fontColor('#1989FA')
      }
      .padding({top: 20, bottom: 20})
      .borderWidth(1)
      .borderColor('#F6F9FC')
      .backgroundColor(Color.White)
      .borderRadius({bottomLeft:20, bottomRight:20})//右下角圆角
      .width('100%')
      //点击事件，无功能
      .onClick(() => {
        PromptActionClass2.closeDialog2()
      })
    }
  }
  .backgroundColor(Color.White)
  .width('87%')
  .height(185)
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
export struct DqsPage {
  //初始化，赋值
  @State MyArticleList: Array<MyArticle> = [
    new MyArticle('申请医院', '四川省保健院北苑'),
    new MyArticle('申请人', '王小科'),
    new MyArticle('申请时间', '2020-01-01 10:30:20'),
    new MyArticle('订单金额', '￥17.00'),
  ]

  //自定义弹窗的变量等
  @State message: string = "取件码"
  private ctx: UIContext = this.getUIContext();
  private contentNode: ComponentContent<Object> =
    new ComponentContent(this.ctx, wrapBuilder(buildText2), new Params2(this.message));

  aboutToAppear(): void {
    PromptActionClass2.setContext2(this.ctx);
    PromptActionClass2.setContentNode2(this.contentNode);
    //设置弹窗位置，中心点，xy，y负往上移
    PromptActionClass2.setOptions2({ alignment: DialogAlignment.Center, offset: { dx: 0, dy: -50 } });
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
          Text('待签收')
            .fontSize('12')
            .fontColor('#8277FF')
            .backgroundColor('#ffe4f4ff')
            .padding(5)
            .borderRadius(3)
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

        Row(){
          //按钮卡片
          Button({type:ButtonType.Normal}){
            Text('查看详情')
              .fontSize(12)
          }
          .width(100)
          .height(35)
          .borderRadius(10)
          .borderWidth(1)
          .borderColor('#faf3e9e9')
          .backgroundColor(Color.White)
          .alignSelf(ItemAlign.End)
          .margin({ top: 20, right: 8 })
          //查看详情，跳转详情页面
          .onClick(() => {
            router.pushUrl({url:'谢总的页面'})
          })

          //按钮卡片
          Button({type:ButtonType.Normal}){
            Text('取件码')
              .fontSize(12)
          }
          .width(100)
          .height(35)
          .borderRadius(10)
          .borderWidth(1)
          .borderColor('#faf3e9e9')
          .fontColor(Color.White)
          .alignSelf(ItemAlign.End)
          .margin({ top: 20, right: 20 })
          //弹窗
          .onClick(() => {
            PromptActionClass2.openDialog2()
          })
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
        router.pushUrl({url:'pages/xpcpages/xpc5'})
      })

    }
    .height('100%')
    .width('100%')
    .padding({ top: 15, left: 10, right: 10 })
    .backgroundColor('#F2F2F2')
  }
}