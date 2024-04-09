##
## EPITECH PROJECT, 2023
## makefile
## File description:
## makefile
##

CFLAGS	=	-W -Wall -Wextra -Werror -pedantic 

SRC	=	titi.c\

OBJ	=	$(SRC:.c=.o)

NAME	=	mysh

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ)
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

tests_clean:
	rm -f *.gcno *.gcda
	rm unit_tests

tests_re: tests_clean tests_run

debug:
	gcc -o $(NAME) $(SRC) -ggdb -g3

re:	fclean all
