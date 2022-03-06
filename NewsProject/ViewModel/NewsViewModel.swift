//
//  NewViewModel.swift
//  NewsProject
//
//  Created by Macbook on 6.03.2022.
//

import Foundation
//MVVM ViewModel View ile Model arasında köprü görevi görür.
struct NewsTableViewModel{
    let newsList : [News]
    func numberOfRowsInSection() -> Int{
        return self.newsList.count
    }
    func newsAtIndexPath(_ index : Int) -> NewsViewModel{
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
    //Diziden tekile gönderiyorum haberlistemi
}
struct NewsViewModel {
    let news : News
    var title : String{
        return self.news.title
    }
    var story : String{
        return self.news.story
    }
}
