//
//  String+Extension.swift
//
//
//  Created by OpenURL on 08.04.2023.
//
import UIKit

public extension String {
    
    func decode64ToString() -> String {
        let decodedData = NSData(
            base64Encoded: self,
            options: NSData.Base64DecodingOptions(rawValue: 0))! as Data
        guard let decodedString = NSString(
            data: decodedData,
            encoding: String.Encoding.utf8.rawValue) as String? else {
            return "Error"
        }
        return decodedString
    }
    
    func decodedUrl() -> String {
        if let url = self.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) {
            return url
        }
        return ""
    }
    
    func removingPrecent() -> String?{
        return self.removingPercentEncoding
    }
    
    func json() -> String {
        return "{" + self + "}"
    }
}
