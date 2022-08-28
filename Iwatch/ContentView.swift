//
//  ContentView.swift
//  Iwatch
//
//  Created by Taurus on 2022/8/23.
//

import SwiftUI
import UIKit

struct HomeWrapper: UIViewRepresentable{
    
    func makeCoordinator() -> Coordinator {
        .init(name: $name)
    }
    
    typealias UIViewType = Home
    @Binding var name: String
    
    func makeUIView(context: Context) -> UIViewType {
        let viev = Home()
        viev.delegate = context.coordinator
        return viev
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    
    
}

extension HomeWrapper{
    class Coordinator:NSObject, HomeDelegate{
        @Binding var name:String

        init(name:Binding<String>){
            self._name = name
        }

        func changeValue(value: String) {
            Dprint("===点击2：\(value)")
            self.name = value
        }


    }
}

//class UserData: ObservableObject {
//    @Published var name = "myData"{
//        didSet{
//            Dprint(name)
//        }
//    }
//}

struct ContentView: View {
    @State var texta: String = "我"
//    @ObservedObject var userData = UserData()

    var body: some View {
        VStack{
            HomeWrapper(name: $texta).frame(width: 200, height: 200, alignment: .center)
            Text(texta).frame(width: 200, height: 60, alignment: .center).background(Color.blue).onTapGesture {
                texta = "dsdsd"
//                userData.name = "wwew"
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
struct TextFieldWrapper: UIViewRepresentable {
    init(_ placeholder: String,
         text: Binding<String>)
    {
        self.placeholder = placeholder
        self._text = text
    }

    let placeholder: String
    @Binding var text: String
    typealias UIViewType = UITextField
    func makeUIView(context: Context) -> UIViewType {
        let textfield = UITextField()
        textfield.setContentHuggingPriority(.defaultHigh, for: .vertical)
        textfield.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        textfield.placeholder = placeholder
        textfield.text = text
        textfield.delegate = context.coordinator
        return textfield
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {}

    func makeCoordinator() -> Coordinator {
        .init(text: $text)
    }
}


extension TextFieldWrapper{
    class Coordinator:NSObject,UITextFieldDelegate{
        @Binding var text:String
        init(text:Binding<String>){
            self._text = text
        }

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if let text = textField.text as NSString? {
                let finaltext = text.replacingCharacters(in: range, with: string)
                self.text = finaltext as String
            }
            return true
        }
    }
}

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            TextFieldWrapper("name:", text: $name)
                .border(.blue)
                .padding()
            Text("name:\(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 */
