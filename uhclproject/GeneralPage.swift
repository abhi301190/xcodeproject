//
//  GeneralPage.swift
//  uhclproject
//
//  Created by Abhishek Kumar on 3/28/16.
//  Copyright © 2016 Abhishek Kumar. All rights reserved.
//

import UIKit


class GeneralPage: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
 /////////////////General part////////////////
    
    @IBOutlet weak var WellDepthBox: UITextField!
    
    @IBOutlet weak var WellIsOffshoreSwitch: UISwitch!
    
    
    
    @IBOutlet weak var PlatformWellSwitch: UISwitch!
    
    
    
    @IBOutlet weak var SubwellSwitch: UISwitch!
    
    
    @IBAction func wellisoffshore(sender: UISwitch)
    {
    if sender.on
    {
        PlatformWellSwitch.enabled = true
        SubwellSwitch.enabled = true
    }
        else
    {
        
        PlatformWellSwitch.enabled = false
        SubwellSwitch.enabled = false
        SubwellSwitch.setOn(false, animated: true)
        PlatformWellSwitch.setOn(false, animated: true)
    }
    }
    
    @IBAction func platformwell(sender: UISwitch)
    {
    if sender.on
    {
    SubwellSwitch.setOn(false, animated: true)
    }
        else
    {
        SubwellSwitch.setOn(false, animated: true)
        }
    }
    
    @IBAction func subsea(sender: UISwitch)
    {
    if sender.on
    {
        PlatformWellSwitch.setOn(false, animated: true)
        }
        else
    {
        PlatformWellSwitch.setOn(true, animated: true)
        }
    }
  /////////////////////////////////////////////

