package com.facebook.soloader;

import android.content.Context;
import android.os.Parcel;
import com.facebook.soloader.m;
import com.facebook.soloader.v;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
/* compiled from: ApkSoSource.java */
/* loaded from: classes2.dex */
public class a extends m {
    private static final String C = "ApkSoSource";
    public static final int D = 1;
    private static final byte E = 2;
    private static final byte F = 0;
    private static final byte G = 1;
    private static final byte H = 2;
    private final int B;

    /* compiled from: ApkSoSource.java */
    /* renamed from: com.facebook.soloader.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    protected class C0094a extends m.c {

        /* renamed from: e  reason: collision with root package name */
        private File f13539e;

        /* renamed from: f  reason: collision with root package name */
        private final int f13540f;

        C0094a(m mVar) throws IOException {
            super(mVar);
            this.f13539e = new File(a.this.f13656n.getApplicationInfo().nativeLibraryDir);
            this.f13540f = a.this.B;
        }

        @Override // com.facebook.soloader.m.c
        protected boolean h(ZipEntry zipEntry, String str) {
            String name = zipEntry.getName();
            if (str.equals(a.this.f13657o)) {
                a.this.f13657o = null;
                String.format("allowing consideration of corrupted lib %s", str);
            } else if ((this.f13540f & 1) == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("allowing consideration of ");
                sb.append(name);
                sb.append(": self-extraction preferred");
            } else {
                File file = new File(this.f13539e, str);
                if (!file.isFile()) {
                    String.format("allowing considering of %s: %s not in system lib dir", name, str);
                } else {
                    long length = file.length();
                    long size = zipEntry.getSize();
                    if (length != size) {
                        String.format("allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK", file, Long.valueOf(length), Long.valueOf(size));
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("not allowing consideration of ");
                        sb2.append(name);
                        sb2.append(": deferring to libdir");
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public a(Context context, String str, int i2) {
        this(context, new File(context.getApplicationInfo().sourceDir), str, i2);
    }

    @Override // com.facebook.soloader.v
    protected byte[] l() throws IOException {
        File canonicalFile = this.f13622z.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(SysUtil.g(this.f13656n));
            if ((this.B & 1) == 0) {
                obtain.writeByte((byte) 0);
                return obtain.marshall();
            }
            String str = this.f13656n.getApplicationInfo().nativeLibraryDir;
            if (str == null) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            File canonicalFile2 = new File(str).getCanonicalFile();
            if (!canonicalFile2.exists()) {
                obtain.writeByte((byte) 1);
                return obtain.marshall();
            }
            obtain.writeByte((byte) 2);
            obtain.writeString(canonicalFile2.getPath());
            obtain.writeLong(canonicalFile2.lastModified());
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.facebook.soloader.m, com.facebook.soloader.v
    protected v.f o() throws IOException {
        return new C0094a(this);
    }

    public a(Context context, File file, String str, int i2) {
        super(context, str, file, "^lib/([^/]+)/([^/]+\\.so)$");
        this.B = i2;
    }
}
