//
//  Keyboardshortcuts+Global.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//


import Foundation
import KeyboardShortcuts

extension KeyboardShortcuts.Name {
    
    
    static let screenshotCapture = Self("screenshotCapture", default: .init(.three, modifiers: [.option, .command]))
    static let screenshotCaptureWindow = Self("screenshotCaptureWindow", default: .init(.four, modifiers: [.option, .command]))
    static let screenshotCaptureFull = Self("screenshotCaptureFull", default: .init(.five, modifiers: [.option, .command]))
    
}
