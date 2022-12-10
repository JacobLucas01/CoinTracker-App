//
//  MarketDataModel.swift
//  CoinTracker
//
//  Created by Jacob Lucas on 11/30/22.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 13149,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 610,
 "total_market_cap": {
 "btc": 52638458.93392374,
 "eth": 695813639.6354928,
 "ltc": 11490575616.847036,
 "bch": 7981603838.83346,
 "bnb": 3004587150.6834435,
 "eos": 950873959677.6091,
 "xrp": 2196617279341.7913,
 "xlm": 10006452301277.633,
 "link": 117205790481.46118,
 "dot": 165256770435.97202,
 "yfi": 133750524.7757086,
 "usd": 905693481973.027,
 "aed": 3326611253593.451,
 "ars": 151521794979301.97,
 "aud": 1332685391129.6555,
 "bdt": 92041947834607.97,
 "bhd": 341408403577.58844,
 "bmd": 905693481973.027,
 "brl": 4697198105556.713,
 "cad": 1214962446649.3237,
 "chf": 855533459860.9178,
 "clp": 808654894748159.1,
 "cny": 6411494728235.26,
 "czk": 21164296911274.19,
 "dkk": 6466144272937.494,
 "eur": 869396004295.9956,
 "gbp": 750082662061.3114,
 "hkd": 7071038835677.655,
 "huf": 355883115294068.4,
 "idr": 14158660919010244,
 "ils": 3124642512806.948,
 "inr": 73637451119410.44,
 "jpy": 124843959482348.92,
 "krw": 1183542128372711,
 "kwd": 278512519721.97156,
 "lkr": 333669451121001.9,
 "mmk": 1901409837527287.2,
 "mxn": 17454524784584.193,
 "myr": 4055514273578.8237,
 "ngn": 402044479852319.56,
 "nok": 8913352514952.652,
 "nzd": 1435558585279.5635,
 "php": 51153565144756.18,
 "pkr": 203254042106042.78,
 "pln": 4058870773623.016,
 "rub": 55269948360178.18,
 "sar": 3405070574243.2886,
 "sek": 9495919016281.707,
 "sgd": 1231702379276.6265,
 "thb": 31789841217253.297,
 "try": 16882640032181.496,
 "twd": 27888927009660.26,
 "uah": 33432545487262.297,
 "vef": 90687088349.95952,
 "vnd": 22321474450014700,
 "zar": 15591196299446.98,
 "xdr": 688934766625.9039,
 "xag": 40699120828.617516,
 "xau": 511807386.6629581,
 "bits": 52638458933923.74,
 "sats": 5263845893392374
 },
 "total_volume": {
 "btc": 3633555.6507700626,
 "eth": 48030995.46197083,
 "ltc": 793177589.328849,
 "bch": 550958411.7423843,
 "bnb": 207402246.20369893,
 "eos": 65637435428.98467,
 "xrp": 151629270491.19394,
 "xlm": 690730732620.9785,
 "link": 8090543890.000239,
 "dot": 11407432592.19267,
 "yfi": 9232602.643293435,
 "usd": 62518693288.869026,
 "aed": 229631097931.323,
 "ars": 10459327372273.166,
 "aud": 91993318795.98613,
 "bdt": 6353520722978.231,
 "bhd": 23566921584.7855,
 "bmd": 62518693288.869026,
 "brl": 324240699004.0616,
 "cad": 83867076523.60593,
 "chf": 59056220498.4518,
 "clp": 55820261873992.89,
 "cny": 442576081661.23303,
 "czk": 1460940388339.8105,
 "dkk": 446348459614.2821,
 "eur": 60013131617.93114,
 "gbp": 51777106520.13515,
 "hkd": 488103444488.05304,
 "huf": 24566089714245.836,
 "idr": 977351606250225.8,
 "ils": 215689491846.59848,
 "inr": 5083085296230.068,
 "jpy": 8617795498364.216,
 "krw": 81698178016028.17,
 "kwd": 19225310929.33999,
 "lkr": 23032713042225.973,
 "mmk": 131251533565024.6,
 "mxn": 1204860257063.085,
 "myr": 279946204808.89795,
 "ngn": 27752541035862.97,
 "nok": 615275656885.5267,
 "nzd": 99094504573.20242,
 "php": 3531055609399.247,
 "pkr": 14030328550524.998,
 "pln": 280177899086.2265,
 "rub": 3815203508028.025,
 "sar": 235047029812.24414,
 "sek": 655489368413.6455,
 "sgd": 85022609531.66377,
 "thb": 2194406134439.3062,
 "try": 1165383891003.613,
 "twd": 1925131745537.4285,
 "uah": 2307799601948.0703,
 "vef": 6259996759.014478,
 "vnd": 1540818657384746.2,
 "zar": 1076237423425.2299,
 "xdr": 47556156942.73726,
 "xag": 2809400644.7611127,
 "xau": 35329313.57753992,
 "bits": 3633555650770.0625,
 "sats": 363355565077006.25
 },
 "market_cap_percentage": {
 "btc": 36.515269233333605,
 "eth": 17.37439515605334,
 "usdt": 7.265901345075168,
 "bnb": 5.453400601030939,
 "usdc": 4.786875809122438,
 "busd": 2.478551601681306,
 "xrp": 2.297890539051917,
 "doge": 1.6389108975745132,
 "ada": 1.2441707410722618,
 "matic": 0.9162055830584434
 },
 "market_cap_change_percentage_24h_usd": 4.085825325404863,
 "updated_at": 1669849697
 }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
