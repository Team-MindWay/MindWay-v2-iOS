import SwiftUI
import Foundation


class EventViewModel: ObservableObject {
    @Published var eventTitle: String = "가을 독서 행사"
    @Published var eventDescription: String = "독서의 계절, 가을을 맞아 도서관에서 특별한 이벤트를준비했습니다. 랜덤으로 초성 책 제목이 적혀있는 쪽지를 뽑고, 그에 맞는 책을 찾아오면 푸짐한 선물뽑기를 할 수 있습니다. 점심시간마다 진행할 예정이니 많은 관심 바랍니다."
    @Published var eventTime: String = "2024년 08월 1일 ~ 2024년 09월 1일"
}
