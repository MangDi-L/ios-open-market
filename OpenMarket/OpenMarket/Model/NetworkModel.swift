import Foundation

/*
 MARK: 네트워킹 절차
 1. URL만들기
 2. URLSession 만들기
 3. URL인스턴스에게 task주기
 4. task시작하기 (task.resume)
 */

enum SetUrl {
    case applicationHealthChekcer
    case viewAllItemList
    case viewDetailItem
    
    var description: String {
        switch self {
        case .applicationHealthChekcer:
            return "https://openmarket.yagom-academy.kr/healthChecker"
        case .viewAllItemList:
            return "https://openmarket.yagom-academy.kr/api/products?page_no=1&items_per_page=100"
        case .viewDetailItem:
            return "https://openmarket.yagom-academy.kr/api/products/32"

        }
    }
}


struct NetworkModel {
    let parseJson: ParseJson = ParseJson()

    func transmit(setUrl: SetUrl) {
        guard let url = URL(string: setUrl.description) else { return }
        let urlSession: URLSession = URLSession(configuration: .default)
        let task = urlSession.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print(error!)
                return
            }
            if let httpResponse = response as? HTTPURLResponse{
                if httpResponse.statusCode == 200{
                    print("OK")
                    return
                }
            }
        }
        task.resume()
    }
    
    func transmit_withTarget1(setUrl: SetUrl) -> ParsingTarget1? {
        guard let url = URL(string: setUrl.description) else { return nil }
        let urlSession: URLSession = URLSession(configuration: .default)
        let task = urlSession.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print(error!)
                return
            }
            if let httpResponse = response as? HTTPURLResponse{
                if httpResponse.statusCode == 200{
                    print("OK")
                    return
                }
            }
             parseJson.decodeURLSession(data: data!)
        }
        task.resume()
    }
    
    
}
