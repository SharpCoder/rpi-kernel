#ifndef __META_H_
#define __META_H_

struct meta {
   const char*  AUTHOR;
   const char*  EMAIL;
   const char*  KERNEL_NAME;
   const char*  KERNEL_NAME_CODE;
   const char*  KERNEL_REPO;
   const char*  BUILD_DATE;
   const char*  VERSION;
   const char*  LOGO_TEXT;
   int  LOGO_WIDTH;
   int  LOGO_HEIGHT;
};


static meta getBuildInfo() {
	meta properties;
	properties.AUTHOR="SharpCoder";
	properties.EMAIL="Josuha@debuggle.com";
	properties.KERNEL_NAME="0xrpi Kernel";
	properties.KERNEL_NAME_CODE="Mindflayer";
	properties.KERNEL_REPO="https://github.com/SharpCoder/rpi-kernel";
	properties.BUILD_DATE="2013-03-21  12:11:20 PM";
	properties.VERSION="0.0.100";
	properties.LOGO_TEXT="";
	properties.LOGO_WIDTH= 30;
	properties.LOGO_HEIGHT= 50;
	return properties;
}

#endif
