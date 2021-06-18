#include "numericfx.h"

NumericFx::NumericFx()
{
}

long NumericFx :: factorial(int number)
{
    long fact=1;
    if(number==0)
        return fact;
    else if(number<0)
        return 0;
    else{
        while(number>0)
        {
         fact*=number;
         number--;
        }
    }
    return fact;
}

