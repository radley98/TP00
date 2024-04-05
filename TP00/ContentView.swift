//
//  ContentView.swift
//  TP00
//
//  Created by Rad on 2024/4/5.
//

import SwiftUI

//View表示某种显示协议
struct ContentView: View {
    //创建了一个静态属性（即类的static变量和static函数）
    //这个静态属性属于DateFormatter类
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var dueDate = Date()
    
    
    //一个contentview中，body内只能有一个视图，如果有多个视图，则需要封装成单个
    var body: some View {
        VStack(spacing: 5){ //spacing: 50表示各个元素间的间隙
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            //Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
            
            Text("Hello, world!")
                .padding(.bottom, 10)
                .foregroundColor(.black) //文本颜色
                .font(.footnote) //字体
                .background(LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .top, endPoint: .bottom))
            
            //建立一些简单图形
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 200, height: 20)
            Circle()
                .fill(Color.gray)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            
            Image(systemName: "heart")
                .background(
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 100, height: 100))
                .padding(100)

            
            Image(systemName: "heart.fill")
            //Divider() //间隔符
            //Text("Hello, Swift!")
            
            //文本过长的省略显示方法
//            Text("This is an extremely long string that will never fit even the widest of Phones ")
//                    .truncationMode(.middle)//如果文本过长，则在中间使用省略号代替
        }
        .padding()
    }
}

//第二个视图
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



#Preview {
    ContentView()
}
