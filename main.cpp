#include <CppUTest/CommandLineTestRunner.h>
#include <CppUTest/TestHarness.h>

#include "add.h"

TEST_GROUP(Group)
{

};

TEST(Group, Test1)
{
    int value1 = 5;
    int value2 = 6;
    int sum = 0;
    
    sum = add(value1, value2);
    CHECK_EQUAL(sum, 11);
}

int main(int argc, char ** argv)
{
    RUN_ALL_TESTS(argc, argv);
    return 0;
}
