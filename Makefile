all:
	gcc -Wall -Wextra -I ./include/ -c src/xdrfile.c
	gcc -Wall -Wextra -I ./include/ -c src/xdrfile_trr.c
	gcc -Wall -Wextra -I ./include/ -c src/xdrfile_xtc.c
	gcc -Wall -Wextra -I ./include/ -lm -o trr2xtc src/trr2xtc.c *.o
	gcc -Wall -Wextra -I ./include/ -lm -o xdrfile_c_test src/xdrfile_c_test.c *.o

clean:
	$(RM) *.trr *.xdr *.xtc trr2xtc xdrfile_c_test *.o

double:
	gcc -Wall -Wextra -I ./include/ -DXDR_DOUBLE -c src/xdrfile.c
	gcc -Wall -Wextra -I ./include/ -DXDR_DOUBLE -c src/xdrfile_trr.c
	gcc -Wall -Wextra -I ./include/ -DXDR_DOUBLE -c src/xdrfile_xtc.c
	gcc -Wall -Wextra -I ./include/ -DXDR_DOUBLE -lm -o trr2xtc src/trr2xtc.c *.o
	gcc -Wall -Wextra -I ./include/ -DXDR_DOUBLE -lm -o xdrfile_c_test src/xdrfile_c_test.c *.o
