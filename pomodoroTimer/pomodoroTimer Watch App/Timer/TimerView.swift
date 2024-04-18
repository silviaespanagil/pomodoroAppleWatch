//
//  TimerView.swift
//  pomodoroTimer Watch App
//
//  Created by Silvia España Gil on 18/4/24.
//

import SwiftUI

struct TimerView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Text("Pomodor🍅 Timer")
                    .font(.title3)
                    .padding()
                
                //  Text(timeString(time: timerValue))
                Text("25:00")
                    .font(.title)
                    .padding()
                
                HStack {
                    
                    timerButton(imageString: "play.circle", action: {
                        // start
                    })
                    
                    timerButton(imageString: "pause.circle", action: {
                        // pause
                    })
                    
                    timerButton(imageString: "backward.circle", action: {
                        // repeat
                    })
                }
                .padding()
                
                Text("🍅 completed: 2")
                    .font(.caption)
                    .padding()
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
    
    @ViewBuilder
    func timerButton(imageString: String,
                     action: @escaping () -> Void) -> some View {
        
        Button(action: {
            action()
        }) {
            Image(systemName: imageString)
                .foregroundColor(.white)
                .font(.title2)
                .padding()
        }
        .background(Color.pink)
        .clipShape(Circle())
    }
}

#Preview {
    TimerView()
}
