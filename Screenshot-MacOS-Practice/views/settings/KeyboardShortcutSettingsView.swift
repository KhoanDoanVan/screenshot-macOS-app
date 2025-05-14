//
//  KeyboardShortcutSettingsView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI
import KeyboardShortcuts


struct KeyboardShortcutSettingsView: View {
    var body: some View {
        
        Form {
            KeyboardShortcuts.Recorder("Screenshot Area: ", name: .screenshotCapture)
            KeyboardShortcuts.Recorder("Screenshot Window: ", name: .screenshotCaptureWindow)
            KeyboardShortcuts.Recorder("Screenshot Full Screen: ", name: .screenshotCaptureFull)
        }
        .padding()
        
    }
}

#Preview {
    KeyboardShortcutSettingsView()
}
