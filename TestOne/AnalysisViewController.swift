//
//  AnalysisViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 10/11/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit
import Charts

class AnalysisViewController: UIViewController {

    @IBOutlet weak var barChartView: BarChartView!
    var months: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsWorked = [20.0, 4.0, 7.0, 8.0, 12.0, 5.0, 7.0, 11.0, 9.0, 6.0, 3.0, 1.0]
        setChart(dataPoints: months, values: unitsWorked)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for chart."
    
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            _ = BarChartDataSet()
            
            let dataEntry = BarChartDataEntry(x: Double(i), yValues: [values[i]], label:"Test")
                dataEntries.append(dataEntry)
        }
        let chartSetData = BarChartDataSet(values: dataEntries, label: "Units Worked")
        let chartData = BarChartData(dataSet: chartSetData)
        chartSetData.colors = ChartColorTemplates.colorful()
        barChartView.data = chartData
        
        
       // chartSetData.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
       // self.chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
