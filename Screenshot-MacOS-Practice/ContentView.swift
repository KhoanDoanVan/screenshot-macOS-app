//
//  ContentView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ScreenCaptureViewModel()
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 300))]) {
                    ForEach(vm.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .onDrag({ NSItemProvider(object: image) }) /// Drag and drop the image to another wwindow
//                            .draggable(image)
                    }
                    
                }
            }
            
            HStack {
                Button("Make a area screenshot") {
                    vm.takeScreenshot(for: .area)
                }
                
                Button("Make a window screenshot") {
                    vm.takeScreenshot(for: .window)
                }
                
                Button("Make a full screenshot") {
                    vm.takeScreenshot(for: .full)
                }
            }
            
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
