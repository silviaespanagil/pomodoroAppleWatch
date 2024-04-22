//
//  TimerView.swift
//  pomodoroTimer Watch App
//
//  Created by Silvia España Gil on 18/4/24.
//

import SwiftUI

struct TimerView: View {
    
    @StateObject var viewModel = TimerViewModel()
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: .zero) {
                
                Text("Pomodor🍅 Timer")
                    .font(.title3)
                    .padding(.horizontal, 6)
                    .accessibilityLabel("Pomodoro Timer")
                
                Text(viewModel.getAvailableTimeString(time: viewModel.timerValue))
                    .font(.title)
                    .padding(.horizontal, 6)
                    .accessibilityLabel("Remaining time: \(viewModel.getAvailableTimeString(time: viewModel.timerValue))")
                
                HStack {
                    
                    timerButton(imageString: "play.circle", disabled: !viewModel.canStartTimer(), action: {
                        viewModel.startTimer()
                    }).accessibilityLabel("Start timer")
                    
                    timerButton(imageString: "pause.circle", disabled: !viewModel.isTimerRunning, action: {
                        viewModel.pauseTimer()
                    }).accessibilityLabel("Pause timer")
                    
                    timerButton(imageString: "backward.circle", disabled: viewModel.isTimerRunning, action: {
                        viewModel.resetTimer()
                    }).accessibilityLabel("Reset timer")
                }
                
                Text("🍅 completed: \(viewModel.completedCycles)")
                    .font(.caption)
                    .padding()
                    .accessibilityLabel("Completed pomodoros: \(viewModel.completedCycles)")
            }.sensoryFeedback(.success, trigger: viewModel.timerValue == 0)
        }
    }
    
    @ViewBuilder
    func timerButton(imageString: String,
                     disabled: Bool,
                     action: @escaping () -> Void) -> some View {
        
        Button(action: {
            action()
        }) {
            Image(systemName: imageString)
                .foregroundColor(.white)
                .font(.title2)
                .padding()
        }
        .background(disabled ? Color.gray : Color.pink)
        .clipShape(Circle())
        .disabled(disabled)
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    TimerView()
}
