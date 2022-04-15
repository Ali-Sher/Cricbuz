//
//  ApiUrls.swift
//  Cricbuzz
//
//  Created by Ali Sher on 30/03/2022.
//

import UIKit

class ApiUrls: NSObject {
    
    public static var BaseDomain3 = GlobalVariables.BaseURL
        
    // MARK: Home Apis
    
    public static var seriesListApi = BaseDomain3 + "series/list"
    public static var seriesMatchesApi = BaseDomain3 + "series/get-matches"
    
    //MARK: MAtch List
    
    public static var matchesListApi = BaseDomain3 + "matches/list"
    
    //MARK: Rankings
    
    public static var rankingListApi = BaseDomain3 + "stats/get-icc-rankings"
    
    
    // MARK: News Apis
    public static var NewsListApi = BaseDomain3 + "news/list"
    
    //public static var scheduleListApi = BaseDomain3 + "series/list"
    
}
