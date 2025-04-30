package com.facebook.common.internal;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: Throwables.java */
/* loaded from: classes.dex */
public final class m {
    private m() {
    }

    public static List<Throwable> a(Throwable th) {
        h.i(th);
        ArrayList arrayList = new ArrayList(4);
        while (th != null) {
            arrayList.add(th);
            th = th.getCause();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static Throwable b(Throwable th) {
        while (true) {
            Throwable cause = th.getCause();
            if (cause == null) {
                return th;
            }
            th = cause;
        }
    }

    public static String c(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static RuntimeException d(Throwable th) {
        f((Throwable) h.i(th));
        throw new RuntimeException(th);
    }

    public static <X extends Throwable> void e(@Nullable Throwable th, Class<X> cls) throws Throwable {
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    public static void f(@Nullable Throwable th) {
        e(th, Error.class);
        e(th, RuntimeException.class);
    }

    public static <X extends Throwable> void g(@Nullable Throwable th, Class<X> cls) throws Throwable {
        e(th, cls);
        f(th);
    }

    public static <X1 extends Throwable, X2 extends Throwable> void h(@Nullable Throwable th, Class<X1> cls, Class<X2> cls2) throws Throwable, Throwable {
        h.i(cls2);
        e(th, cls);
        g(th, cls2);
    }
}
