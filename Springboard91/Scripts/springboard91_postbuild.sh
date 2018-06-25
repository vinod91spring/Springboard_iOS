#!/bin/sh

#  springboard91_postbuild.sh
#  Springboard91
#
#  Created by Vinod pandey on 21/06/18.
#  Copyright © 2018 Vinod pandey. All rights reserved.

import Foundation

let task = NSTask()
task.launchPath = "/bin/echo"
task.arguments = ["farg1", "arg2"]

let pipe = NSPipe()
task.standardOutput = pipe
task.launch()

let data = pipe.fileHandleForReading.readDataToEndOfFile()
let output: String = NSString(data: data, encoding: NSUTF8StringEncoding)

print(output)