/////////////////////////Kick///////////////////
    
    @IBOutlet weak var kickintensity: UISwitch!
    
    @IBOutlet weak var influxvolume: UISwitch!
    
    @IBOutlet weak var kickmargin: UISwitch!
    
    @IBOutlet weak var kickintensitybox: UITextField!
    
    @IBOutlet weak var influxvolumebox: UITextField!
    
    @IBOutlet weak var kickmarginbox: UITextField!
    
    @IBAction func kickIntensitySwitch(sender: UISwitch)
    {
        if sender.on
        {
            kickintensitybox.enabled = true
        }
    else
        {
            kickintensitybox.enabled = false
            kickintensitybox.text = nil
        }
    }
    
    
    @IBAction func InfluxVolumeswitch(sender: UISwitch)
    {
    
        if sender.on
        {
            influxvolumebox.enabled = true
            
        }
        else
        {
        
            influxvolumebox.enabled = false
            influxvolumebox.text = nil
        }
    }
    
    
    @IBAction func KickMarginSwitch(sender: UISwitch)
    {
    
        if sender.on
        {
            kickmarginbox.enabled = true
        }
        
        else
        {
            kickmarginbox.enabled = false
            kickmarginbox.text = nil
        }
    }

   /////////////////////////////////////////
    
    
    /////////////////////depth/////////////
    
    @IBOutlet weak var MeasuredDepthLabel: UITextField!
    
    @IBOutlet weak var wellDepthlabel: UITextField!
    
    @IBOutlet weak var WellFromDeviation: UISwitch!
    
    @IBOutlet weak var WellisDeviatedSwitch: UISwitch!
    
    @IBOutlet weak var referencepointpicker: UIPickerView!
    
    @IBAction func Wellisdeviated(sender: UISwitch)
    {
    if sender.on
    {
        MeasuredDepthLabel.enabled = true
        WellFromDeviation.enabled = true
        }
        else
    {
        MeasuredDepthLabel.enabled = false
        MeasuredDepthLabel.text = nil
        WellFromDeviation.enabled = false
        WellFromDeviation.setOn(false, animated: true)
        }
    }
    
    @IBAction func WellFromDeviationSwitch(sender: UISwitch)
    {
    if sender.on
    {
        wellDepthlabel.enabled = false
        wellDepthlabel.text = nil
        }
    else{
        wellDepthlabel.enabled = true
        }
    
    }
    
    var depthpicker:[String] = ["Choose","RKB","MGL"]
    
    ///////////////////////////////////////
    
    /////////////Constraints///////////////
    
    
    @IBOutlet weak var OverbalancedMarginSwitch: UISwitch!
    
    @IBOutlet weak var StabilityMarginSwitch: UISwitch!
    
    @IBOutlet weak var DifferentialStickingSwitch: UISwitch!
    
    @IBOutlet weak var RiserMarginSwitch: UISwitch!
    
    
    @IBAction func Overbalancemargin(sender: UISwitch)
    {
    
    }
    
    @IBAction func StabilityMargin(sender: UISwitch)
    {
    
    }
    
    @IBAction func DifferentialSticking(sender: UISwitch)
    {
    
    }
    
    @IBAction func RiserMargin(sender: UISwitch)
    {
    
    }
    
    ////////////////////////////////////////
    
    //////////////////Temperature/////////////////////////
    
    @IBOutlet weak var SurfaceTemperaturebox: UITextField!
    
    
    @IBOutlet weak var MudLinebox: UITextField!
    
    
    
    @IBOutlet weak var TemperatureWellBox: UITextField!
    
    /////////////////////////////////////////////
    
    ///////////////////WELL/////////////////////
    
    var pickerData: [String] = ["Choose","Open Hole", "Cased Hole"]
    
    var firstcasingdata: [String] = ["22 1/4", "33 1/6", " 22 1/6" ]
    
    var lastcasingdata: [String] = ["Choose","22 1/4", "33 1/6", " 22 1/6" ]

    var lastholedata: [String] = ["Choose","22 1/4", "33 1/6", " 22 1/6" ]
    
    
    @IBOutlet weak var firstcasingdepth: UITextField!
    
    
    @IBOutlet weak var complationtype: UIPickerView!
    
    
    @IBOutlet weak var firstcasingdiameter: UIPickerView!
    
    
    @IBOutlet weak var lastcasingdiameter: UIPickerView!
    
    
    @IBOutlet weak var lastholediameter: UIPickerView!
    
    
    
    @IBOutlet weak var lastholelabel: UILabel!
    
    @IBOutlet weak var lastcasinglabel: UILabel!
    ///////////////////////////////////////////
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //////////////////////General////////////
        
        WellIsOffshoreSwitch.setOn(false, animated: true)
        WellIsOffshoreSwitch.tintColor = UIColor.redColor()
        
        
        PlatformWellSwitch.enabled = false
        PlatformWellSwitch.setOn(false, animated: true)
        PlatformWellSwitch.tintColor = UIColor.redColor()
        
        SubwellSwitch.enabled = false
        SubwellSwitch.setOn(false, animated: true)
        SubwellSwitch.tintColor = UIColor.redColor()
        
        
        //////////////////////////////////////////
        
        /////////// kick//////////////////////////
        kickintensity.setOn(false, animated: true)
        kickintensity.tintColor = UIColor.redColor()
        
        influxvolume.setOn(false, animated: true)
        influxvolume.tintColor = UIColor.redColor()
        
        kickmargin.setOn(false, animated: true)
        kickmargin.tintColor = UIColor.redColor()
        
        kickmarginbox.enabled = false
        kickintensitybox.enabled = false
        influxvolumebox.enabled = false
        //////////////////////////////////////////
        
        //////////////////Depth//////////////////
        
        WellisDeviatedSwitch.setOn(false, animated: true)
        WellisDeviatedSwitch.tintColor = UIColor.redColor()
        
        WellFromDeviation.setOn(false, animated: true)
        WellFromDeviation.tintColor = UIColor.redColor()
        
        MeasuredDepthLabel.enabled = false
        
        WellFromDeviation.enabled = false
        
        
        referencepointpicker.delegate = self
        referencepointpicker.dataSource = self
        
        /////////////////////////////////////////
        
        ////////////Constraints////////////////
        
        OverbalancedMarginSwitch.setOn(false, animated: true)
        OverbalancedMarginSwitch.tintColor = UIColor.redColor()
        
        StabilityMarginSwitch.setOn(false, animated: true)
        StabilityMarginSwitch.tintColor = UIColor.redColor()
        
        DifferentialStickingSwitch.setOn(false, animated: true)
        DifferentialStickingSwitch.tintColor = UIColor.redColor()
        
        RiserMarginSwitch.setOn(false, animated: true)
        RiserMarginSwitch.tintColor = UIColor.redColor()
        
        
        //////////////////////////////////////
        
        //////////////////////Well///////////////////////
        complationtype.dataSource = self
        complationtype.delegate = self
        
        lastholelabel.hidden = true
        lastholediameter.hidden = true
        
        lastcasingdiameter.hidden = true
        lastcasinglabel.hidden = true
        
        firstcasingdiameter.dataSource = self
        firstcasingdiameter.delegate = self
        
        lastcasingdiameter.delegate = self
        lastcasingdiameter.dataSource = self
        
        lastholediameter.delegate = self
        lastholediameter.dataSource = self
        /////////////////////////////////////////////////
        
    }
    /////////////////PickerView Complation Type///////////////////////
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1
        {
        return pickerData.count
        }
        else if pickerView.tag == 2
        {
            return depthpicker.count
        }
        else if pickerView.tag == 3
        {
            return firstcasingdata.count
        }
        else if pickerView.tag == 4
        {
           return lastcasingdata.count
        }
        else
        {
            return lastholedata.count
        }
        }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1
        {
        return pickerData[row]
        }
        else if pickerView.tag == 2
        {
            return depthpicker[row]
        }
        else if pickerView.tag == 3
        {
            return firstcasingdata[row]
        }
        else if pickerView.tag == 4
        {
            return lastcasingdata[row]
        }
        else
        {
            return lastholedata[row]
        }
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        if pickerView.tag == 1
        {
    
        let valuestorage = row
        
        if valuestorage == 0
        {
            lastholelabel.hidden = true
            lastholediameter.hidden = true
            
            lastcasingdiameter.hidden = true
            lastcasinglabel.hidden = true

        }
         if valuestorage == 1
        {
            lastholediameter.hidden = false
            lastholelabel.hidden = false
           
          lastcasingdiameter.userInteractionEnabled = false
            
        }
            else
         {
            
            lastcasingdiameter.userInteractionEnabled = true

            }
     if valuestorage == 2
        {
            lastcasinglabel.hidden = false
            lastcasingdiameter.hidden = false
            lastholediameter.userInteractionEnabled = false
        }
            else
     {
        lastholediameter.userInteractionEnabled = true
            }
        }
        
    }

    /////////////////////////////////////////////////////////////////////////
    
    
  
}
