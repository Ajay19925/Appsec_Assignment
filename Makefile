all: giftcardreader test

test: test0 test1 test2 test3 test4 test5 test6 test7 test8

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

test7: giftcardreader
	./giftcardreader 2 fuzz/fuzz2.gft
	
test8: giftcardreader
	./giftcardreader 1 fuzz/queue/id_000000,time_0,execs_0,orig_hang.gft
	./giftcardreader 1 fuzz/queue/id_000001,time_0,execs_0,orig_examplefile.gft
	./giftcardreader 1 fuzz/queue/id_000002,time_0,execs_0,orig_crash2.gft
	./giftcardreader 1 fuzz/queue/id_000003,time_0,execs_0,orig_crash1.gft
	./giftcardreader 1 fuzz/queue/id_000004,time_0,execs_0,orig_cov2.gft
	./giftcardreader 1 fuzz/queue/id_000005,time_0,execs_0,orig_cov1.gft
	./giftcardreader 1 fuzz/queue/id_000006,src_000004,time_251,execs_93,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000007,src_000004,time_296,execs_104,op_havoc,rep_8,+cov
	./giftcardreader 1 fuzz/queue/id_000008,src_000004,time_365,execs_114,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000009,src_000004,time_414,execs_127,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000010,src_000004,time_478,execs_148,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000011,src_000004,time_557,execs_164,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000012,src_000004,time_667,execs_184,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000013,src_000004,time_719,execs_202,op_havoc,rep_8,+cov
	./giftcardreader 1 fuzz/queue/id_000014,src_000004,time_775,execs_220,op_havoc,rep_2
	./giftcardreader 1 fuzz/queue/id_000015,src_000004,time_853,execs_238,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000016,src_000004,time_898,execs_251,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000017,src_000004,time_934,execs_260,op_havoc,rep_8,+cov
	./giftcardreader 1 fuzz/queue/id_000018,src_000004,time_1016,execs_284,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000019,src_000004,time_1067,execs_294,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000020,src_000004,time_1111,execs_307,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000021,src_000004,time_1148,execs_319,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000022,src_000004,time_1342,execs_362,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000023,src_000004,time_1383,execs_376,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000024,src_000004,time_1491,execs_406,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000025,src_000004,time_1633,execs_469,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000026,src_000004,time_1710,execs_488,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000027,src_000004,time_1943,execs_571,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000028,src_000004,time_2320,execs_697,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000029,src_000004,time_2459,execs_748,op_havoc,rep_2,+cov
	./giftcardreader 1 fuzz/queue/id_000030,src_000004,time_2717,execs_830,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000031,src_000004,time_2780,execs_839,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000032,src_000004,time_2902,execs_875,op_havoc,rep_2,+cov
	./giftcardreader 1 fuzz/queue/id_000033,src_000004,time_3614,execs_1104,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000034,src_000004,time_3754,execs_1137,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000035,src_000004,time_4412,execs_1360,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000036,src_000004,time_4821,execs_1461,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000037,src_000004,time_4933,execs_1485,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000038,src_000004,time_5274,execs_1605,op_havoc,rep_2
	./giftcardreader 1 fuzz/queue/id_000039,src_000004,time_6377,execs_1865,op_havoc,rep_8,+cov
	./giftcardreader 1 fuzz/queue/id_000040,src_000004,time_7540,execs_2242,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000041,src_000004,time_7769,execs_2325,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000042,src_000004,time_11042,execs_3269,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000043,src_000004,time_11343,execs_3315,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000044,src_000004,time_12060,execs_3441,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000045,src_000004,time_21575,execs_5659,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000046,src_000004,time_34360,execs_8015,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000047,src_000004,time_42182,execs_9480,op_havoc,rep_16,+cov
	./giftcardreader 1 fuzz/queue/id_000048,src_000004,time_54574,execs_12748,op_havoc,rep_2,+cov
	./giftcardreader 1 fuzz/queue/id_000049,src_000004,time_58468,execs_14224,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000050,src_000004,time_59283,execs_14520,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000051,src_000004,time_78422,execs_21484,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000052,src_000004,time_78483,execs_21503,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000053,src_000004,time_81186,execs_22517,op_havoc,rep_4,+cov
	./giftcardreader 1 fuzz/queue/id_000054,src_000028,time_93135,execs_27062,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000055,src_000028+000054,time_95203,execs_27853,op_splice,rep_2
	./giftcardreader 1 fuzz/queue/id_000056,src_000050+000000,time_96565,execs_28315,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000057,src_000050+000054,time_97066,execs_28517,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000058,src_000021+000048,time_112677,execs_34160,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000059,src_000048+000005,time_134005,execs_41868,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000060,src_000017+000056,time_136023,execs_42624,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000061,src_000057,time_138819,execs_43715,op_havoc,rep_2
	./giftcardreader 1 fuzz/queue/id_000062,src_000057,time_138948,execs_43757,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000063,src_000057+000060,time_142650,execs_45107,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000064,src_000039+000034,time_146879,execs_46600,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000065,src_000045,time_148503,execs_47132,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000066,src_000045+000063,time_151053,execs_47952,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000067,src_000053+000066,time_161130,execs_51680,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000068,src_000047,time_166596,execs_53703,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000069,src_000062,time_168071,execs_54230,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000070,src_000010+000067,time_190179,execs_59986,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000071,src_000016+000066,time_192184,execs_60715,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000072,src_000016+000066,time_192279,execs_60753,op_splice,rep_2
	./giftcardreader 1 fuzz/queue/id_000073,src_000030+000060,time_194795,execs_61673,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000074,src_000030+000070,time_231213,execs_73882,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000075,src_000030+000070,time_231406,execs_73951,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000076,src_000030+000070,time_231675,execs_74042,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000077,src_000030+000070,time_231940,execs_74122,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000078,src_000075,time_239130,execs_76649,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000079,src_000072,time_302835,execs_99668,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000080,src_000040+000071,time_323335,execs_107204,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000081,src_000019+000063,time_333553,execs_110997,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000082,src_000016+000080,time_358747,execs_120174,op_splice,rep_2
	./giftcardreader 1 fuzz/queue/id_000083,src_000040+000078,time_472167,execs_161875,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000084,src_000027+000037,time_603981,execs_213991,op_splice,rep_2
	./giftcardreader 1 fuzz/queue/id_000085,src_000019,time_605924,execs_214837,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000086,src_000019,time_606586,execs_215090,op_havoc,rep_8
	./giftcardreader 1 fuzz/queue/id_000087,src_000019,time_609055,execs_216128,op_havoc,rep_4
	./giftcardreader 1 fuzz/queue/id_000088,src_000019,time_613290,execs_217597,op_havoc,rep_16
	./giftcardreader 1 fuzz/queue/id_000089,src_000019+000086,time_623059,execs_221859,op_splice,rep_4
	./giftcardreader 1 fuzz/queue/id_000090,src_000019+000086,time_623103,execs_221872,op_splice,rep_16
	./giftcardreader 1 fuzz/queue/id_000091,src_000019+000086,time_623189,execs_221905,op_splice,rep_2
	./giftcardreader 1 fuzz/queue/id_000092,src_000019+000086,time_624015,execs_222132,op_splice,rep_8
	./giftcardreader 1 fuzz/queue/id_000093,src_000019+000086,time_624230,execs_222200,op_splice,rep_16

