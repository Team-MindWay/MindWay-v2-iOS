import SwiftUI

struct SettingGoalReadingView: View {
    @StateObject var viewModel: GoalReadingViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("기간")
                .mindWayRegularFont(.label)
                .foregroundColor(.mindway(.gray(.g4)))
            
            HStack(spacing: 12) {
                Text("3월 24일")
                
                Text("~")
                
                Text("3월 31일")
            }
            .mindWaySemiboldFont(.m2)
            .padding(.top, 4)
            
            GoalReadingSettingTextField(
                text: $viewModel.bookCount,
                title: "목표 독서량"
            )
            .padding(.top, 20)
            
            MindWayButton(
                text: "확인",
                buttonStyle: .default
            )
            .padding(.top, 48)
        }
        .padding(.horizontal, 24)
    }
}
