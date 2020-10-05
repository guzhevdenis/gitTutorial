#include <cstddef> // size_t
#include <cstring> // strlen, strcpy
#include <iostream>
void copy_1(const char* str, unsigned size, char* p, unsigned new_size);
char* resize(char* str, unsigned size, unsigned new_size);
struct String {
	explicit String(size_t n, char c)
		: size(n),
		str(new char[(n + 1) * sizeof(char)])
	{
		for (int i = 0; i < n; ++i)
		{
			str[i] = c;
		}
		str[n] = '\0';
	}
	String(const char* string = "")
	{
		size = 0;
		size = strlen(string);

		char* p = new char[(size + 1) * sizeof(char)];
		strcpy(p, string);
		p[size] = '\0';

		this->str = p;
	}


	/* и деструктор */
	~String()
	{
		delete[] str;
	}


	/* Реализуйте этот метод. */
	void append(String& other)
	{
		char* temp = '\0';

		temp = resize(str, size, size + other.size);
		size = size + other.size;
		str = temp;
		str[size] = '\0';
	}



	size_t size;
	char* str;
};


char* resize(char* str, unsigned size, unsigned new_size)
{
	char* p;
	p = new char[new_size * sizeof(char)];
	copy_1(str, size, p, new_size);
	delete[] str;
	return p;
}

void copy_1(const char* str, unsigned size, char* p, unsigned new_size)
{
	for (int i = 0; i < size; i++)
	{
		*(p + i) = *(str + i);
	}
}
int main()
{
	return 0;
}