//
//  HomeDetailsViewController.swift
//  PodDemoLesson2
//
//  Created by Aykhan Hajiyev on 05.03.23.
//

import Hero
import UIKit

final class HomeDetailsViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: nil)
        let progress = translation.y / 2 / view.bounds.height
        switch sender.state {
        case .began:
            hero.dismissViewController()
        case .changed:
            Hero.shared.update(progress)
            let currentPosition = CGPoint(x: translation.x + image.center.x, y: translation.y + image.center.y)
            Hero.shared.apply(modifiers: [.position(currentPosition)], to: image)
        default:
            if progress > 0.1 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
        }
    }
}
