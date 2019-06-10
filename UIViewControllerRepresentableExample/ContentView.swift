//
//  ContentView.swift
//  UIViewControllerRepresentableExample
//
//  Created by Zedd on 07/06/2019.
//  Copyright © 2019 Zedd. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView : View {
    var body: some View {
        NavigationView {
            List(0...5) { (_) in
                NavigationButton(destination: ZeddView().navigationBarTitle(Text("Zedd ViewController")) ) {
                    Text("Show Zedd View Controller")
                }
            }
        }
    }
}

class ZeddViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
    }
}

struct ZeddView : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = ZeddViewController
    
    func makeUIViewController(context: Context) -> UIViewControllerType {
        return ZeddViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
