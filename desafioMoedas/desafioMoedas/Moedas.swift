//
//  moedas.swift
//  desafioMoedas
//
//  Created by Student on 21/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
import UIKit

struct Moedas: Codable {
    let data: [Moeda]
    let timestamp: Double
}

struct Moeda: Codable {
    let id: String?
    let rank: String?
    let symbol: String?
    let name: String?
    let supply: String?
    let maxSupply: String?
    let marketCapUSsd: String?
    let volumeUsd24Hr: String?
    let priceUsd: String?
    let changePersent24h: String?
    let vwap24Hr: String?
    let explorer: String?
}
