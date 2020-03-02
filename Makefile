STUDENT_ID=2915663

all:
	gcc -Wall -o eecsTree main.c
	gcc -Wall -DLAB_CODE -o eecsTreeFG main.c

test: all
	./eecsTree lab4test
	./eecsTreeFG lab4test

tar: clean
	mkdir $(STUDENT_ID)_eecs678_lab4
	cp main.c Makefile $(STUDENT_ID)_eecs678_lab4
	tar cfzv $(STUDENT_ID)_eecs678_lab4.tar.gz $(STUDENT_ID)_eecs678_lab4
	-rm -rf $(STUDENT_ID)_eecs678_lab4

clean:
	rm -f *.o eecsTree eecsTreeFG
