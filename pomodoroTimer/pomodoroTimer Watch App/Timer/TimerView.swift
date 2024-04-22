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
        
        GeometryReader { geometry in
            
            VStack {
                
                Text("Pomodor🍅 Timer")
                    .font(.title3)
                    .padding()
                
                Text(viewModel.getAvailableTimeString(time: viewModel.timerValue))
                    .font(.title)
                    .padding()
                
                HStack {
                    
                    timerButton(imageString: "play.circle", disabled: !viewModel.canStartTimer(), action: {
                        viewModel.startTimer()
                    })
                    
                    timerButton(imageString: "pause.circle", disabled: !viewModel.isTimerRunning, action: {
                        viewModel.pauseTimer()
                    })
                    
                    timerButton(imageString: "backward.circle", disabled: viewModel.isTimerRunning, action: {
                        viewModel.resetTimer()
                    })
                }
                .padding()
                
                Text("🍅 completed: \(viewModel.completedCycles)")
                    .font(.caption)
                    .padding()
            }.frame(width: geometry.size.width, height: geometry.size.height)
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
    }
}

#Preview {
    TimerView()
}
