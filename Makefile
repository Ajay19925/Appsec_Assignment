all: giftcardreader test

test: test0 test1 test2 test3 test4 test5 test6

test0: giftcardreader
	./giftcardreader 1 examplefile.gft

test1: giftcardreader
	./giftcardreader 1 tests/crash1.gft

test2: giftcardreader
	./giftcardreader 1 tests/crash2.gft

test3: giftcardreader
	./giftcardreader 1 tests/hang.gft

test4: giftcardreader
	./giftcardreader 1 fuzz/cov1.gft

test5: giftcardreader
	./giftcardreader 1 fuzz/cov2.gft

test6: giftcardreader
	./giftcardreader 2 fuzz/cov1.gft
