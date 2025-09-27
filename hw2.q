int isList(Q val) {
	if (isNil(val) != 0){
        return 1;
    }
	if (isAtom(val) != 0){
        return 0;
    }
	return isList(right((Ref)val));
}

Ref append(Ref list1, Ref list2) {
	if (isNil(list1) != 0){
        return list2;
    }
	return left(list1) . append(right(list1), list2);
}

Ref reverse(Ref list) {
	if (isNil(list) != 0){
        return nil;
    }
	return append(reverse(right(list)), left(list) . nil);
}

int length(Ref list) {
	if (isNil(list) != 0){
        return 0;
    }
	return 1 + length(right(list));
}

int isSorted(Ref lists) {
	if (isNil(lists) != 0){
        return 1;
    }
	if (isNil(right(lists)) != 0){
        return 1;
    }
	if (length(left(lists)) > length(left(right(lists)))){
        return 0;
    }
	return isSorted(right(lists));
}

int sameLength(Ref list1, Ref list2) {
	if (isNil(list1) != 0){
        return isNil(list2);
    }
	if (isNil(list2) != 0){
        return 0;
    }
	return sameLength(right(list1), right(list2));
}


