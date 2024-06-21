abstract class Movie {
  late int idNm;
  late String title;
  late num daysRented;

  int get idnm => idNm;
  String get movieTitle => title;
  num get daysrented => daysRented;

  set idnm(int id) {
    idNm = id;
  }

  set movieTitle(String title) {
    this.title = title;
  }

  set daysrented(num days) {
    if (days < 0) {
      throw ArgumentError('Rental days cannot be negative.');
    }
    daysRented = days;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Movie && other.idNm == idNm;

  @override
  int get hashCode => idNm.hashCode;

  @override
  String toString() =>
      'Movie(idNumber: $idNm, title: $title, rentalDays: $daysRented)';

  num calcLateFees(int daysLate);
}

class Action extends Movie {
  @override
  num calcLateFees(int daysLate) => daysLate * 3;
}

class Comedy extends Movie {
  @override
  num calcLateFees(int daysLate) => daysLate * 2.5;
}

class Drama extends Movie {
  @override
  num calcLateFees(int daysLate) => daysLate * 2;
}

void main() {
  Action actionMovie = Action();
  actionMovie.idnm = 1;
  actionMovie.movieTitle = ' war 2 Movie';
  actionMovie.daysrented = 5;

  Comedy comedyMovie = Comedy();
  comedyMovie.idnm = 2;
  comedyMovie.movieTitle = 'johnny english Movie';
  comedyMovie.daysrented = 3;

  Drama dramaMovie = Drama();
  dramaMovie.idnm = 3;
  dramaMovie.movieTitle = ' drama Movie';
  dramaMovie.daysrented = 4;

  print(
      'Late fees for action movie (2 days late): \$${actionMovie.calcLateFees(2)}');
  print(
      'Late fees for comedy movie (3 days late): \$${comedyMovie.calcLateFees(3)}');
  print(
      'Late fees for drama movie (4 days late): \$${dramaMovie.calcLateFees(4)}');

  // Demonstrating polymorphism
  Movie movie = actionMovie;
  print('Late fees for movie (5 days late): \$${movie.calcLateFees(5)}');

  // Resetting ID for Action Movie using downcasting
  (movie as Action).idnm = 10;
  print('Action movie new ID: ${actionMovie.idnm}');

  // Check type compatibility using equals method
  print('Action movie equals comedy movie: ${actionMovie == comedyMovie}');
}
