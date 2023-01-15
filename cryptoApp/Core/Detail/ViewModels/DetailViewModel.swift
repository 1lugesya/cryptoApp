//
//  DetailViewModel.swift
//  cryptoApp
//
//  Created by Ayşegül Sarı on 15.01.2023.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    @Published var overviewStatistics: [StatisticModel] = []
    @Published var additionalStatistics: [StatisticModel] = []

    
    @Published var coin: CoinModel
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init (coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .combineLatest($coin)
            .map(mapDataToStatistics)
            .sink { [weak self] returnedArrays in
                self?.overviewStatistics = returnedArrays.overview
                self?.additionalStatistics = returnedArrays.additional

                
            }
            .store(in: &cancellables)
        
    }
    
    private func mapDataToStatistics(coinDetailModel: CoinDetailModel?, CoinModel: CoinModel ) -> (overview: [StatisticModel], additional: [StatisticModel]) {
        
        let overviewArray = createOverviewArray(CoinModel: CoinModel)
        let additionalArray = createAdditionalArray(coinDetailModel: coinDetailModel, CoinModel: CoinModel)
       
        return(overviewArray, additionalArray)
        
    }
    
    private func createOverviewArray(CoinModel: CoinModel ) -> [StatisticModel] {
        let price = CoinModel.currentPrice.asCurrencyWith6Decimals()
        let pricePercentChange = CoinModel.priceChangePercentage24H
        let priceStat = StatisticModel(title: "Current Price", value: price, percentageChange: pricePercentChange)
        
        let marketCap = "$" + (CoinModel.marketCap?.formattedWithAbbreviations() ?? "")
        let marketCapPercentChange = CoinModel.marketCapChangePercentage24H
        let marketCapStat = StatisticModel(title: "Market Capitalization", value: marketCap, percentageChange: marketCapPercentChange)
        
        let rank = "\(CoinModel.rank)"
        let rankStat = StatisticModel(title: "Rank", value: rank)
        
        let volume = "$" + (CoinModel.totalVolume?.formattedWithAbbreviations() ?? "")
        let volumeStat = StatisticModel(title: "Volume", value: volume)
        
        let overviewArray: [StatisticModel] = [
        priceStat, marketCapStat, rankStat, volumeStat
            
        ]
        return overviewArray
    }
    
    private func createAdditionalArray(coinDetailModel: CoinDetailModel?, CoinModel: CoinModel) -> [StatisticModel] {
        let high = CoinModel.high24H?.asCurrencyWith6Decimals() ?? "n/a"
        let highStat = StatisticModel(title: "24h High", value: high)
        
        let low = CoinModel.low24H?.asCurrencyWith6Decimals() ?? "n/a"
        let lowStat = StatisticModel(title: "24h Low", value: low)
        
        let priceChange = CoinModel.priceChangePercentage24H?.asCurrencyWith6Decimals() ?? "n/a"
        let pricePercentChange = CoinModel.priceChangePercentage24H
        let priceChangeStat = StatisticModel(title: "24h Price Change", value: priceChange, percentageChange: pricePercentChange)
        
        let marketCapChange = "$" + (CoinModel.marketCapChangePercentage24H?.formattedWithAbbreviations() ?? "")
        let marketCapPercentChange = CoinModel.marketCapChangePercentage24H
        let marketCapChangeStat = StatisticModel(title: "25h Market Cap Change", value: marketCapChange, percentageChange: marketCapPercentChange)
        
        let blockTime = coinDetailModel?.blockTimeInMinutes ?? 0
        let blockTimeString = blockTime == 0 ? "n/a" : "\(blockTime)"
        let blockStat = StatisticModel(title: "Block Time", value: blockTimeString)
        
        let hashing = coinDetailModel?.hashingAlgorithm ?? "n/a"
        let hashingStat = StatisticModel(title: "Hashing Algorithm", value: hashing)
        
        let additionalArray: [StatisticModel] = [
        highStat, lowStat, priceChangeStat, marketCapChangeStat, blockStat, hashingStat
        
        ]
        return additionalArray
    }
    
}
