#Ex02

#Get random Users from u.data

threshold =0.4; % limiar de decis˜ao
Set = create("u.data");
J = distances(Set);
Similar = similarities(Set, J, threshold);