//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Karatay, Deniz on 11/6/16.
//  Copyright © 2016 Karatay, Deniz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RecordAudio(_ sender: AnyObject) {
        print("Record button is pressed")
        recordingLabel.text = "Recording in progress"
        stopRecordButton.isEnabled = true
        recordButton.isEnabled = false
    }

    @IBAction func stopRecording(_ sender: AnyObject) {
        print("Stop recording button is pressed")
        recordingLabel.text = "Tap to record"
        stopRecordButton.isEnabled = false
        recordButton.isEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordButton.isEnabled = false
        
    }
}

