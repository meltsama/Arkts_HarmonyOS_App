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
export struct YqxPage {
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
          Text('已取消')
            .fontSize('12')
            .fontColor('#7F7F7F')
            .backgroundColor('#F2F2F2')
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
      }
      .height(180)
      .width('100%')
      .borderRadius(10)
      .backgroundColor(Color.White)
      //点击进入详情页面，下一级页面        *****!!!!! 谢总的页面
      .onClick(() => {
        router.pushUrl({url:'pages/xpcpages/xpc7'})
      })

    }
    .height('100%')
    .width('100%')
    .padding({ top: 15, left: 10, right: 10 })
    .backgroundColor('#F2F2F2')
  }
}