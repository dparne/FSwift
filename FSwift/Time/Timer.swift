//
//  Timer.swift
//  FSwift
//
//  Created by Kelton Person on 10/4/14.
//  Copyright (c) 2014 Kelton. All rights reserved.
//

import Foundation

public class Timer {

    let interval: NSTimeInterval
    let repeats: Bool
    let f: () -> Void
    var isRunning: Bool = false
    private var timer: NSTimer?
    
    public init(interval: NSTimeInterval, repeats: Bool, f: () -> Void) {
        self.interval = interval
        self.repeats = repeats
        self.f = f
    }
    
    @objc func tick() {
        if(!self.repeats) {
            self.stop()
        }
        self.f()
    }
    
    public func start() {
        if (self.timer == nil) {
            self.timer = NSTimer.scheduledTimerWithTimeInterval(interval, target: self, selector: Selector("tick"), userInfo: nil, repeats: self.repeats)
            
            //self.timer = NSTimer(timeInterval: interval, target:self, selector: Selector("tick"), userInfo: nil, repeats: repeats)
            //NSRunLoop.currentRunLoop().addTimer(self.timer!, forMode: NSDefaultRunLoopMode)
            self.isRunning = true
        }
    }
    
    public func stop() {
        self.timer?.invalidate()
        self.timer = nil
        self.isRunning = false
    }
    
    public var running: Bool {
        return self.isRunning
    }
    
    
}

