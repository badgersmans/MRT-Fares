//
//  Fare.swift
//  MRT Fares
//
//  Created by Shawn Law on 12/10/2024.
//

import Foundation

struct Fare: Identifiable, Codable {
    let start: String
    let destination: String
    let price: Double
    
    // Since there is no 'id' in JSON, we can create it manually in the initializer.
    var id: UUID {
        UUID() // Generate a new UUID for each instance
    }
}


let dummyFares: [Fare] = [
    Fare(start: "Gombak", destination: "Gombak", price: 0.8),
    Fare(start: "Gombak", destination: "Hospital Kuala Lumpur", price: 4.10),
    Fare(start: "Hospital Kuala Lumpur", destination: "Gombak", price: 2.5),
    Fare(start: "Hospital Kuala Lumpur", destination: "Ampang", price: 1.5),
    Fare(start: "Ampang", destination: "Alam Sutera", price: 3.2),
    Fare(start: "Alam Megah", destination: "16 Sierra", price: 4.0),
    Fare(start: "Abdullah Hukum", destination: "Gombak", price: 1.8),
    Fare(start: "Alam Sutera", destination: "Alam Megah", price: 3.5),
    Fare(start: "Hospital Kuala Lumpur", destination: "Alam Sutera", price: 2.8),
    Fare(start: "16 Sierra", destination: "Abdullah Hukum", price: 4.1),
    Fare(start: "Abdullah Hukum", destination: "16 Sierra", price: 4.5)
]

func loadFares() -> [Fare] {
    guard let url = Bundle.main.url(forResource: "mrt_prices", withExtension: "json") else {
        print(Bundle.main.bundlePath) // This will show you the path of the app's bundle
        print("MRT prices file cannot be found.")
        return []
    }

    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode([Fare].self, from: data)
    } catch {
        print("Failed to load MRT fares: \(error)")
        return []
    }
}


let stationNames = [
    "16 Sierra",
    "Abdullah Hukum",
    "Alam Megah",
    "Alam Sutera",
    "Ampang",
    "Ampang Park",
    "Ampang Park (MRT)",
    "Ara Damansara",
    "Asia Jaya",
    "Awan Besar",
    "Bandar Puteri",
    "Bandar Tasik Selatan",
    "Bandar Tun Hussein Onn",
    "Bandar Tun Razak",
    "Bandar Utama",
    "Bandaraya",
    "Bangsar",
    "Batu 11 Cheras",
    "Bukit Bintang",
    "Bukit Bintang (MRL)",
    "Bukit Dukung",
    "Bukit Jalil",
    "Bukit Nanas",
    "Cahaya",
    "Cempaka",
    "Chan Show Lin (MRT)",
    "Chan Sow Lin",
    "Cheras",
    "Chow Kit",
    "Cochrane",
    "Conlay",
    "Cyberjaya City Centre",
    "Cyberjaya Utara",
    "Damai",
    "Damansara Damai",
    "Dang Wangi",
    "Dato Keramat",
    "Glenmarie",
    "Gombak",
    "Hang Tuah",
    "Hang Tuah (MRL)",
    "Hospital Kuala Lumpur",
    "Imbi",
    "IOI Puchong",
    "Jalan Ipoh",
    "Jelatek",
    "Jinjang",
    "Kajang",
    "Kampung Baru",
    "Kampung Batu",
    "Kampung Selamat",
    "Kelana Jaya",
    "Kentonmen",
    "Kepong Baru",
    "Kerinchi",
    "Kinrara BK 5",
    "KL Sentral",
    "KL Sentral (MRL)",
    "KLCC",
    "Kota Damansara",
    "Kuchai",
    "Kwasa Damansara",
    "Kwasa Damansara",
    "Kwasa Sentral",
    "Lembah Subang",
    "Maharajalela",
    "Maluri",
    "Maluri",
    "Masjid Jamek",
    "Masjid Jamek",
    "Medan Tuanku",
    "Mentari",
    "Merdeka",
    "Metro Prima",
    "Miharja",
    "Muhibbah",
    "Mutiara Damansara",
    "Muzium Negara",
    "Pandan Indah",
    "Pandan Jaya",
    "Pasar Seni",
    "Pasar Seni",
    "Persiaran KLCC",
    "Phileo Damansara",
    "Plaza Rakyat",
    "Puchong Perdana",
    "Puchong Prima",
    "Pudu",
    "Pusat Bandar Damansara",
    "Pusat Bandar Puchong",
    "Putra Heights",
    "Putra Heights",
    "Putra Permai",
    "Putrajaya Sentral",
    "PWTC",
    "Raja Chulan",
    "Raja Uda",
    "Salak Selatan",
    "Semantan",
    "Sentul",
    "Sentul Barat",
    "Sentul Timur",
    "Serdang Jaya",
    "Serdang Raya Selatan",
    "Serdang Raya Utara",
    "Seri Raya",
    "Setiawangsa",
    "SMD",
    "South Quay - USJ1",
    "Sri Damansara Barat",
    "Sri Damansara Sentral",
    "Sri Damansara Timur",
    "Sri Delima",
    "Sri Petaling",
    "Sri Rampai",
    "SS 15",
    "SS 18",
    "Stadium Kajang",
    "Subang Alam",
    "Subang Jaya",
    "Sultan Ismail",
    "Sungai Besi",
    "Sungai Besi (MRT)",
    "Sungai Buloh",
    "Sungai Jernih",
    "SunU - Monash",
    "Sunway - Setia Jaya",
    "Sunway Lagoon",
    "Surian",
    "Taipan",
    "Taman Bahagia",
    "Taman Connaught",
    "Taman Equine",
    "Taman Jaya",
    "Taman Melati",
    "Taman Midah",
    "Taman Mutiara",
    "Taman Naga Emas",
    "Taman Paramount",
    "Taman Perindustrian Puchong",
    "Taman Pertama",
    "Taman Suntex",
    "Taman Tun Dr Ismail",
    "Titiwangsa",
    "Titiwangsa (MRL)",
    "Titiwangsa (MRT)",
    "Tun Razak Exchange",
    "Tun Razak Exchange",
    "Tun Sambanthan",
    "Universiti",
    "UPM",
    "USJ 21",
    "USJ 7",
    "USJ7 (BRT)",
    "Wangsa Maju",
    "Wawasan",
]
