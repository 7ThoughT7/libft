NAME	= libft.a
HEADER	= libft.h
LIST		= ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
				ft_toupper.c ft_tolower.c ft_strdup.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
				ft_putnbr_fd.c ft_strlen.c ft_strlcat.c ft_strchr.c ft_strlcpy.c ft_memcmp.c ft_memchr.c \
				ft_memmove.c ft_memccpy.c ft_memcpy.c ft_bzero.c ft_memset.c ft_strrchr.c ft_calloc.c \
                ft_strnstr.c ft_strjoin.c ft_substr.c ft_strtrim.c ft_itoa.c ft_split.c

LIST_B		= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
                ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ			= $(LIST:.c=.o)

OBJ_B		= $(LIST_B:.c=.o)

FLAGS       = -Wall -Wextra -Werror

.o:.c
		    gcc $(FLAGS) -c $< -o $(<:.c=.o) -I .

$(NAME) :	$(OBJ) $(HEADER)
			ar rc $(NAME) $(OBJ)

bonus :		$(OBJ_B) $(HEADER)
			ar rc $(NAME) $(OBJ_B)

all :		$(NAME)

clean :
			rm -f $(OBJ) $(OBJ_B)

fclean :	clean
			rm -f $(NAME)

re :		fclean all

.PHONY :	all clean fclean re bonus
