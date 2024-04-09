//
//  EventDetailView.swift
//  MindWay
//
//  Created by 서지완 on 4/6/24.
//  Copyright © 2024 team.mindway. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    @StateObject private var viewmodel = EventViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                Button {
                }label: {
                    MindWayAsset.Icons.chevronLeft.swiftUIImage
                }
                
                Spacer()
                
                Text("진행 중인 이벤트")
                    .mindWaySemiboldFont(.m2)
                    .padding(.trailing, 136)
                    .frame(height: 27)
            }
            
            MindWayAsset.Images.eventDetailIMG.swiftUIImage
                .resizable()
                .cornerRadius(8)
                .frame(height: 264)
                .padding(.trailing, 24)
                .padding(.top, 24)
                
            Text(viewmodel.eventTitle)
                .mindWaySemiboldFont(.m1)
                .frame(height: 24)
                .padding(.top, 20)
            
            Text(viewmodel.eventDescription)
                .mindWayRegularFont(.m3)
                .padding(.trailing, 24)
                .padding(.top, 10)
                .lineSpacing(5)
            
        
            Text(viewmodel.eventTime)
                .mindWayRegularFont(.label)
                .frame(height: 22)
                .padding(.top, 14)
                .foregroundStyle(.gray)
            
            Spacer()
        }
        .padding(.leading, 24)
        .padding(.top, 20)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    EventDetailView()
}
