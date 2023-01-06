//
//  MarketDataModel.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 5.01.2023.
//

import Foundation

//JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 12775,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 626,
     "total_market_cap": {
       "btc": 50553802.00887936,
       "eth": 681556975.0589668,
       "ltc": 11488257022.367046,
       "bch": 8382144094.298116,
       "bnb": 3316091069.215602,
       "eos": 952978820645.3528,
       "xrp": 2505584911430.715,
       "xlm": 11609389922855.797,
       "link": 148376559231.09436,
       "dot": 186056114065.99316,
       "yfi": 158644629.0776036,
       "usd": 850933408566.125,
       "aed": 3125393316322.526,
       "ars": 152269027923754.88,
       "aud": 1261006727488.2283,
       "bdt": 88251679761714.61,
       "bhd": 320801895029.4295,
       "bmd": 850933408566.125,
       "brl": 4577596271381.479,
       "cad": 1155581183767.3345,
       "chf": 796560465625.5658,
       "clp": 727080050949327.9,
       "cny": 5855953531070.369,
       "czk": 19451954799787.797,
       "dkk": 6011848786186.729,
       "eur": 808324619998.9946,
       "gbp": 714208832211.3542,
       "hkd": 6645817150770.533,
       "huf": 319950614440032.75,
       "idr": 13300275435000510,
       "ils": 3022260187204.31,
       "inr": 70292543819510.09,
       "jpy": 113362766914363.34,
       "krw": 1086155654295947.6,
       "kwd": 261003400675.85342,
       "lkr": 311190785981291.56,
       "mmk": 1787962570308159,
       "mxn": 16476632099400.006,
       "myr": 3737724997126.7075,
       "ngn": 382520095152730.94,
       "nok": 8731565556509.19,
       "nzd": 1366721588568.032,
       "php": 47552285353263.16,
       "pkr": 192880097146264.12,
       "pln": 3787829658089.9,
       "rub": 61798088304497.47,
       "sar": 3198422974245.8955,
       "sek": 9101347178535.703,
       "sgd": 1144970044162.5159,
       "thb": 28982791895762.246,
       "try": 15971594612081.92,
       "twd": 26141526946426.78,
       "uah": 31291148735848.89,
       "vef": 85203962199.726,
       "vnd": 19984349373277348,
       "zar": 14638803142247.049,
       "xdr": 637985621205.6384,
       "xag": 36658177203.6924,
       "xau": 464175665.0387362,
       "bits": 50553802008879.37,
       "sats": 5055380200887936
     },
     "total_volume": {
       "btc": 2223800.4914272632,
       "eth": 29980865.45114051,
       "ltc": 505354505.4335442,
       "bch": 368720361.58309674,
       "bnb": 145870827.8369246,
       "eos": 41920383541.05756,
       "xrp": 110217644092.79636,
       "xlm": 510682994942.3566,
       "link": 6526905044.18321,
       "dot": 8184383002.891265,
       "yfi": 6978584.994321602,
       "usd": 37431529517.97487,
       "aed": 137482264766.5701,
       "ars": 6698130025245.631,
       "aud": 55470157907.98222,
       "bdt": 3882084453092.41,
       "bhd": 14111686628.276543,
       "bmd": 37431529517.97487,
       "brl": 201362913041.94617,
       "cad": 50832615989.88214,
       "chf": 35039729644.835266,
       "clp": 31983370396633.73,
       "cny": 257596299836.79987,
       "czk": 855667920592.6239,
       "dkk": 264453943202.14056,
       "eur": 35557220540.421364,
       "gbp": 31417181081.144733,
       "hkd": 292341443344.3293,
       "huf": 14074239826694.525,
       "idr": 585062999678582.1,
       "ils": 132945563388.9915,
       "inr": 3092083825110.587,
       "jpy": 4986690748391.918,
       "krw": 47778671075334.45,
       "kwd": 11481223322.930367,
       "lkr": 13688905587581.398,
       "mmk": 78650306890992.53,
       "mxn": 724787080371.8444,
       "myr": 164417993407.70477,
       "ngn": 16826595464215.275,
       "nok": 384090988291.72174,
       "nzd": 60120426546.11829,
       "php": 2091767410856.7046,
       "pkr": 8484561749580.436,
       "pln": 166622036728.78223,
       "rub": 2718423020224.4536,
       "sar": 140694750924.39124,
       "sek": 400357233759.05365,
       "sgd": 50365844816.79304,
       "thb": 1274917895382.225,
       "try": 702571093287.6309,
       "twd": 1149934093184.7666,
       "uah": 1376459715609.1697,
       "vef": 3748019050.634819,
       "vnd": 879087312747368.6,
       "zar": 643943211549.5121,
       "xdr": 28064214393.042767,
       "xag": 1612548794.37318,
       "xau": 20418525.03676014,
       "bits": 2223800491427.263,
       "sats": 222380049142726.3
     },
     "market_cap_percentage": {
       "btc": 38.08452427894214,
       "eth": 17.68345733286684,
       "usdt": 7.786251793508538,
       "usdc": 5.1629593723770055,
       "bnb": 4.923917613378266,
       "xrp": 2.019079997118882,
       "busd": 1.9516782476434742,
       "doge": 1.1672021839694167,
       "ada": 1.0944162126981063,
       "matic": 0.8326025659297157
     },
     "market_cap_change_percentage_24h_usd": -0.41495705083459816,
     "updated_at": 1672940113
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
            return item.value.asPercentString()
            
        }
        return ""
    }
}
