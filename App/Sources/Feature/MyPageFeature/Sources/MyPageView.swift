import SwiftUI

struct MyPageView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: MyPageViewModel
    
    init(
        viewModel: MyPageViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("안녕하세요!")
                                .mindWayRegularFont(.h3)
                            
                            HStack(spacing: 0) {
                                Text("한재형")
                                    .mindWaySemiboldFont(.h3)
                                    .foregroundColor(.mindway(.main(.main)))
                                
                                Text("님")
                                    .mindWaySemiboldFont(.h3)
                            }
                        }
                        .padding(.top, 60)
                        
                        Spacer()
                        
                        MindWayAsset.Icons.seeMore.swiftUIImage
                            .onTapGesture {
                                viewModel.isShowingBottomSheet = true
                            }
                    }
                    
                    Text("도서 신청 목록")
                        .mindWayRegularFont(.label)
                        .foregroundColor(.mindway(.gray(.g4)))
                        .padding(.top, 40)
                    
                    ScrollView(.vertical) {
                        ForEach(0..<2, id: \.self) { _ in
                            BookOrderListRow()
                                .padding(.top, 20)
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 24)
            }
        }
        .mindWayBackButton(dismiss: dismiss)
        .mindWayDeleteAlert(
            bookTitle: "세상의 마지막 기차역",
            isShowing: $viewModel.isShowingDeleteAlert,
            alertActions: [
                .init(text: "취소", style: .cancel) {
                    viewModel.isShowingDeleteAlert = false
                },
                .init(text: "삭제", style: .default) { }
            ]
        )
        .mindWayBottomSheet(isShowing: $viewModel.isShowingBottomSheet) {
            VStack(alignment: .leading, spacing: 0) {
                Button {
                    viewModel.isNavigateMindWayIntroducePage = true
                } label: {
                    Text("MINDWAY 소개")
                        .mindWayRegularFont(.m3)
                        .foregroundColor(.mindway(.black(.black)))
                        .padding(.top, 15)
                        .padding(.bottom, 20)
                }
                
                Divider()
                
                Button {
                    
                } label: {
                    Text("로그아웃")
                        .mindWayRegularFont(.m3)
                        .foregroundColor(.mindway(.system(.system)))
                        .padding(.top, 20)
                        .padding(.bottom, 46)
                }
            }
            .padding(.horizontal, 24)
            .toolbar(.hidden, for: .tabBar)
        }
        .fullScreenCover(isPresented: $viewModel.isNavigateMindWayIntroducePage) {
            MindWayIntroduceView()
        }
    }
    
    @ViewBuilder
    func BookOrderListRow() -> some View {
        VStack(spacing: 0) {
            HStack(spacing: 28) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("세상의 마지막 기차역")
                        .mindWayRegularFont(.m2)
                    
                    Text("무라세 다케시")
                        .mindWayRegularFont(.label)
                        .foregroundColor(.mindway(.gray(.g6)))
                }
                
                Spacer()
                
                MindWayAsset.Icons.edit.swiftUIImage
                
                MindWayAsset.Icons.trash.swiftUIImage
                    .onTapGesture {
                        viewModel.isShowingDeleteAlert = true
                    }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.mindway(.white(.white)))
                .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
        }
    }
}
