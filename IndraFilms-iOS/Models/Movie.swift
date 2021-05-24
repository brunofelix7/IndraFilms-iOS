import Foundation

struct Movie : Identifiable, Decodable {
	let id = UUID()
	var title: String
	var poster_path: String
	var vote_average: Double
	var overview: String
	var release_date: String
}
