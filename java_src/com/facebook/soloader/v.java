package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import android.os.StrictMode;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: UnpackingSoSource.java */
/* loaded from: classes.dex */
public abstract class v extends com.facebook.soloader.c {

    /* renamed from: r  reason: collision with root package name */
    private static final String f13648r = "fb-UnpackingSoSource";

    /* renamed from: s  reason: collision with root package name */
    private static final String f13649s = "dso_state";

    /* renamed from: t  reason: collision with root package name */
    private static final String f13650t = "dso_lock";

    /* renamed from: u  reason: collision with root package name */
    private static final String f13651u = "dso_deps";

    /* renamed from: v  reason: collision with root package name */
    private static final String f13652v = "dso_manifest";

    /* renamed from: w  reason: collision with root package name */
    private static final byte f13653w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final byte f13654x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final byte f13655y = 1;

    /* renamed from: n  reason: collision with root package name */
    protected final Context f13656n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    protected String f13657o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String[] f13658p;

    /* renamed from: q  reason: collision with root package name */
    private final Map<String, Object> f13659q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f13660a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ byte[] f13661b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c f13662c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ File f13663d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ n f13664e;

        a(File file, byte[] bArr, c cVar, File file2, n nVar) {
            this.f13660a = file;
            this.f13661b = bArr;
            this.f13662c = cVar;
            this.f13663d = file2;
            this.f13664e = nVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f13660a, net.lingala.zip4j.util.e.f73015e0);
                try {
                    randomAccessFile.write(this.f13661b);
                    randomAccessFile.setLength(randomAccessFile.getFilePointer());
                    randomAccessFile.close();
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(new File(v.this.f13547j, v.f13652v), net.lingala.zip4j.util.e.f73015e0);
                    try {
                        this.f13662c.b(randomAccessFile2);
                        randomAccessFile2.close();
                        SysUtil.f(v.this.f13547j);
                        v.t(this.f13663d, (byte) 1);
                        StringBuilder sb = new StringBuilder();
                        sb.append("releasing dso store lock for ");
                        sb.append(v.this.f13547j);
                        sb.append(" (from syncer thread)");
                        this.f13664e.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f13666a;

        /* renamed from: b  reason: collision with root package name */
        public final String f13667b;

        public b(String str, String str2) {
            this.f13666a = str;
            this.f13667b = str2;
        }
    }

    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final b[] f13668a;

        public c(b[] bVarArr) {
            this.f13668a = bVarArr;
        }

        static final c a(DataInput dataInput) throws IOException {
            if (dataInput.readByte() == 1) {
                int readInt = dataInput.readInt();
                if (readInt >= 0) {
                    b[] bVarArr = new b[readInt];
                    for (int i2 = 0; i2 < readInt; i2++) {
                        bVarArr[i2] = new b(dataInput.readUTF(), dataInput.readUTF());
                    }
                    return new c(bVarArr);
                }
                throw new RuntimeException("illegal number of shared libraries");
            }
            throw new RuntimeException("wrong dso manifest version");
        }

        public final void b(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(1);
            dataOutput.writeInt(this.f13668a.length);
            int i2 = 0;
            while (true) {
                b[] bVarArr = this.f13668a;
                if (i2 >= bVarArr.length) {
                    return;
                }
                dataOutput.writeUTF(bVarArr[i2].f13666a);
                dataOutput.writeUTF(this.f13668a[i2].f13667b);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static final class d implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        public final b f13669a;

        /* renamed from: b  reason: collision with root package name */
        public final InputStream f13670b;

        public d(b bVar, InputStream inputStream) {
            this.f13669a = bVar;
            this.f13670b = inputStream;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f13670b.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static abstract class e implements Closeable {
        public abstract boolean a();

        public abstract d b() throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UnpackingSoSource.java */
    /* loaded from: classes2.dex */
    public static abstract class f implements Closeable {
        protected abstract c a() throws IOException;

        protected abstract e b() throws IOException;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public v(Context context, String str) {
        super(n(context, str), 1);
        this.f13659q = new HashMap();
        this.f13656n = context;
    }

    private void j(b[] bVarArr) throws IOException {
        String[] list = this.f13547j.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(f13649s) && !str.equals(f13650t) && !str.equals(f13651u) && !str.equals(f13652v)) {
                    boolean z3 = false;
                    for (int i2 = 0; !z3 && i2 < bVarArr.length; i2++) {
                        if (bVarArr[i2].f13666a.equals(str)) {
                            z3 = true;
                        }
                    }
                    if (!z3) {
                        File file = new File(this.f13547j, str);
                        StringBuilder sb = new StringBuilder();
                        sb.append("deleting unaccounted-for file ");
                        sb.append(file);
                        SysUtil.c(file);
                    }
                }
            }
            return;
        }
        throw new IOException("unable to list directory " + this.f13547j);
    }

    private void k(d dVar, byte[] bArr) throws IOException {
        RandomAccessFile randomAccessFile;
        StringBuilder sb = new StringBuilder();
        sb.append("extracting DSO ");
        sb.append(dVar.f13669a.f13666a);
        if (this.f13547j.setWritable(true, true)) {
            File file = new File(this.f13547j, dVar.f13669a.f13666a);
            try {
                randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
            } catch (IOException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("error overwriting ");
                sb2.append(file);
                sb2.append(" trying to delete and start over");
                SysUtil.c(file);
                randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
            }
            try {
                try {
                    int available = dVar.f13670b.available();
                    if (available > 1) {
                        SysUtil.d(randomAccessFile.getFD(), available);
                    }
                    SysUtil.a(randomAccessFile, dVar.f13670b, Integer.MAX_VALUE, bArr);
                    randomAccessFile.setLength(randomAccessFile.getFilePointer());
                    if (file.setExecutable(true, false)) {
                        return;
                    }
                    throw new IOException("cannot make file executable: " + file);
                } catch (IOException e4) {
                    SysUtil.c(file);
                    throw e4;
                }
            } finally {
                randomAccessFile.close();
            }
        }
        throw new IOException("cannot make directory writable for us: " + this.f13547j);
    }

    private Object m(String str) {
        Object obj;
        synchronized (this.f13659q) {
            obj = this.f13659q.get(str);
            if (obj == null) {
                obj = new Object();
                this.f13659q.put(str, obj);
            }
        }
        return obj;
    }

    public static File n(Context context, String str) {
        return new File(context.getApplicationInfo().dataDir + net.lingala.zip4j.util.e.F0 + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean q(com.facebook.soloader.n r11, int r12, byte[] r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.v.q(com.facebook.soloader.n, int, byte[]):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034 A[Catch: all -> 0x002d, TRY_ENTER, TryCatch #5 {all -> 0x002d, blocks: (B:4:0x0028, B:11:0x0034, B:12:0x003b, B:13:0x0045, B:15:0x004b, B:40:0x0091, B:18:0x0053, B:20:0x0058, B:22:0x0066, B:25:0x0077, B:29:0x007e), top: B:54:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #5 {all -> 0x002d, blocks: (B:4:0x0028, B:11:0x0034, B:12:0x003b, B:13:0x0045, B:15:0x004b, B:40:0x0091, B:18:0x0053, B:20:0x0058, B:22:0x0066, B:25:0x0077, B:29:0x007e), top: B:54:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void r(byte r9, com.facebook.soloader.v.c r10, com.facebook.soloader.v.e r11) throws java.io.IOException {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "regenerating DSO store "
            r0.append(r1)
            java.lang.Class r1 = r8.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
            java.io.File r0 = new java.io.File
            java.io.File r1 = r8.f13547j
            java.lang.String r2 = "dso_manifest"
            r0.<init>(r1, r2)
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile
            java.lang.String r2 = "rw"
            r1.<init>(r0, r2)
            r0 = 1
            if (r9 != r0) goto L30
            com.facebook.soloader.v$c r9 = com.facebook.soloader.v.c.a(r1)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L30
            goto L31
        L2d:
            r9 = move-exception
            goto Lae
        L30:
            r9 = 0
        L31:
            r2 = 0
            if (r9 != 0) goto L3b
            com.facebook.soloader.v$c r9 = new com.facebook.soloader.v$c     // Catch: java.lang.Throwable -> L2d
            com.facebook.soloader.v$b[] r3 = new com.facebook.soloader.v.b[r2]     // Catch: java.lang.Throwable -> L2d
            r9.<init>(r3)     // Catch: java.lang.Throwable -> L2d
        L3b:
            com.facebook.soloader.v$b[] r10 = r10.f13668a     // Catch: java.lang.Throwable -> L2d
            r8.j(r10)     // Catch: java.lang.Throwable -> L2d
            r10 = 32768(0x8000, float:4.5918E-41)
            byte[] r10 = new byte[r10]     // Catch: java.lang.Throwable -> L2d
        L45:
            boolean r3 = r11.a()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L95
            com.facebook.soloader.v$d r3 = r11.b()     // Catch: java.lang.Throwable -> L2d
            r4 = 1
            r5 = 0
        L51:
            if (r4 == 0) goto L7c
            com.facebook.soloader.v$b[] r6 = r9.f13668a     // Catch: java.lang.Throwable -> L7a
            int r7 = r6.length     // Catch: java.lang.Throwable -> L7a
            if (r5 >= r7) goto L7c
            r6 = r6[r5]     // Catch: java.lang.Throwable -> L7a
            java.lang.String r6 = r6.f13666a     // Catch: java.lang.Throwable -> L7a
            com.facebook.soloader.v$b r7 = r3.f13669a     // Catch: java.lang.Throwable -> L7a
            java.lang.String r7 = r7.f13666a     // Catch: java.lang.Throwable -> L7a
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L7a
            if (r6 == 0) goto L77
            com.facebook.soloader.v$b[] r6 = r9.f13668a     // Catch: java.lang.Throwable -> L7a
            r6 = r6[r5]     // Catch: java.lang.Throwable -> L7a
            java.lang.String r6 = r6.f13667b     // Catch: java.lang.Throwable -> L7a
            com.facebook.soloader.v$b r7 = r3.f13669a     // Catch: java.lang.Throwable -> L7a
            java.lang.String r7 = r7.f13667b     // Catch: java.lang.Throwable -> L7a
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L7a
            if (r6 == 0) goto L77
            r4 = 0
        L77:
            int r5 = r5 + 1
            goto L51
        L7a:
            r9 = move-exception
            goto L82
        L7c:
            if (r4 == 0) goto L8f
            r8.k(r3, r10)     // Catch: java.lang.Throwable -> L7a
            goto L8f
        L82:
            throw r9     // Catch: java.lang.Throwable -> L83
        L83:
            r10 = move-exception
            if (r3 == 0) goto L8e
            r3.close()     // Catch: java.lang.Throwable -> L8a
            goto L8e
        L8a:
            r11 = move-exception
            r9.addSuppressed(r11)     // Catch: java.lang.Throwable -> L2d
        L8e:
            throw r10     // Catch: java.lang.Throwable -> L2d
        L8f:
            if (r3 == 0) goto L45
            r3.close()     // Catch: java.lang.Throwable -> L2d
            goto L45
        L95:
            r1.close()
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "Finished regenerating DSO store "
            r9.append(r10)
            java.lang.Class r10 = r8.getClass()
            java.lang.String r10 = r10.getName()
            r9.append(r10)
            return
        Lae:
            throw r9     // Catch: java.lang.Throwable -> Laf
        Laf:
            r10 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> Lb4
            goto Lb8
        Lb4:
            r11 = move-exception
            r9.addSuppressed(r11)
        Lb8:
            goto Lba
        Lb9:
            throw r10
        Lba:
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.v.r(byte, com.facebook.soloader.v$c, com.facebook.soloader.v$e):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void t(File file, byte b4) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b4);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // com.facebook.soloader.t
    public String[] b() {
        String[] strArr = this.f13658p;
        return strArr == null ? super.b() : strArr;
    }

    @Override // com.facebook.soloader.c, com.facebook.soloader.t
    public int c(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        int h4;
        synchronized (m(str)) {
            h4 = h(str, i2, this.f13547j, threadPolicy);
        }
        return h4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.t
    public void d(int i2) throws IOException {
        SysUtil.j(this.f13547j);
        n a4 = n.a(new File(this.f13547j, f13650t));
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("locked dso store ");
            sb.append(this.f13547j);
            if (q(a4, i2, l())) {
                a4 = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("dso store is up-to-date: ");
                sb2.append(this.f13547j);
            }
        } finally {
            if (a4 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("releasing dso store lock for ");
                sb3.append(this.f13547j);
                a4.close();
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("not releasing dso store lock for ");
                sb4.append(this.f13547j);
                sb4.append(" (syncer thread started)");
            }
        }
    }

    protected byte[] l() throws IOException {
        Parcel obtain = Parcel.obtain();
        f o3 = o();
        try {
            b[] bVarArr = o3.a().f13668a;
            obtain.writeByte((byte) 1);
            obtain.writeInt(bVarArr.length);
            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                obtain.writeString(bVarArr[i2].f13666a);
                obtain.writeString(bVarArr[i2].f13667b);
            }
            o3.close();
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            return marshall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (o3 != null) {
                    try {
                        o3.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    protected abstract f o() throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void p(String str) throws IOException {
        synchronized (m(str)) {
            this.f13657o = str;
            d(2);
        }
    }

    public void s(String[] strArr) {
        this.f13658p = strArr;
    }

    protected v(Context context, File file) {
        super(file, 1);
        this.f13659q = new HashMap();
        this.f13656n = context;
    }
}
