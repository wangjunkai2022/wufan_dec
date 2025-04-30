package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* compiled from: ExoSoSource.java */
/* loaded from: classes2.dex */
public final class l extends v {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoSoSource.java */
    /* loaded from: classes2.dex */
    public final class b extends v.f {

        /* renamed from: a  reason: collision with root package name */
        private final c[] f13617a;

        /* compiled from: ExoSoSource.java */
        /* loaded from: classes2.dex */
        private final class a extends v.e {

            /* renamed from: a  reason: collision with root package name */
            private int f13619a;

            private a() {
            }

            @Override // com.facebook.soloader.v.e
            public boolean a() {
                return this.f13619a < b.this.f13617a.length;
            }

            @Override // com.facebook.soloader.v.e
            public v.d b() throws IOException {
                c[] cVarArr = b.this.f13617a;
                int i2 = this.f13619a;
                this.f13619a = i2 + 1;
                c cVar = cVarArr[i2];
                FileInputStream fileInputStream = new FileInputStream(cVar.f13621c);
                try {
                    return new v.d(cVar, fileInputStream);
                } catch (Throwable th) {
                    fileInputStream.close();
                    throw th;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00e4, code lost:
            throw new java.lang.RuntimeException("illegal line in exopackage metadata: [" + r11 + "]");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        b(com.facebook.soloader.v r19) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.l.b.<init>(com.facebook.soloader.l, com.facebook.soloader.v):void");
        }

        @Override // com.facebook.soloader.v.f
        protected v.c a() throws IOException {
            return new v.c(this.f13617a);
        }

        @Override // com.facebook.soloader.v.f
        protected v.e b() throws IOException {
            return new a();
        }
    }

    /* compiled from: ExoSoSource.java */
    /* loaded from: classes2.dex */
    private static final class c extends v.b {

        /* renamed from: c  reason: collision with root package name */
        final File f13621c;

        c(String str, String str2, File file) {
            super(str, str2);
            this.f13621c = file;
        }
    }

    public l(Context context, String str) {
        super(context, str);
    }

    @Override // com.facebook.soloader.v
    protected v.f o() throws IOException {
        return new b(this);
    }
}
