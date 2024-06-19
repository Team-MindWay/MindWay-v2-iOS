//
//  FetchEventDetailUseCaseImpl.swift
//  Service
//
//  Created by 서지완 on 6/17/24.
//

import Foundation

public struct FetchEventDetailUseCaseImpl: FetchEventDetailUseCase {
    
    private let eventRepository: any EventRepository

    public init(eventRepository: any EventRepository) {
        self.eventRepository = eventRepository
    }
    
    public func execute() async throws -> EventDetailEntity {
        try await eventRepository.fetchEventDetail()
    }
}
