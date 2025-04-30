package com.xinzhu.overmind.utils;

import java.io.Closeable;
/* compiled from: IoUtils.java */
/* loaded from: classes.dex */
public class l {
    private l() {
    }

    public static void a(Closeable... closeables) {
        if (closeables == null || closeables.length == 0) {
            return;
        }
        for (Closeable closeable : closeables) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static void b(AutoCloseable closeable) {
        try {
            closeable.close();
        } catch (Exception unused) {
        }
    }
}
