#include "gtest/gtest.h"
#include "trigofx.h"

TEST(Positive_Sin_Angle, positiveSinTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_sin(90),  0.893997);

}
TEST(Negative_Sin_Angle, negativeSinTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_sin(-90),  -0.893997);

}
TEST(Zero_Sin_Angle, zeroSinTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_sin(0),  0);

}


TEST(Positive_Cos_Angle, positiveCosTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_cos(90),  -0.448074);

}

TEST(Negative_cos_Angle, negativeCosTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_cos(-90),  -0.448074);

}
TEST(Zero_Cos_Angle, zeroCosTheta) {

    TrigoFx tfx;
    EXPECT_EQ (tfx.tf_cos(0),  1);

}
