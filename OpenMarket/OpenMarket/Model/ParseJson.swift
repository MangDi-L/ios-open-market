//
//  ParseJson.swift
//  OpenMarket
//
//  Created by 서현웅 on 2022/11/16.
//

import Foundation
import UIKit

struct ParseJson {
    let jsonDecoder: JSONDecoder = JSONDecoder()
    
    func decodeJsonFile(fileName: String) -> Products? {
        guard let dataAsset: NSDataAsset = NSDataAsset(name: fileName) else { return nil }
        
        do {
            let productsData: Products = try jsonDecoder.decode(Products.self, from: dataAsset.data)
            return productsData
        } catch {
            print(error)
            print(error.localizedDescription)
            return nil
        }
    }
    
    func decodeURLSession(data: Data) -> Products? {
        do {
            let productsData: Products = try jsonDecoder.decode(Products.self, from: data)
            print("디코딩성공")
            return productsData
        } catch {
            print(error)
            print(error.localizedDescription)
            return nil
        }
    }
    
    func decodeParsingTarget1(data: Data) -> ParsingTarget1? {
        do {
            let productsData: ParsingTarget1 = try jsonDecoder.decode(ParsingTarget1.self, from: data)
            print("디코딩성공")
            return productsData
        } catch {
            print(error)
            print(error.localizedDescription)
            return nil
        }
    }
    
    
}
