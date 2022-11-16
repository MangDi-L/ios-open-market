////
////  JsonDecoder+Extension.swift
////  OpenMarket
////
////  Created by 서현웅 on 2022/11/15.
////
//
//import Foundation
//import UIKit
//
//extension JSONDecoder {
//    func decodeData<T: Decodable>(_ data: String) -> T? {
//        guard let dataAsset: NSDataAsset = NSDataAsset(name: data) else {
//            return nil
//        }
//        do {
//            return try JSONDecoder().decode(T.self, from: dataAsset.data)
//        } catch {
//            print(error)
//            print(error.localizedDescription)
//            return nil
//        }
//    }
//
//    func decodeData<T: Decodable>(_ data: Data) -> T? {
//        do {
//            return try JSONDecoder().decode(T.self, from: data)
//        } catch {
//            print(error)
//            return nil
//        }
//    }
//}
//
///*
// 1. 제네릭을 활용한 이유 ?
// - T 는 타입파라미터로 반환값의 타입을 타입의 제한이 없게 반환해주기 위해서 활용했음.
//
// 2. <T:Decodable>로 제한한 이유 ?
// - JSONDecoder().decode( 파라미터 type: Decodable.protocol, from: 파일명)
// - 위의 파라미터에서 Decodable을 준수하는 타입을 넣어줘야하므로, T(타입파라미터)는 Decodable를 준수하는 걸로 제한해줘야함.
//
// 3. 17번줄, T 만 해주면되지 왜 .self가 붙냐?
// https://sujinnaljin.medium.com/swift-self-type-protocol-self%EA%B0%80-%EB%AD%94%EB%94%94%EC%9A%94-7839f6aacd4
//  - 링크에 답이 있는데 정확히 모르겠다.
//  - String.self 를 봤을 때, metatype의 value는 .self 로 접근해야한다.
//
// */
