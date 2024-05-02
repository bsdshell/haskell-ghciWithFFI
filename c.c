#include<stdio.h>

// implementation is in Haskell file
void callMeFromC(void);

void callMeFromHaskell(void){
  printf("callMeFromHaskell\n");
  callMeFromC();
}
