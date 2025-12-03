% Musicians and their instruments
instruments(beethoven, piano).
instruments(mozart, violin).
instruments(michael_jackson, microphone).
    
% Musicians and their music genres
genre(beethoven, classical).
genre(mozart, classical).
genre(michael_jackson, pop).

% jenre musicians
jenre_musician(X, Y) :- genre(X, Y).

% 実行例
% jenre_musician(X, classical).