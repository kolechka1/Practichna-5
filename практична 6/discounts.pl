client(alex, new).
client(bob, regular).
client(carla, vip).
client(diana, regular).
client(eli, vip).
client(fiona, new).

average_check(alex, 500).
average_check(bob, 1200).
average_check(carla, 2500).
average_check(diana, 900).
average_check(eli, 1800).
average_check(fiona, 300).

discount_type(small, 5).
discount_type(medium, 10).
discount_type(big, 20).
discount_type(none, 0).

discount_for(Client, big) :-
    client(Client, vip),
    average_check(Client, Check),
    Check > 2000.

discount_for(Client, medium) :-
    client(Client, regular),
    average_check(Client, Check),
    Check > 1000.

discount_for(Client, small) :-
    client(Client, new).

discount_for(Client, none) :-
    \+ discount_for(Client, small),
    \+ discount_for(Client, medium),
    \+ discount_for(Client, big).

all_discounts(Client, Discounts) :-
    findall(D, discount_for(Client, D), Discounts).

advise_discount_for(Client, Discount) :-
    discount_for(Client, Discount).