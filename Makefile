# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ymeziane <ymeziane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/17 15:07:23 by ymeziane          #+#    #+#              #
#    Updated: 2023/10/18 13:30:56 by ymeziane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRCS_LIBC =	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
			ft_bzero.c ft_atoi.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
			ft_strncmp.c ft_strnstr.c ft_strdup.c ft_memset.c ft_memcpy.c ft_memmove.c \
			ft_memchr.c ft_memcmp.c ft_calloc.c

SRCS_ADDITIONAL = ft_itoa.c ft_substr.c ft_split.c ft_strjoin.c ft_strtrim.c ft_strmapi.c \
				ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

SRCS_BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c ft_lstdelone_bonus.c  ft_lstclear_bonus.c \
			ft_lstiter_bonus.c ft_lstmap_bonus.c

SRCS = ${SRCS_LIBC} ${SRCS_ADDITIONAL}

SRCS_ALL = ${SRCS_LIBC} ${SRCS_ADDITIONAL} ${SRCS_BONUS}

OBJS = $(SRCS:.c=.o)
OBJS_ALL = ${SRCS_ALL:.c=.o}

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

bonus: $(OBJS_ALL)
	ar rcs $(NAME) $(OBJS_ALL)

clean:
	rm -f $(OBJS_ALL)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus so