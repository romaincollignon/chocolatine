##
## EPITECH PROJECT, 2022
## makefile
## File description:
## Chocolatine tests criterion
##

CC      	=	gcc

SRC     	=	file_test.c

OBJ			=	$(SRC:.c=.o)

NAME		=	unit_tests

CFLAGS		=	--coverage



all:			fclean $(NAME)
				./$(NAME)

$(NAME):		$(OBJ)
				$(CC) -o $(NAME) $(OBJ) $(CFLAGS) -lcriterion -lgcov

coverage:
	@gcovr

clean:
				rm -f $(OBJ)
				rm -f *.gc*

fclean: 		clean
				rm -f $(NAME)

re:				fclean all

.PHONY:			$(NAME) all clean fclean re