//
//  DetailViewController.swift
//  Project4-ToDoTDD
//
//  Created by jinweizhao on 2019/12/20.
//  Copyright © 2019 JWZ. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var item: ToDoItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let item = item else {
            return
        }
        
        titleLabel.text = item.title
        
        if let location = item.location {
            locationLabel.text = location.name
            
            if let coordinate = location.coordinate {
                
                centerOnMap(with: coordinate)
                
            }
            
        }
        
        
    }
    
    private func centerOnMap(with coordinate: CLLocationCoordinate2D) {
        
        let regionRadius: CLLocationDistance = 1000
        
        let coordinateRegion = MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }

}
