//
//  ViewController.swift
//  homeapp
//
//  Created by Emanuele Silvestri on 26/09/18.
//  Copyright © 2018 iOSFoundation. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate,CLLocationManagerDelegate {

    @IBOutlet var userButton: UIBarButtonItem!
    var userPosition: CLLocationCoordinate2D!
    var locationManager: CLLocationManager!
    @IBOutlet weak var map : MKMapView! = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu()
        
        map.delegate = self
        userPosition = CLLocationCoordinate2D(latitude: 51.5085300, longitude:-0.1257400)
        let span = MKCoordinateSpanMake(180, 320)
        let region = MKCoordinateRegionMake(userPosition, span)
        map.setRegion(region, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sideMenu(){
        if revealViewController() != nil {
            userButton.target = revealViewController()
            userButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 275
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            }
    }
    @IBAction func showPopup(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopupViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
}
