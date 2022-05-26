NAME = containers

CC = c++
CFLAG = -Wall -Wextra -Werror -std=c++98 -g

SRC = srcs/

SRCS = main.cpp \
$(SRC)enable_if.cpp \
$(SRC)equal.cpp \
$(SRC)is_integral.cpp \
$(SRC)lexicographical_compare.cpp \
$(SRC)map.cpp \
$(SRC)stack.cpp \
$(SRC)vector.cpp

OBJS = $(SRCS:.cpp=.o)

all : $(NAME)

fclean : clean
	rm -f $(NAME)

clean :
	rm -f $(OBJS)

%.o : %.cpp
	$(CC) $(CFLAG) -c $< -o $@

re : clean all

$(NAME) : $(OBJS)
	$(CC) $(CFLAG) -o $@ $^

.PHONY : re fclean clean all 
