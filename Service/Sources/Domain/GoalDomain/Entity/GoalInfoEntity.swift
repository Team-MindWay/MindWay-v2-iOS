import Foundation

public struct GoalInfoEntity: Equatable {
    public let mon: Int
    public let tue: Int
    public let wed: Int
    public let thu: Int
    public let fri: Int
    public let sat: Int
    public let sun: Int
    public let now_count: Int
    public let goal_value: Int

    public init(
        mon: Int,
        tue: Int,
        wed: Int,
        thu: Int,
        fri: Int,
        sat: Int,
        sun: Int,
        now_count: Int,
        goal_value: Int
    ) {
        self.mon = mon
        self.tue = tue
        self.wed = wed
        self.thu = thu
        self.fri = fri
        self.sat = sat
        self.sun = sun
        self.now_count = now_count
        self.goal_value = goal_value
    }
}
