//
//  SettingsView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            KeyboardShortcutSettingsView()
                .tabItem {
                    Label("Keyboard", systemImage: "keyboard")
                }
            
            MenubarSettingsView()
                .tabItem {
                    Label("MenuBarExtra", systemImage: "rectangle.topthird.inset.filled")
                }
        }
        .frame(maxWidth: 400, minHeight: 300)
    }
}

#Preview {
    SettingsView()
}
