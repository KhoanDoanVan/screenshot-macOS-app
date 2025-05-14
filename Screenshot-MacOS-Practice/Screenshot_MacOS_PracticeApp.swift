//
//  Screenshot_MacOS_PracticeApp.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

@main
struct Screenshot_MacOS_PracticeApp: App {
    
    @StateObject var vm = ScreenCaptureViewModel()
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
    var body: some Scene {
//        WindowGroup {
//            ContentView(vm: vm)
//        }
        
//        Window("Screenshots", id: "main") { /// Only one window
//            ContentView(vm: vm)
//        }
        
        MenuBarExtra(
            "Screenshots",
            systemImage: "photo.badge.plus",
            isInserted: $menuBarExtraIsInserted
        ) {
            MenubarContentView(vm: vm)
        }
        .menuBarExtraStyle(.window)
        
        Settings {
            SettingsView()
        }
    }
}
