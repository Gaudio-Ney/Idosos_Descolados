//
//  Perfil_ViewController.swift
//  Idosos_Descolados_XCode
//
//  Created by joana veiga salinas vega on 06/04/20.
//  Copyright © 2020 Gáudio Ney. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Perfil_ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var adress: UITextField!
    
    @IBOutlet weak var profession: UITextField!
    
    @IBOutlet weak var myinterest: UITextField!
    
    @IBOutlet weak var regularyExercise: UITextField!
    
    @IBOutlet weak var history: UIButton!

    @IBOutlet weak var closeMap: UIButton!
    
    @IBOutlet weak var saveChanges: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    let locationManager =  CLLocationManager()
    
    let regionInMeters: Double  = 10000

    override func viewDidLoad() {
        
        super.viewDidLoad()
        checkLocationServices()
        
        //map01.delegate = self
        // Do any additional setup after
        //loading the view.
        //var PUC_Location = CLLocationCoordinate2DMake(-22.979169, -43.233248)
        
        //var map01Span = MKCoordinateSpan (latitudeDelta: 0.01 , longitudeDelta: 0.01)
        
        //var map01Region = MKCoordinateRegion (center: PUC_Location, span: map01Span)
        
        //self.map01.setRegion(map01Region, animated: true)
    }
    
    func setupLocationManager () {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    //func centerViewOnUserLocation () {
        //if let location = locationManager.location?.coordinate {
            //let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
                //map.setRegion(region, animated: true )
        //}
        // func for Zoom in the user location
        // lat & long - how much the zoom is
    //}
    
    
    
    
    
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            // setup our location manager
            setupLocationManager()
            checkLocationAuthorization()
        } else {
         // import to show the alart - letting the user know they have to turn this ON, because its important to show for the user
            // why its not working with his/her device
            
        }
        
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse: //when your app its open - its when the app its going to  get information
            //do map01 sfuff
            // WHAT WE REALLY WANT !!!
            //map.showsUserLocation = true - its is for the BLUE POINT - but not working now :(
            //map.showsUserLocation =  true
            //centerViewOnUserLocation ()
            //locationManager.startUpdatingLocation()
            break
        case .denied:
            // dont have the permition - if they denied you ONCE they cant pop up again - the user will have to go to settings & do it manually by himself - for us nothing we can do about it
            //SO!! Moment to let the user know how to proceed - interesting to put an alert  - a instruction about how to turn on permissions
            break
        case .notDetermined:
            // the user did not picked allow or not -- so request the permition
                locationManager.requestWhenInUseAuthorization()
        case .restricted:
            // the usr cannot change this accept status, possibly due to active restriotions such as parental controls beijng in place
            // show the allert
            break
        case .authorizedAlways: //gets informations when the app is a background - like tomtom maps 
            break
            
        @unknown default:
            break
        }
    }
     // important the user its worried about privacy - so look out !!
    //MKCoordinateSpanMake
    
   // override func didReceiveMemoryWarning() {
    //    super.didReceiveMemoryWarning()
    //}
    

    

}


//extension Perfil_ViewController: CLLocationManagerDelegate {
    
    //func locationManager (_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //here you can build a history of locations - but in the video we're'foccusing on the LAST location
        //guard let location = locations.last
           // else {
               // return
        //}
       // let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        //let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters )
       // map.setRegion(region, animated: true)
        //}
    
    
    //func locationManager(_ manager:CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //checkLocationAuthorization()
        //
        //}

//}


