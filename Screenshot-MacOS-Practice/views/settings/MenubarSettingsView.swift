//
//  MenubarSettingsView.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import SwiftUI

struct MenubarSettingsView: View {
    
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
    var body: some View {
        Form {
            Toggle("show menu bar extra", isOn: $menuBarExtraIsInserted)
        }
    }
}
