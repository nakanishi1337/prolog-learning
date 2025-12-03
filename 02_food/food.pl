food_type(velveeta, cheese).
food_type(rits, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).

flavor(sweet, dessert).
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).

food_flavor(X, Y) :- food_type(X, Z), flavor(Y, Z).


% 質問例
% food_type(What, meat).
% food_flavor(sausage, sweet).
% flavor(sweet, What).
% food_flavor(What, savory).