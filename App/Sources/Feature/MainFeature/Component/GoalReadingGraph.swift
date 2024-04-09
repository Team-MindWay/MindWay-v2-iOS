//
//  goalReadingGraph.swift
//  MindWay
//
//  Created by 이승화 on 4/9/24.
//  Copyright © 2024 team.mindway. All rights reserved.
//

import SwiftUI

struct GoalReadingGraph: View {
    var bookCount: [Int]
    var week: [String]
    
    var body: some View {
        HStack(spacing: 4) {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: 10)
                    .foregroundColor(.mindway(.gray(.g2)))
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 100, height: 10)
                    .foregroundColor(.mindway(.main(.main)))
            }
                .padding(.trailing, 48)
            
            Text("9")
                .mindWaySemiboldFont(.m1)
            
            Text("/")
                .mindWayRegularFont(.m1)
                .foregroundColor(.mindway(.gray(.g3)))
            
            Text("30")
                .mindWayRegularFont(.m3)
                .foregroundColor(.mindway(.main(.main)))
        }
        .padding(.horizontal, 48)
        
        VStack {
            HStack(spacing: 26) {
                ForEach(bookCount, id: \.self) { count in
                    VStack {
                        Text("\(count)")
                            .mindWayRegularFont(.label)
                            .foregroundColor(.mindway(.gray(.g8)))
                        
                        RoundedRectangle(cornerRadius: 4)
                            .frame(width: 16, height: CGFloat(count+1)*CGFloat((count+1)))
                            .foregroundColor(.mindway(.main(.main)))
                    }
                }
            }
            
            HStack(spacing: 30) {
                ForEach(week, id: \.self) { week in
                    Text(week)
                        .foregroundColor(.mindway(.gray(.g8)))
                        .mindWayRegularFont(.label)
                }
            }
        }
    }
}
