package org.cocos2dx.lib;
/* loaded from: classes5.dex */
public class Cocos2dxLuaJavaBridge {
    public static native int callLuaFunctionWithString(int i2, String str);

    public static native int callLuaGlobalFunctionWithString(String str, String str2);

    public static native int releaseLuaFunction(int i2);

    public static native int retainLuaFunction(int i2);
}
