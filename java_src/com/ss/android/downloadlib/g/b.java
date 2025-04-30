package com.ss.android.downloadlib.g;

import android.annotation.TargetApi;
import android.os.AsyncTask;
/* compiled from: AsyncTaskUtils.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static final a f57506a = new C0301b();

    /* compiled from: AsyncTaskUtils.java */
    /* loaded from: classes4.dex */
    private static class a {
        private a() {
        }

        public <T> void a(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.execute(tArr);
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: AsyncTaskUtils.java */
    @TargetApi(11)
    /* renamed from: com.ss.android.downloadlib.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0301b extends a {
        private C0301b() {
            super();
        }

        @Override // com.ss.android.downloadlib.g.b.a
        public <T> void a(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    public static <T> void a(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        f57506a.a(asyncTask, tArr);
    }
}
