//
//  ScreenCaptureViewModel.swift
//  Screenshot-MacOS-Practice
//
//  Created by Đoàn Văn Khoan on 14/5/25.
//

import Foundation
import SwiftUI
import KeyboardShortcuts


class ScreenCaptureViewModel: ObservableObject {
    
    enum ScreenshotTypes {
        case full
        case window
        case area
        
        var processArguments: [String] {
            switch self {
            case .full:
                ["-c"]
            case .window:
                ["-cw"]
            case .area:
                ["-cs"]
            }
        }
    }
    
    @Published var images = [NSImage]()
    
    init() {
        KeyboardShortcuts.onKeyUp(for: .screenshotCapture) { [self] in
            self.takeScreenshot(for: .area)
        }
        
        KeyboardShortcuts.onKeyUp(for: .screenshotCaptureWindow) { [self] in
            self.takeScreenshot(for: .window)
        }
        
        KeyboardShortcuts.onKeyUp(for: .screenshotCaptureFull) { [self] in
            self.takeScreenshot(for: .full)
        }
    }
    
    
    func takeScreenshot(for type: ScreenshotTypes) {
        let task  = Process()
        task.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        task.arguments = type.processArguments
        
        do {
            try task.run()
            task.waitUntilExit()
            self.getImageFromPasteBoard()
        } catch {
            print("Could not take screenshot: \(error)")
        }
        
    }
    
    private func getImageFromPasteBoard() {
        guard NSPasteboard.general.canReadItem(withDataConformingToTypes: NSImage.imageTypes) else { return }
        
        guard let image = NSImage(pasteboard: NSPasteboard.general) else { return }
        
        self.images.append(image)
    }
    
}
