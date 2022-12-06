//
//  MotionAnimationView.swift
//  Africa
//
//  Created by David Owen on 12/6/22.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    //MARK: - functions
    
    //1. Random coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        CGFloat.random(in: 0...max)
    }
    
    //2. Random size
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 10...300))
    }
    
    //3. Random scale
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    
    //4. Random speed
    func randomSpeed() -> Double {
        Double.random(in: 0.025...1.0)
    }
    
    //5. Random delay
    func randomDelay() -> Double {
        Double.random(in: 0.0...2.0)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            .interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay()),
                            value: isAnimating
                        )
                        .onAppear{
                            isAnimating = true
                        }
                }
            }
            .drawingGroup()
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
