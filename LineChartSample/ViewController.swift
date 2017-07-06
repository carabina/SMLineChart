//
//  ViewController.swift
//  LineChartSample
//
//  Created by JaN on 2017/7/3.
//  Copyright © 2017年 givingjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var m_lineChartView: SMLineChartView!

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
    }

    // MARK: Init Methods
    private func initView() {
        var xList : [String] = []
        
        for i in 1...12 {
            xList.append("\(i)月")
        }
        
        // 1.setting
        self.m_lineChartView.setXaxisStringList(list: xList, maxDisplay: 7) // required
        self.m_lineChartView.setYaxisStringList(maximum: 90, minimum: 15, count: 3) // required
        self.m_lineChartView.setDotRadius(6.0) // optional
        self.m_lineChartView.setScrollingSensitive(100) // optional
        self.m_lineChartView.setYaxisUnit(titleUnit: "萬")
        // 2.submit.
        self.m_lineChartView.setupChart()
        
        // 3.add line.
        self.m_lineChartView.addLine([52,60,59,69,50,33,42,24,55,64,34,53], color: UIColor(red: 68/255, green: 188/255, blue: 201/255, alpha: 1.0))
        self.m_lineChartView.addLine([44,20,45,60,30,65,30,53,44,40,45,66], color: UIColor(red: 253/255, green: 123/255, blue: 107/255, alpha: 1.0))
    }
}

