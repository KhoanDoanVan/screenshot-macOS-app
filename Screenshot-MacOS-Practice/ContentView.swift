//
//  ContentView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
