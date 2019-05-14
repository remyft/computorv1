# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rfontain <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/28 20:50:45 by rfontain          #+#    #+#              #
#    Updated: 2019/05/11 21:12:25 by rfontain         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = computorv1

CC = pyinstaller -wF

RM = rm -rf

GET_BIN = mv dist/main .

OTHER_DIR = __pycache__/		\
			build/				\
			dist/				\
			main.spec			\

RED = "\x1b[0;31;40m"
RESET = "\x1b[1;37;40m"
GREY = "\x1b[1;30;40m"
GREEN = "\x1b[1;32;40m"

SRCS =	main.py			\

OK =      $(GREEN)[OK]$(RESET)		

NEWLINE = $(shell echo "")

$(NAME): $(NEWLINE)
	@$(CC) $(SRCS)
	@$(GET_BIN)
	@echo ""
	@echo $(GREY)" Success" $(RESET) [ $(NAME) ] $(OK)

all: $(NAME)

clean:
	@$(RM) $(OTHER_DIR)
#	@make -C $(LIB_PATH) clean
#	@echo $(GREY)" Cleaning :" $(RESET) [ $(NAME) ] $(OK)

#fclean: clean
#	@$(RM) $(NAME)
#	@make -C $(LIB_PATH) fclean
#	@echo $(GREY)" Deleting.." $(RESET) [ $(NAME) ] $(OK)

#reclean: clean
#	@$(RM) $(NAME)
#	@make -C $(LIB_PATH) fclean
#	@echo $(GREY)" Deleting.." $(RESET) [ $(NAME) ] $(OK)
#	@echo ""

#re: reclean all

#nn:
#	norminette $(SRCS)
#	norminette $(INC_DIR)

.PHONY: clean fclean all re
