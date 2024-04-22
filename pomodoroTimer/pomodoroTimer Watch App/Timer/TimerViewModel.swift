//
//  TimerViewModel.swift
//  pomodoroTimer Watch App
//
//  Created by Silvia España Gil on 18/4/24.
//

import Foundation

class TimerViewModel: ObservableObject {
    
    @Published var timerValue = 1500
    @Published var isTimerRunning = false
    @Published var completedCycles = 0
    @Published var timer: Timer?
    
    func getAvailableTimeString(time: Int) -> String {
        
        let minutes = time / 60
        let seconds = time % 60
        return "\(String(format: "%02d", minutes)):\(String(format: "%02d", seconds))"
    }
    
    func startTimer() {
        
        isTimerRunning = true
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            
            if self.timerValue > 0 {
                self.timerValue -= 1
            } else {
                
                self.timer?.invalidate()
                self.timer = nil
                self.isTimerRunning = false
                self.completedCycles += 1
            }
        }
    }
    
    func pauseTimer() {
        
        timer?.invalidate()
        timer = nil
        isTimerRunning = false
        isTimerRunning = false
    }
    
    func resetTimer() {
        
        timer?.invalidate()
        timer = nil
        timerValue = 4
        isTimerRunning = false
    }
    
    func canStartTimer() -> Bool {
        
        if timerValue == 0 || isTimerRunning{
            return false
        } else {
            return true
        }
    }
}
