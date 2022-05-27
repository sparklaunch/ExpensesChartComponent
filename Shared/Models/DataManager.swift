//
//  Data.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import Foundation

struct Bar: Codable {
    let day: String
    let amount: Double
}

class DataManager: ObservableObject {
    var data: Data? = nil
    @Published var decodedData: [Bar]? = nil
    func loadData() {
        guard let url = Bundle.main.url(forResource: "Data", withExtension: "json") else {
            fatalError("Couldn't load Data.json")
        }
        do {
            data = try Data(contentsOf: url)
        } catch let error {
            fatalError(error.localizedDescription)
        }
    }
    func decodeData() {
        let decoder = JSONDecoder()
        do {
            if let data = data {
                decodedData = try decoder.decode([Bar].self, from: data)
            }
        } catch let error {
            fatalError(error.localizedDescription)
        }
    }
    func fetchData() {
        loadData()
        decodeData()
    }
}
