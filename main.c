#include <stdio.h>
#include "jisp.h"

int main(int argc, char **argv) {
  printf("jisp version: %d\n", jisp_get_version());
  return 0;
}
