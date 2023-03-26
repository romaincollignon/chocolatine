##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

SRC =	maine.c

OBJ	=	$(SRC:.c=.o)

CSFMLFLAGS = -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-audio

CFLAGS = -Wall -I ./include/ -g

NAME	=	choco

all:	$(NAME)

$(NAME): $(OBJ)
	@echo -e "🔨 \033[0;32mCompile choco \033[0;30m🔨"
	gcc $(OBJ) $(CFLAGS) $(CSFMLFLAGS)  -o $(NAME)
	@echo -e "✅ \033[0;31mChoco is compiled ✅ \033[0m"

tests_run:
	make -C tests/
clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)
	make fclean -C ./tests

re:	fclean all

debug :
	gcc $(SRC) -Wall -Wextra -I include -o $(NAME) -g $(CFLAGS) $(CSFMLFLAGS)

.PHONY:	all clean fclean re
