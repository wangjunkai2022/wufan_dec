package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.v;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.annotation.Nullable;
/* compiled from: ExtractFromZipSoSource.java */
/* loaded from: classes2.dex */
public class m extends v {
    protected final String A;

    /* renamed from: z  reason: collision with root package name */
    protected final File f13622z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes2.dex */
    public static final class b extends v.b implements Comparable {

        /* renamed from: c  reason: collision with root package name */
        final ZipEntry f13623c;

        /* renamed from: d  reason: collision with root package name */
        final int f13624d;

        b(String str, ZipEntry zipEntry, int i2) {
            super(str, m(zipEntry));
            this.f13623c = zipEntry;
            this.f13624d = i2;
        }

        private static String m(ZipEntry zipEntry) {
            return String.format("pseudo-zip-hash-1-%s-%s-%s-%s", zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc()));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f13666a.compareTo(((b) obj).f13666a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes.dex */
    public class c extends v.f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private b[] f13625a;

        /* renamed from: b  reason: collision with root package name */
        private final ZipFile f13626b;

        /* renamed from: c  reason: collision with root package name */
        private final v f13627c;

        /* compiled from: ExtractFromZipSoSource.java */
        /* loaded from: classes2.dex */
        private final class a extends v.e {

            /* renamed from: a  reason: collision with root package name */
            private int f13629a;

            private a() {
            }

            @Override // com.facebook.soloader.v.e
            public boolean a() {
                c.this.g();
                return this.f13629a < c.this.f13625a.length;
            }

            @Override // com.facebook.soloader.v.e
            public v.d b() throws IOException {
                c.this.g();
                b[] bVarArr = c.this.f13625a;
                int i2 = this.f13629a;
                this.f13629a = i2 + 1;
                b bVar = bVarArr[i2];
                InputStream inputStream = c.this.f13626b.getInputStream(bVar.f13623c);
                try {
                    return new v.d(bVar, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(v vVar) throws IOException {
            this.f13626b = new ZipFile(m.this.f13622z);
            this.f13627c = vVar;
        }

        @Override // com.facebook.soloader.v.f
        protected final v.c a() throws IOException {
            return new v.c(g());
        }

        @Override // com.facebook.soloader.v.f
        protected final v.e b() throws IOException {
            return new a();
        }

        @Override // com.facebook.soloader.v.f, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f13626b.close();
        }

        final b[] g() {
            if (this.f13625a == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap hashMap = new HashMap();
                Pattern compile = Pattern.compile(m.this.A);
                String[] h4 = SysUtil.h();
                Enumeration<? extends ZipEntry> entries = this.f13626b.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    Matcher matcher = compile.matcher(nextElement.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        int e4 = SysUtil.e(h4, group);
                        if (e4 >= 0) {
                            linkedHashSet.add(group);
                            b bVar = (b) hashMap.get(group2);
                            if (bVar == null || e4 < bVar.f13624d) {
                                hashMap.put(group2, new b(group2, nextElement, e4));
                            }
                        }
                    }
                }
                this.f13627c.s((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                b[] bVarArr = (b[]) hashMap.values().toArray(new b[hashMap.size()]);
                Arrays.sort(bVarArr);
                int i2 = 0;
                for (int i4 = 0; i4 < bVarArr.length; i4++) {
                    b bVar2 = bVarArr[i4];
                    if (h(bVar2.f13623c, bVar2.f13666a)) {
                        i2++;
                    } else {
                        bVarArr[i4] = null;
                    }
                }
                b[] bVarArr2 = new b[i2];
                int i5 = 0;
                for (b bVar3 : bVarArr) {
                    if (bVar3 != null) {
                        bVarArr2[i5] = bVar3;
                        i5++;
                    }
                }
                this.f13625a = bVarArr2;
            }
            return this.f13625a;
        }

        protected boolean h(ZipEntry zipEntry, String str) {
            return true;
        }
    }

    public m(Context context, String str, File file, String str2) {
        super(context, str);
        this.f13622z = file;
        this.A = str2;
    }

    @Override // com.facebook.soloader.v
    protected v.f o() throws IOException {
        return new c(this);
    }
}
