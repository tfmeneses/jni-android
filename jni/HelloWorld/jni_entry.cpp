#include "com_jnisample_JNIHelloWorld_JNIActivity.h"
#include "helloworld.h"

JNIEXPORT jstring JNICALL Java_com_jnisample_JNIHelloWorld_JNIActivity_getNativeMessage
  (JNIEnv* pEnv, jobject pThis)
{
    HelloWorld hello;
    return pEnv->NewStringUTF(hello.getNativeString().c_str());
}
