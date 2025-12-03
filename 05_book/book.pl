% 好きな本と作家の知識ベース

book('Childhood\'s End', arthur_c_clarke).
book('The Door into Summer', robert_a_heinlein).
book('The Three-Body Problem', liu_cixin).
book('The Dark Forest', liu_cixin).

% 作家から本を探すルール
books_by_author(Author, Book) :- book(Book, Author).

% 実行例
% books_by_author(liu_cixin, Book).