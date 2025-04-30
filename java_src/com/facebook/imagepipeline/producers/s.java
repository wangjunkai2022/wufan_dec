package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.producers.d0;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* compiled from: HttpUrlConnectionNetworkFetcher.java */
/* loaded from: classes2.dex */
public class s extends c<r> {

    /* renamed from: c  reason: collision with root package name */
    private static final int f13213c = 3;

    /* renamed from: d  reason: collision with root package name */
    private static final int f13214d = 5;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13215e = 307;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13216f = 308;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13217g = 30000;

    /* renamed from: a  reason: collision with root package name */
    private int f13218a;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f13219b;

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r f13220a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d0.a f13221b;

        a(r rVar, d0.a aVar) {
            this.f13220a = rVar;
            this.f13221b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.this.h(this.f13220a, this.f13221b);
        }
    }

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes2.dex */
    class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Future f13223a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d0.a f13224b;

        b(Future future, d0.a aVar) {
            this.f13223a = future;
            this.f13224b = aVar;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.l0
        public void b() {
            if (this.f13223a.cancel(false)) {
                this.f13224b.a();
            }
        }
    }

    public s() {
        this(Executors.newFixedThreadPool(3));
    }

    private HttpURLConnection f(Uri uri, int i2) throws IOException {
        HttpURLConnection k4 = k(uri);
        k4.setConnectTimeout(this.f13218a);
        int responseCode = k4.getResponseCode();
        if (j(responseCode)) {
            return k4;
        }
        if (i(responseCode)) {
            String headerField = k4.getHeaderField("Location");
            k4.disconnect();
            Uri parse = headerField == null ? null : Uri.parse(headerField);
            String scheme = uri.getScheme();
            if (i2 > 0 && parse != null && !parse.getScheme().equals(scheme)) {
                return f(parse, i2 - 1);
            }
            throw new IOException(i2 == 0 ? g("URL %s follows too many redirects", uri.toString()) : g("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
        }
        k4.disconnect();
        throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
    }

    private static String g(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }

    private static boolean i(int i2) {
        if (i2 == 307 || i2 == 308) {
            return true;
        }
        switch (i2) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private static boolean j(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @VisibleForTesting
    static HttpURLConnection k(Uri uri) throws IOException {
        return (HttpURLConnection) com.facebook.common.util.f.p(uri).openConnection();
    }

    @Override // com.facebook.imagepipeline.producers.d0
    public void a(r rVar, d0.a aVar) {
        rVar.getContext().d(new b(this.f13219b.submit(new a(rVar, aVar)), aVar));
    }

    @Override // com.facebook.imagepipeline.producers.d0
    public r e(Consumer<com.facebook.imagepipeline.image.e> consumer, k0 k0Var) {
        return new r(consumer, k0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.facebook.common.internal.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void h(com.facebook.imagepipeline.producers.r r3, com.facebook.imagepipeline.producers.d0.a r4) {
        /*
            r2 = this;
            r0 = 0
            android.net.Uri r3 = r3.g()     // Catch: java.lang.Throwable -> L21 java.io.IOException -> L24
            r1 = 5
            java.net.HttpURLConnection r3 = r2.f(r3, r1)     // Catch: java.lang.Throwable -> L21 java.io.IOException -> L24
            if (r3 == 0) goto L17
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L36
            r1 = -1
            r4.b(r0, r1)     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L36
            goto L17
        L15:
            r1 = move-exception
            goto L26
        L17:
            if (r0 == 0) goto L1e
            r0.close()     // Catch: java.io.IOException -> L1d
            goto L1e
        L1d:
        L1e:
            if (r3 == 0) goto L35
            goto L32
        L21:
            r4 = move-exception
            r3 = r0
            goto L37
        L24:
            r1 = move-exception
            r3 = r0
        L26:
            r4.onFailure(r1)     // Catch: java.lang.Throwable -> L36
            if (r0 == 0) goto L30
            r0.close()     // Catch: java.io.IOException -> L2f
            goto L30
        L2f:
        L30:
            if (r3 == 0) goto L35
        L32:
            r3.disconnect()
        L35:
            return
        L36:
            r4 = move-exception
        L37:
            if (r0 == 0) goto L3e
            r0.close()     // Catch: java.io.IOException -> L3d
            goto L3e
        L3d:
        L3e:
            if (r3 == 0) goto L43
            r3.disconnect()
        L43:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.s.h(com.facebook.imagepipeline.producers.r, com.facebook.imagepipeline.producers.d0$a):void");
    }

    public s(int i2) {
        this(Executors.newFixedThreadPool(3));
        this.f13218a = i2;
    }

    @VisibleForTesting
    s(ExecutorService executorService) {
        this.f13219b = executorService;
    }
}
