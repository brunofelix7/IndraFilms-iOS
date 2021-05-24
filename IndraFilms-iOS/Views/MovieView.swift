import SwiftUI

struct MovieView: View {
	
	@ObservedObject var viewModel: MovieViewModel
	
	init(viewModel: MovieViewModel) {
		self.viewModel = viewModel
	}
	
    var body: some View {
		NavigationView {
			List(self.viewModel.movies) { movie in
				Text(movie.title)
			}
			.navigationBarTitle("Movies")
			.navigationBarItems(trailing: Button(
									action: {
										viewModel.listMovies()
									},
									label: {
										Text("List movies")
									})
			)
		}
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
		MovieView(viewModel: .init())
    }
}
