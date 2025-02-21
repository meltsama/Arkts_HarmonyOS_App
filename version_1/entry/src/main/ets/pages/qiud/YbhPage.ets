import { router } from "@kit.ArkUI";
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
export struct YbhPage {
  //初始化，赋值
  @State MyArticleList: Array<MyArticle> = [
    new MyArticle('申请医院', '四川省保健院北苑'),
    new MyArticle('申请人', '王小科'),
    new MyArticle('申请时间', '2020-01-01 10:30:20'),
    new MyArticle('订单金额', '￥17.00'),
  ]

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
          Text('已驳回')
            .fontSize('12')
            .fontColor('#ffec444b')
            .backgroundColor('#FFF1F0')
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

        //驳回原因
        Column({space: 10}){
          Text('驳回原因')
            .width('100%')
            .fontColor('#ffec444b')
            .fontSize(12)
            .textAlign(TextAlign.Start)
          Text('提交的身份信息不准确，请重新申请')
            .width('100%')
            .fontColor('#ff888888')
            .fontSize(12)
            .textAlign(TextAlign.Start)
        }
        .width('85%')
        .backgroundColor('#44c8c3c3')
        .padding(15)
        .margin({ top: 15 })
        .borderRadius(10)


        //按钮卡片
        Button({type:ButtonType.Normal}){
          Text('重新申请')
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
        //跳转住院病案复印须知页，许文轩的页面
        .onClick(() => {
          router.pushUrl({url:'pages/xwxpages/PrintInfo'})
        })

      }
      .height(315)
      .width('100%')
      .borderRadius(10)
      .backgroundColor(Color.White)
      //点击进入详情页面，下一级页面        *****!!!!! 谢总的页面
      .onClick(() => {
        router.pushUrl({url:'pages/xpcpages/xpc6'})
      })

    }
    .height('100%')
    .width('100%')
    .padding({ top: 15, left: 10, right: 10 })
    .backgroundColor('#F2F2F2')
  }
}