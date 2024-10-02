CC := cc
AR := ar

CFLAGS := -Wall -pedantic -ggdb -std=c11
CPPFLAGS := -Iinclude

LIB := libjisp.a
BIN := jisp

SRCs := $(wildcard src/*.c)
OBJs := $(SRCs:.c=.o)

$(BIN): main.c $(LIB)
	$(CC) $(CFLAGS) $(CPPFLAGS) $^ -o $@

$(LIB): $(OBJs)
	$(AR) rcs $@ $^

$(OBJs): %.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJs) $(LIB) $(BIN)

