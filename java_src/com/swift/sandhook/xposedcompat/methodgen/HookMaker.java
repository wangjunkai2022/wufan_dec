package com.swift.sandhook.xposedcompat.methodgen;

import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public interface HookMaker {
    Method getBackupMethod();

    Method getCallBackupMethod();

    Method getHookMethod();

    void start(Member member, XposedBridge.AdditionalHookInfo hookInfo, ClassLoader appClassLoader, String dexDirPath) throws Exception;
}
