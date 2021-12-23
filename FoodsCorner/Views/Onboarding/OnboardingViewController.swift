//
//  OnboardingViewController.swift
//  FoodsCorner
//
//  Created by Chukwuemeka Jennifer on 16/12/2021.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectioniew: UICollectionView!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [onboardingSlide] = []
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                NextButton.setTitle("Get Started", for: .normal)
            } else {
                NextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        slides = [ onboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide2") ),
             onboardingSlide(title: "World-Class", description: "Our dishes are prepared by only the best", image: #imageLiteral(resourceName: "slide1") ),
                   onboardingSlide(title: "Instant World-Wide Delivery", description: " Your orders will be delivered instantly irrespective of your location around the world ", image: #imageLiteral(resourceName: "slide3") )
        ]
        pageControl.numberOfPages = slides.count
        
        collectioniew.delegate = self
        collectioniew.dataSource = self

       
    }
    
    @IBAction func NextButtonClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            UserDefaults.standard.hasOnboarded = true
            present(controller, animated: true, completion: nil)
            
        } else {
            currentPage += 1
            
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectioniew.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            
        }
        
        
    }
    
   

}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: onboardingCollectionViewCell.identifier, for: indexPath) as! onboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x/width)
        
    }
    
    
}
