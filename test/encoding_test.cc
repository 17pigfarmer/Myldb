//static_cast截断高字节部分 小端为低地址对低字节

#include <stdint.h>
#include <string.h>
#include <iostream>
void test(char* buf,uint32_t value);

void test2(char* buf,uint32_t value);

int main(){
#if __BYTE_ORDER ==__LITTLE_ENDIAN
    std::cout<<1<<std::endl;
#else
    std::cout<<0<<std::endl;
#endif
    char buf[3] = {0,0,0};
    uint32_t value = 0xbfff;
    test(buf,value);
    return 0;
}

void test2(char* buf,uint32_t value){
    memcpy(buf,&value,sizeof(value));
}

void test(char* buf,uint32_t value){
    buf[0] = static_cast<char>(value);
    buf[1] = static_cast<char>(value>>8);
}

