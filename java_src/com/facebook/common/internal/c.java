package com.facebook.common.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
/* compiled from: Closeables.java */
/* loaded from: classes.dex */
public final class c {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final Logger f11690a = Logger.getLogger(c.class.getName());

    private c() {
    }

    public static void a(@Nullable Closeable closeable, boolean z3) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e4) {
            if (z3) {
                f11690a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e4);
                return;
            }
            throw e4;
        }
    }

    public static void b(@Nullable InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public static void c(@Nullable Reader reader) {
        try {
            a(reader, true);
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }
}
