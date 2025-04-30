package com.facebook.imagepipeline.image;

import java.io.Closeable;
/* compiled from: CloseableImage.java */
/* loaded from: classes2.dex */
public abstract class c implements Closeable, f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f12755a = "CloseableImage";

    @Override // com.facebook.imagepipeline.image.f
    public h b() {
        return g.f12777d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    public abstract int d();

    public boolean e() {
        return false;
    }

    protected void finalize() throws Throwable {
        if (isClosed()) {
            return;
        }
        com.facebook.common.logging.a.q0(f12755a, "finalize: %s %x still open.", getClass().getSimpleName(), Integer.valueOf(System.identityHashCode(this)));
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public abstract boolean isClosed();
}
