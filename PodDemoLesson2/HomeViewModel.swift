//
//  HomeViewModel.swift
//  PodDemoLesson2
//
//  Created by Aykhan Hajiyev on 05.03.23.
//

import Foundation
import SwiftMessages

protocol HomeViewModelProtocol {
    var items: [String] { get }
    
    func fetchData()
    func didSelectItemAt(indexPath: IndexPath)
}

final class HomeViewModel: HomeViewModelProtocol {
    
    var items: [String] = []
    
    func fetchData() {
        self.items = ["First line", "Second Line", "Third Line", "Fourth Line", "Fifth line"]
    }
    
    func didSelectItemAt(indexPath: IndexPath) {
//        let view = MessageView.viewFromNib(layout: .cardView)
//        view.configureTheme(.success)
//
//        view.configureContent(title: "Message", body: items[indexPath.row], iconImage: nil, iconText: nil, buttonImage: nil, buttonTitle: nil, buttonTapHandler: nil)
//        view.button?.isHidden = true
//
//        // Show the message.
//        SwiftMessages.show(view: view)
    }
    
}
