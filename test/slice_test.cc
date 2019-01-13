#include <iostream>
#include "myldb/slice.h"


int main(){
    myldb::Slice slice("this is a slice");
    std::cout<<"Slice is "<<slice.size()<<"long."<<std::endl;
    std::cout<<slice[4]<<slice[5]<<slice[6]<<slice[7]<<std::endl;
    slice.clear();
    std::cout<<slice.empty()<<std::endl;
    return 0;
}
    
