//
//  ViewController.swift
//  PodDemoLesson2
//
//  Created by Aykhan Hajiyev on 05.03.23.
//

import UIKit
import TableViewReloadAnimation

final class HomeViewController: UIViewController {
    
    private let viewModel: HomeViewModelProtocol = HomeViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.fetchData()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData(
            with: .spring(duration: 0.45, damping: 0.65, velocity: 1, direction: .right(useCellsFrame: false),
            constantDelay: 0))
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell {
            let item = viewModel.items[indexPath.row]
            
            cell.configure(item)
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        viewModel.didSelectItemAt(indexPath: indexPath)
        let detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeDetailsViewController")
        detailsVC.modalPresentationStyle = .fullScreen
        present(detailsVC, animated: true)
    }
}
