//
//  ApiUrl.swift.swift
//  OpenMarket
//
//  Created by Mangdi on 2022/11/19.
//

import Foundation

enum ApiUrl {
    enum Path {
        static let healthChecker = "https://openmarket.yagom-academy.kr/healthChecker"
        static let products = "https://openmarket.yagom-academy.kr/api/products"
        static let detailProduct = "https://openmarket.yagom-academy.kr/api/products/"
    }
    
    enum Query {
        static let pageNumber = "?page_no="
        static let itemsPerPage = "&items_per_page="
    }
}