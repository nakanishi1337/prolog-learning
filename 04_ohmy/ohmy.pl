% 猫の種類を定義
cat(lion).
cat(tiger).

% ドロシーという人物の3つの要素を定義
dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.

% 2匹の猫がいるかどうかを確認するルール
twin_cats(X, Y) :- cat(X), cat(Y).

% 実行例
% dorothy(lion, tiger, bear).
% dorothy(One, Two, Three).
% twin_cats(One, Two).