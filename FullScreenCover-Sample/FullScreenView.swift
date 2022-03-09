//
//  FullScreenView.swift
//  FullScreenCover-Sample
//
//  Created by Hiroaki-Hirabayashi on 2022/03/09.
//

import SwiftUI

struct FullScreenView: View {
    
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    
    var body: some View {
        VStack{
            Button("Show Sheet") {
                viewControllerHolder?.present(style: .overFullScreen, builder: {
                    // 表示させたいView
                    FullScreen()
                })
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

/// 実際使用する時はここが表示させるViewになる
struct FullScreen: View {
    
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    
    var body: some View {
        Color.blue
            .onTapGesture {
                viewControllerHolder?.dismissController()
            }
            .edgesIgnoringSafeArea(.all)
    }
}
struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}
