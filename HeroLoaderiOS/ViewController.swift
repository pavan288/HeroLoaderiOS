//
//  ViewController.swift
//  HeroLoaderiOS
//
//  Created by Pavan Powani on 11/04/22.
//

//import HeroLoader
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
//    var viewModel: ViewModel?
//
//    var presentableHeros = [PresentableHeroStat]()

    override func viewDidLoad() {
        super.viewDidLoad()
//        setupTableView()
//        viewModel = ViewModel(api: URLSessionAPI(), onHeroLoad: refreshHeroTable)
//        viewModel?.getHeroStats()
    }

//    func refreshHeroTable(_ heroes: [HeroStatsAPI]?) -> Void {
//        for hero in heroes ?? [] {
//            self.presentableHeros.append(hero.asPresentableHeroStat())
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
//        }
//
//    }
//
//    func setupTableView() {
//        tableView.dataSource = self
//        tableView.delegate = self
//    }
//}
//
//extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return presentableHeros.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellData = presentableHeros[indexPath.row]
//        let cell = UITableViewCell()
//        cell.imageView?.image = UIImage(data: cellData.imageData)
//        cell.textLabel?.text = cellData.name
//        return cell
//    }
}


