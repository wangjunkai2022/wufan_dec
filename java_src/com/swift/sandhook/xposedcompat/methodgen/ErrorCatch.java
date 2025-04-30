package com.swift.sandhook.xposedcompat.methodgen;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.xposedcompat.XposedCompat;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class ErrorCatch {
    public static Object callOriginError(Member originMethod, Method backupMethod, Object thiz, Object[] args) throws Throwable {
        if (XposedCompat.retryWhenCallOriginError) {
            StringBuilder sb = new StringBuilder();
            sb.append("method <");
            sb.append(originMethod.toString());
            sb.append("> use invoke to call origin!");
            return SandHook.callOriginMethod(originMethod, backupMethod, thiz, args);
        }
        return null;
    }
}
