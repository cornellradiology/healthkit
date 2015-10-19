////
////  WorkoutsTableViewController.swift
////  HKTutorial
////
////  Created by ernesto on 18/10/14.
////  Copyright (c) 2014 raywenderlich. All rights reserved.
////
//
//import UIKit
//import HealthKit
//
//public enum DistanceUnit:Int {
//  case Miles=0, Kilometers=1
//}
//
//public class WorkoutsTableViewController: UITableViewController {
//  
//  let kAddWorkoutReturnOKSegue = "addWorkoutOKSegue"
//  let kAddWorkoutSegue  = "addWorkoutSegue"
//  
//  var distanceUnit = DistanceUnit.Miles
//  var healthManager:HealthManager?
//  
//  // MARK: - Formatters
//  lazy var dateFormatter:NSDateFormatter = {
//    
//    let formatter = NSDateFormatter()
//    formatter.timeStyle = .ShortStyle
//    formatter.dateStyle = .MediumStyle
//    return formatter;
//    
//    }()
//  
//  let durationFormatter = NSDateComponentsFormatter()
//  let energyFormatter = NSEnergyFormatter()
//  let distanceFormatter = NSLengthFormatter()
//  
//  // MARK: - Class Implementation
//  
//  public override func viewDidLoad() {
//    super.viewDidLoad()
//    
//    self.clearsSelectionOnViewWillAppear = false
//    
//  }
//  
//  public override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//    
//  }
//  
//  public override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    
//    if( segue.identifier == kAddWorkoutSegue )
//    {
//      
//      if let addViewController:AddWorkoutTableViewController = (segue.destinationViewController as! UINavigationController).topViewController as? AddWorkoutTableViewController {
//        addViewController.distanceUnit = distanceUnit
//      }
//    }
//    
//  }
//  
//  @IBAction func unitsChanged(sender:UISegmentedControl) {
//    
//    distanceUnit  = DistanceUnit(rawValue: sender.selectedSegmentIndex)!
//    tableView.reloadData()
//    
//  }
//  
//  // MARK: - Segues
//  @IBAction func unwindToSegue (segue : UIStoryboardSegue) {
//    
//    if( segue.identifier == kAddWorkoutReturnOKSegue )
//    {
//      print("TODO: Save workout in Health Store")
//    }
//    
//  }
//  
//}