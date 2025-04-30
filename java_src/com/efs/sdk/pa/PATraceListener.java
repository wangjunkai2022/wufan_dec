package com.efs.sdk.pa;
/* loaded from: classes2.dex */
public interface PATraceListener {
    void onAnrTrace();

    void onCheck(boolean z3);

    void onUnexcept(Object obj);
}
