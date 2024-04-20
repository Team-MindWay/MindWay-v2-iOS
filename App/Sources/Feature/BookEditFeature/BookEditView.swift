import SwiftUI

struct BookEditView: View {
    @Environment(\.dismiss) var dismiss
    @State var title = "세상의 마지막 기차역"
    @State var content = "세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마지막 기차역세상의 마"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                MindWayTextField(
                    text: $title,
                    title: "제목"
                )
                
                MindWayTextEditor(
                    text: $content,
                    title: "줄거리",
                    textCount: content.count,
                    maxTextCount: 1000
                )
                .padding(.top, 20)
                
                Spacer()
            }
            .padding(.top, -20)
            .padding(.horizontal, 24)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("독서 수정")
                        .mindWaySemiboldFont(.m2)
                }
            }
            .mindWayBackButton(dismiss: dismiss)
        }
    }
}
