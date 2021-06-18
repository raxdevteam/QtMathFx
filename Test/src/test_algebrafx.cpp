#include "gtest/gtest.h"
#include "algebrafx.h"

TEST(add_test, testWithPositive) {

    AlgebraFx cal;
    EXPECT_EQ (cal.add(0, 0),  0);
    EXPECT_EQ (cal.add(10, 10), 20);
    EXPECT_EQ (cal.add(10.10, 10.10), 20.20);
}

TEST(sub_test, testWithNormal) {

    AlgebraFx cal;
    EXPECT_EQ (cal.sub(0, 0),  0);
    EXPECT_EQ (cal.sub(10, 10), 0);
    EXPECT_EQ (cal.sub(10.10, 10.10), 0);
}

TEST(mul_test, testWithPositive) {

    AlgebraFx cal;
    EXPECT_EQ (cal.mul(2, 3),  6);
    EXPECT_EQ (cal.mul(10, 10), 100);
    EXPECT_EQ (cal.mul(10.10, 0), 0);
}

TEST(mul_test, testWithNegatives) {

    AlgebraFx cal;
    EXPECT_EQ (cal.mul(-2, -3),  6);
    EXPECT_EQ (cal.mul(-10, 10), -100);
    EXPECT_EQ (cal.mul(-10.10, 0), 0);
}
