package com.alipay.android.phone.mrpc.core;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class f0 {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
