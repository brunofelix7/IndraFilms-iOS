import Foundation

class MovieViewModel : ObservableObject {
	
	@Published private(set) var movies: [Movie]
	
	init(movies: [Movie] = .init()) {
		self.movies = movies
	}

	func listMovies() {
		guard let url = URL(string: API_URL) else { return }
		var request = URLRequest(url: url)
		
		request.httpMethod = "GET"
		request.addValue("TOKEN", forHTTPHeaderField: "Authorization")
		
		URLSession.shared.dataTask(with: request) { ( data, resp, err ) in
			DispatchQueue.main.async {
				self.movies = try! JSONDecoder().decode([Movie].self, from: data!)
				print(self.movies)
			}
		}.resume()
	}
}
