//
//  MarketDataModel.swift
//  Crypto SwiftUI
//
//  Created by Grzegorz Wiczkowski on 22/02/2023.
//

import Foundation

// JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSONResponse:
 {
   "data": {
     "active_cryptocurrencies": 12302,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 666,
     "total_market_cap": {
       "btc": 47656751.48151257,
       "eth": 702496972.9637115,
       "ltc": 12196890517.040474,
       "bch": 8149961442.00733,
       "bnb": 3694239756.6351347,
       "eos": 953261483078.9999,
       "xrp": 2911551298283.865,
       "xlm": 12341786489005.506,
       "link": 151719535119.93854,
       "dot": 161695024830.1168,
       "yfi": 138842992.89074892,
       "usd": 1132156597491.004,
       "aed": 4158411182584.459,
       "ars": 220707115362467.47,
       "aud": 1659062277963.3157,
       "bdt": 121244702625222.86,
       "bhd": 426851341169.0462,
       "bmd": 1132156597491.004,
       "brl": 5857212157119.721,
       "cad": 1531934677944.2495,
       "chf": 1052153883685.9017,
       "clp": 906144175933875.8,
       "cny": 7803049701227.496,
       "czk": 25234015715348.375,
       "dkk": 7927926573930.775,
       "eur": 1065048015174.727,
       "gbp": 937498120744.7905,
       "hkd": 8882599510259.506,
       "huf": 406039626488964.56,
       "idr": 1.720026285719923e+16,
       "ils": 4112213532623.84,
       "inr": 93773814926502.3,
       "jpy": 152551470312219.5,
       "krw": 1472419133676830.2,
       "kwd": 347187142186.59143,
       "lkr": 413147979241189.0,
       "mmk": 2.376937557644155e+15,
       "mxn": 20769666384050.324,
       "myr": 5028473527756.298,
       "ngn": 521324148446684.2,
       "nok": 11680380365352.887,
       "nzd": 1815486694255.662,
       "php": 62288991680759.984,
       "pkr": 296277782528313.7,
       "pln": 5056947266183.199,
       "rub": 85413561902097.02,
       "sar": 4247171127671.1553,
       "sek": 11774921102026.332,
       "sgd": 1516255441225.5964,
       "thb": 39127328612819.3,
       "try": 21369908640281.684,
       "twd": 34547192494139.277,
       "uah": 41599407261476.71,
       "vef": 113362840106.7745,
       "vnd": 2.6946504418993176e+16,
       "zar": 20604189243604.453,
       "xdr": 848478911797.27,
       "xag": 52250170452.37311,
       "xau": 617591423.931342,
       "bits": 47656751481512.57,
       "sats": 4.765675148151257e+15
     },
     "total_volume": {
       "btc": 3603504.3500061417,
       "eth": 53118410.702477366,
       "ltc": 922252286.7878244,
       "bch": 616248917.4288055,
       "bnb": 279335217.3440636,
       "eos": 72079648616.02138,
       "xrp": 220153229972.08496,
       "xlm": 933208410506.7672,
       "link": 11472078725.250448,
       "dot": 12226362629.347723,
       "yfi": 10498435.442956591,
       "usd": 85606574034.52333,
       "aed": 314432946428.8043,
       "ars": 16688486427667.78,
       "aud": 125447873590.19037,
       "bdt": 9167763218075.828,
       "bhd": 32275818575.36619,
       "bmd": 85606574034.52333,
       "brl": 442885610767.60736,
       "cad": 115835282605.0021,
       "chf": 79557271086.94794,
       "clp": 68516933660011.516,
       "cny": 590017629560.7416,
       "czk": 1908037845039.7722,
       "dkk": 599460034676.7512,
       "eur": 80532244358.62714,
       "gbp": 70887722121.32352,
       "hkd": 671646408526.1785,
       "huf": 30702167370670.598,
       "idr": 1300575891145471.8,
       "ils": 310939770175.3257,
       "inr": 7090587157108.445,
       "jpy": 11534984441462.988,
       "krw": 111335090796002.58,
       "kwd": 26252111993.426937,
       "lkr": 31239656378370.918,
       "mmk": 179729095299045.22,
       "mxn": 1570471776535.9155,
       "myr": 380221598574.33563,
       "ngn": 39419259145677.08,
       "nok": 883197031853.9965,
       "nzd": 137275705891.67043,
       "php": 4709902490231.399,
       "pkr": 22402665833509.86,
       "pln": 382374603911.30414,
       "rub": 6458437310464.297,
       "sar": 321144416226.53687,
       "sek": 890345608818.7463,
       "sgd": 114649717161.19797,
       "thb": 2958562941813.404,
       "try": 1615858327531.2407,
       "twd": 2612241803376.465,
       "uah": 3145486009103.2505,
       "vef": 8571786258.076842,
       "vnd": 2037525489519994.8,
       "zar": 1557959434068.4565,
       "xdr": 64156648418.13718,
       "xag": 3950829854.3330126,
       "xau": 46698386.13583243,
       "bits": 3603504350006.1416,
       "sats": 360350435000614.2
     },
     "market_cap_percentage": {
       "btc": 40.49565150802737,
       "eth": 17.150678598805673,
       "usdt": 6.228202409748597,
       "bnb": 4.274145797734581,
       "usdc": 3.734665922153778,
       "xrp": 1.7499348042530147,
       "ada": 1.1774234486276707,
       "matic": 1.0756673464363218,
       "busd": 1.0656975606837666,
       "okb": 1.0619100956372236
     },
     "market_cap_change_percentage_24h_usd": -2.589905397808189,
     "updated_at": 1677089671
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
        
        //        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
        //            return key == "usd"
        //        }) {
        //            return "\(item.value)"
        //        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}
