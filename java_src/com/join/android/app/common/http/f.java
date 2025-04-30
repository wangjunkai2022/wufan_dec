package com.join.android.app.common.http;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
/* compiled from: ProgressRequestBody.java */
/* loaded from: classes.dex */
public class f extends RequestBody {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBody f17064a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17065b;

    /* renamed from: c  reason: collision with root package name */
    private BufferedSink f17066c;

    /* renamed from: d  reason: collision with root package name */
    String f17067d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProgressRequestBody.java */
    /* loaded from: classes.dex */
    public class a extends ForwardingSink {

        /* renamed from: a  reason: collision with root package name */
        long f17068a;

        /* renamed from: b  reason: collision with root package name */
        long f17069b;

        a(Sink sink) {
            super(sink);
            this.f17068a = 0L;
            this.f17069b = 0L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j4) throws IOException {
            super.write(buffer, j4);
            if (this.f17069b == 0) {
                this.f17069b = f.this.contentLength();
            }
            this.f17068a += j4;
            g gVar = f.this.f17065b;
            long j5 = this.f17068a;
            long j6 = this.f17069b;
            gVar.onRequestProgress(j5, j6, j5 == j6, f.this.f17067d);
        }
    }

    public f(RequestBody requestBody, g gVar, String str) {
        this.f17064a = requestBody;
        this.f17065b = gVar;
        this.f17067d = str;
    }

    private Sink b(Sink sink) {
        return new a(sink);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f17064a.contentLength();
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.f17064a.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        if (this.f17066c == null) {
            this.f17066c = Okio.buffer(b(bufferedSink));
        }
        this.f17064a.writeTo(this.f17066c);
        this.f17066c.flush();
    }
}
