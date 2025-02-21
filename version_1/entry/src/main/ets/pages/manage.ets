import { router } from '@kit.ArkUI';

@Entry
@Component
export struct Index {
  @State message: string = 'Hello World';
  @State a1: number = 256;
  @State abc: Array<number> = []; //<>泛型

  //生命周期函数
  aboutToAppear(): void {
    for (let index = 1; index <= 2; index++) {
      //push表示在数组中添加元素
      this.abc.push(index);
    }
  }

  build() {
    Column() {
      Row(){
        Image($r('app.media.backbutton')).width(20).onClick(() =>{
          router.back()
        })

        Text('账号管理')
          .fontSize(19)
          .fontColor(Color.Black)
          .margin({left:115})
          .fontWeight(600)//.padding(20)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .margin({left:40})
      .justifyContent(FlexAlign.Start)

      Divider().strokeWidth(1.5).color('#F2F2F2').margin({ top: 10 })
      Stack(){Image($r('app.media.beijing')).backgroundImageSize(ImageSize.Cover).opacity(0.4)
      Column() {
          Row() {
            Column() {
              Text('账号')//.padding({ left: 10 })
                .fontColor(Color.Black)
                .fontSize(15)
                .margin({ bottom: 2 }) //数字越大字体越大
            }
            .width('75%')
            .padding({ left: 15, right: 10 })
            .margin({ top: 10, bottom: 10 })
            .alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Center)

            Column({ space: 10 }) {
              Text('136***6666')
              // Button() {
              //   Image($r('app.media.qianjin'))
              //     .fillColor('#ff585858')
              //     .height(20)
              // }
              // .backgroundColor('white')
              // ///////////////图标跳转
              // .onClick(() => {
              //   router.pushUrl({ url: 'pages/yhxy' })
              // })
            }
            //.alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Center)

          }
          .margin({
            left: 10,
            right: 7,
            top: 5,
            bottom: 5
          })
          .width('100%')
          .padding({ left: 10, right: 10 })
          Divider().strokeWidth(1).color('#F2F2F2').margin({ top: 10 })
        Row() {
          Column() {
            Text('绑定手机号')//.padding({ left: 10 })
              .fontColor(Color.Black)
              .fontSize(15)
              .margin({ bottom: 2 }) //数字越大字体越大
          }
          .width('90%')
          .padding({ left: 15, right: 10 })
          .margin({ top: 10, bottom: 10 })
          .alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Center)

          Column({ space: 10 }) {
            Button() {
              Image($r('app.media.qianjin'))
                .fillColor('#ff585858')
                .height(20)
            }
            .backgroundColor('white')
            ///////////////图标跳转
            .onClick(() => {
              router.pushUrl({ url: 'pages/yhxy' })
            })
          }
          //.alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Center)

        }
        .margin({
          left: 10,
          right: 7,
          top: 5,
          bottom: 5
        })
        .width('100%')
        .padding({ left: 10, right: 10 })
        Divider().strokeWidth(1).color('#F2F2F2').margin({ top: 10 })
        Row() {
          Column() {
            Text('注销账号')//.padding({ left: 10 })
              .fontColor(Color.Black)
              .fontSize(15)
              .margin({ bottom: 2 }) //数字越大字体越大
          }
          .width('90%')
          .padding({ left: 15, right: 10 })
          .margin({ top: 10, bottom: 10 })
          .alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Center)

          Column({ space: 10 }) {
            Button() {
              Image($r('app.media.qianjin'))
                .fillColor('#ff585858')
                .height(20)
            }
            .backgroundColor('white')
            ///////////////图标跳转
            .onClick(() => {
              router.pushUrl({ url: 'pages/xzypages/zhzx' })
            })
          }
          //.alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Center)

        }
        .margin({
          left: 10,
          right: 7,
          top: 5,
          bottom: 5
        })
        .width('100%')
        .padding({ left: 10, right: 10 })
        Divider().strokeWidth(10).color('#F2F2F2').margin({ top: 10 })

        //第二个框
        Row() {
          Column() {
            Text('修改密码')//.padding({ left: 10 })
              .fontColor(Color.Black)
              .fontSize(15)
              .margin({top:10, bottom: 10 }) //数字越大字体越大
            // Text('包括：缓存历史界面数据、个人授权')
            //   .fontColor(Color.Gray)
            //   .fontSize(15)
          }
          .width('81%')
          .padding({ left: 15, right: 10 })
          .margin({ top: 5, bottom: 0 })
          .alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Center)

          Column({ space: 10 }) {
            Row()
            {
              Text('去修改')
                .fontColor(Color.Gray)
                .margin({ top: 30, bottom: 0 })
              Button() {
                Image($r('app.media.qianjin'))
                  .fillColor('#ff585858')
                  .height(20)
                 // .margin({ top: 30, bottom: 5 })
              }
              .margin({ top: 30, bottom: 5 })
              .backgroundColor('white')
              ///////////////图标跳转
              .onClick(() => {
                router.pushUrl({ url: 'pages/ChangePassword' })
              })
            }
            //.alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Center)
          }.margin({top:-20})
        }
        .margin({
          left: 10,
          right: 7,
          top: 5,
          bottom: 5
        })
        .width('100%')
        .padding({ left: 10, right: 10 })
        Divider().strokeWidth(10).color('#F2F2F2').margin({ bottom: 100 })

        .margin({top:10,bottom:0})
          //.border({width:{bottom:1},color:Color.Black})
          //.backgroundColor('#ff122211')
        }
        .margin({top:-445})
      }
      }




    }
  }
