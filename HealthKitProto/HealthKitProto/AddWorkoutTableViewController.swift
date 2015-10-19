////
////  AddWorkoutTableViewController.swift
////  HKTutorial
////
////  Created by ernesto on 18/10/14.
////  Copyright (c) 2014 raywenderlich. All rights reserved.
////
//
//import UIKit
//import DatePickerCell
//
//class AddWorkoutTableViewController: UITableViewController {
//  
//  
//  
//  @IBOutlet var dateCell:DatePickerCell!
//  @IBOutlet var startTimeCell:DatePickerCell!
//  
//  @IBOutlet var durationTimeCell:NumberCell!
//  @IBOutlet var caloriesCell:NumberCell!
//  @IBOutlet var distanceCell:NumberCell!
//  
//  
//  let kSecondsInMinute=60.0
//  let kDefaultWorkoutDuration:NSTimeInterval=(1.0*60.0*60.0) // One hour by default
//  let lengthFormatter = NSLengthFormatter()
//  var distanceUnit = DistanceUnit.Miles
//  
//  func datetimeWithDate(date:NSDate , time:NSDate) -> NSDate? {
//    
//    let currentCalendar = NSCalendar.currentCalendar()
//    let dateComponents = currentCalendar.components([.Day, .Month, .Year], fromDate: date)
//    let hourComponents = currentCalendar.components([.Hour, .Minute], fromDate: time)
//    
//    let dateWithTime = currentCalendar.dateByAddingComponents(hourComponents, toDate:currentCalendar.dateFromComponents(dateComponents)!, options:NSCalendarOptions(rawValue: 0))
//    
//    return dateWithTime;
//    
//  }
//  
//  
//  var startDate:NSDate? {
//    get {
//      
//      return datetimeWithDate(dateCell.date, time: startTimeCell.date )
//    }
//  }
//  
//  var endDate:NSDate? {
//    get {
//      let endDate = startDate?.dateByAddingTimeInterval(durationInMinutes*kSecondsInMinute)
//      return endDate
//    }
//  }
//  
//  var distance:Double {
//    get {
//      return distanceCell.doubleValue
//    }
//  }
//  
//  
//  var durationInMinutes:Double {
//    get {
//      return durationTimeCell.doubleValue
//    }
//  }
//  
//  var energyBurned:Double? {
//    return caloriesCell.doubleValue
//    
//  }
//  
//  func updateOKButtonStatus() {
//    
//    self.navigationItem.rightBarButtonItem?.enabled = ( distanceCell.doubleValue > 0 && caloriesCell.doubleValue > 0 && distanceCell.doubleValue > 0);
//  }
//  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    
//    dateCell.inputMode = .Date
//    startTimeCell.inputMode = .Time
//    
//    
//    
//  }
//  
//  override func viewWillAppear(animated: Bool) {
//    super.viewWillAppear(animated)
//    
//    let endDate = NSDate()
//    let startDate = endDate.dateByAddingTimeInterval(-kDefaultWorkoutDuration)
//    
//    dateCell.date = startDate;
//    startTimeCell.date = startDate
//    
//    let formatter = NSLengthFormatter()
//    formatter.unitStyle = .Long
//    let unit = distanceUnit == DistanceUnit.Kilometers ? NSLengthFormatterUnit.Kilometer : NSLengthFormatterUnit.Mile
//    let unitString = formatter.unitStringFromValue(2.0, unit: unit)
//    distanceCell.textLabel?.text = "Distance (" + unitString.capitalizedString + ")"
//    
//    self.navigationItem.rightBarButtonItem?.enabled  = false
//    
//    
//  }
//  
//  override func didReceiveMemoryWarning() {
//    super.didReceiveMemoryWarning()
//  }
//  
//  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//    
//    tableView.deselectRowAtIndexPath(indexPath, animated: true)
//  }
//  
//  
//  @IBAction func textFieldValueChanged(sender:AnyObject ) {
//    updateOKButtonStatus()
//  }
//  
//  
//  
//}
//
