#include <gtest/gtest.h>
#include <gmock/gmock.h>

#include "Log/Log.h"

TEST(TestLog, testAddLogMessage)
{
    ASSERT_EQ(0, 0);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    ::testing::InitGoogleMock(&argc, argv);

    return RUN_ALL_TESTS();
}