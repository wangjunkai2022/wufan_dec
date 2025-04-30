package it.sephiroth.android.library.util;

import android.os.Build;
import android.view.View;
/* compiled from: ViewHelperFactory.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f70414a = "ViewHelper";

    /* compiled from: ViewHelperFactory.java */
    /* loaded from: classes5.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        protected View f70415a;

        protected a(View view) {
            this.f70415a = view;
        }

        public abstract boolean a();

        public abstract void b(Runnable runnable);

        public abstract void c(int i2);
    }

    /* compiled from: ViewHelperFactory.java */
    /* renamed from: it.sephiroth.android.library.util.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0473b extends a {
        public C0473b(View view) {
            super(view);
        }

        @Override // it.sephiroth.android.library.util.b.a
        public boolean a() {
            return false;
        }

        @Override // it.sephiroth.android.library.util.b.a
        public void b(Runnable runnable) {
            this.f70415a.post(runnable);
        }

        @Override // it.sephiroth.android.library.util.b.a
        public void c(int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append("setScrollX: ");
            sb.append(i2);
            View view = this.f70415a;
            view.scrollTo(i2, view.getScrollY());
        }
    }

    public static final a a(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16) {
            return new a3.a(view);
        }
        if (i2 >= 14) {
            return new z2.a(view);
        }
        return new C0473b(view);
    }
}
