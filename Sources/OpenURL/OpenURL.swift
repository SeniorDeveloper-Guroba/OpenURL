//
//  OpenURL.swift
//  
//
//  Created by OpenURL on 08.04.2023.
//
import UIKit

public struct OpenURL {
    
    public func open(with type: URLType){
        var openURL: URL?
        switch type {
            case .string(var string, let isDeletePrecent):
                if isDeletePrecent {
                    string = string.removingPrecent() ?? ""
                }
                openURL = URL(string: string)
                
            case .url(let url, let isDeletePrecent):
                if isDeletePrecent {
                    let string = url.absoluteString.removingPrecent() ?? ""
                    openURL = URL(string: string)
                }
                openURL = url
                
            case .urlList(let urlList):
                openURL = URL(string: urlList.rawValue)
        }
        guard let openURL = openURL else { return }
        guard UIApplication.shared.canOpenURL(openURL) else { return }
        UIApplication.shared.open((openURL), options: [:], completionHandler: nil)
        print(openURL.absoluteString)
    }
    
    public enum URLType {
        case string(String, isDeletePrecent: Bool)
        case url(URL, isDeletePrecent: Bool)
        case urlList(URLList)
    }
    
    public enum URLList: String {
        case telegramApp = "https://itunes.apple.com/ru/app/telegram-messenger/id686449807?mt=8"
    }
    
    public init(){}
}
