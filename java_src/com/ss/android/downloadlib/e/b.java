package com.ss.android.downloadlib.e;

import android.text.TextUtils;
import androidx.annotation.NonNull;
/* compiled from: Safe.java */
/* loaded from: classes4.dex */
public class b {

    /* compiled from: Safe.java */
    /* loaded from: classes4.dex */
    public interface a<T> {
        T b();
    }

    public static <T> T a(boolean z3, String str, @NonNull a<T> aVar) {
        try {
            return aVar.b();
        } catch (Throwable th) {
            if (!(th instanceof com.ss.android.downloadlib.e.a)) {
                c.a().a(z3, th, str);
                if (TextUtils.isEmpty(str)) {
                    throw th;
                }
                return null;
            }
            throw th;
        }
    }

    public static <T> T a(a<T> aVar) {
        return (T) a(true, null, aVar);
    }

    public static void a(final Runnable runnable) {
        a(new a<Void>() { // from class: com.ss.android.downloadlib.e.b.1
            @Override // com.ss.android.downloadlib.e.b.a
            /* renamed from: a */
            public Void b() {
                runnable.run();
                return null;
            }
        });
    }
}
