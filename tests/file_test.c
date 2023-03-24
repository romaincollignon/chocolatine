/*
** EPITECH PROJECT, 2022
** file_test.c
** File description:
** Function : test project chocolatine
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>
#include <stdlib.h>

Test(test_hello, test1)
{
    int nb = 0;
    nb += 1;
    cr_assert_eq(nb, 1);
}

Test(test_hello, test2)
{
    char dest [] = "Hello World!";
    cr_assert_str_eq(dest, "Hello World!");
}

Test(test_hello, test3)
{
    char dest [] = "Good chocolatine !";
    cr_assert_str_eq(dest, "Good chocolatine !");
}