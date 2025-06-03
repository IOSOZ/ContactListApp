//
//  Service.swift
//  ContactListApp
//
//  Created by Олег Зуев on 31.05.2025.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    let names = [
        "James", "John", "Robert", "Michael", "William",
        "David", "Richard", "Joseph", "Thomas", "Charles",
        "Elizabeth", "Jennifer", "Mary", "Patricia", "Linda"
    ]
    let surnames = [
        "Smith", "Johnson", "Williams", "Brown", "Jones",
        "Miller", "Davis", "Garcia", "Rodriguez", "Wilson",
        "Martinez", "Anderson", "Taylor", "Thomas", "Hernandez"
    ]
    let emails = [
        "super.hero@mail.ru", "guitar.master@yandex.ru", "coffee.lover@gmail.com",
        "space.traveler@mail.ru", "pizza.king@yandex.ru", "book.worm@gmail.com",
        "dancing.panda@mail.ru", "music.guru@yandex.ru", "coding.ninja@gmail.com",
        "chocolate.fan@mail.ru", "fitness.monster@yandex.ru", "movie.buff@gmail.com",
        "travel.addict@mail.ru", "photo.wizard@yandex.ru", "game.champion@gmail.com"
    ]
    let phoneNumbers = [
        "89261234567", "89347654321", "89789876543",
        "89031237894", "89505671234", "89142345678",
        "89658901234", "89233456789", "89456789012",
        "89890123456", "89214567890", "89671234567",
        "89047890123", "89562345678", "89903456789"
    ]
    
}
