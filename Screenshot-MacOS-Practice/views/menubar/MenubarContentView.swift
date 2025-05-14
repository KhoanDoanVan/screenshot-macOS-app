//
//  MenubarContentView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

struct MenubarContentView: View {
    
    @ObservedObject var vm: ScreenCaptureViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 50, maximum: 300))]) {
                    ForEach(vm.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .onDrag({ NSItemProvider(object: image) }) /// Drag and drop the image to another wwindow
//                            .draggable(image)
                    }
                    
                }
            }
            .contentMargins(20)
            .frame(maxWidth: 200)
            
            HStack {
                
                Button {
                    vm.takeScreenshot(for: .area)
                } label: {
                    Label("Make a area screenshot", systemImage: "rectangle.center.inset.filled.badge.plus")
                }
                
                Button {
                    vm.takeScreenshot(for: .window)
                } label: {
                    Label("Make a window screenshot", systemImage: "macwindow")
                }
 
                Button {
                    vm.takeScreenshot(for: .full)
                } label: {
                    Label("Make a full screenshot", systemImage: "macbook.gen2")
                }
            }
            .labelStyle(.iconOnly)
            
        }
        .padding()
    }
}
