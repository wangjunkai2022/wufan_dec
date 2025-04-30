package com.facebook.cache.disk;

import android.os.Environment;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.c;
import com.facebook.common.file.FileUtils;
import com.facebook.common.internal.VisibleForTesting;
import com.join.mgps.Util.g0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DefaultDiskStorage implements com.facebook.cache.disk.c {

    /* renamed from: g  reason: collision with root package name */
    private static final String f11553g = ".cnt";

    /* renamed from: h  reason: collision with root package name */
    private static final String f11554h = ".tmp";

    /* renamed from: i  reason: collision with root package name */
    private static final String f11555i = "v2";

    /* renamed from: j  reason: collision with root package name */
    private static final int f11556j = 100;

    /* renamed from: a  reason: collision with root package name */
    private final File f11558a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11559b;

    /* renamed from: c  reason: collision with root package name */
    private final File f11560c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f11561d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.common.time.a f11562e;

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f11552f = DefaultDiskStorage.class;

    /* renamed from: k  reason: collision with root package name */
    static final long f11557k = TimeUnit.MINUTES.toMillis(30);

    /* loaded from: classes2.dex */
    public @interface FileType {
        public static final String CONTENT = ".cnt";
        public static final String TEMP = ".tmp";
    }

    /* loaded from: classes2.dex */
    private static class IncompleteFileException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final long f11563a;

        /* renamed from: b  reason: collision with root package name */
        public final long f11564b;

        public IncompleteFileException(long j4, long j5) {
            super("File was not written completely. Expected: " + j4 + ", found: " + j5);
            this.f11563a = j4;
            this.f11564b = j5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements b0.b {

        /* renamed from: a  reason: collision with root package name */
        private final List<c.InterfaceC0059c> f11565a;

        private b() {
            this.f11565a = new ArrayList();
        }

        @Override // b0.b
        public void a(File file) {
        }

        @Override // b0.b
        public void b(File file) {
            d u3 = DefaultDiskStorage.this.u(file);
            if (u3 == null || u3.f11571a != ".cnt") {
                return;
            }
            this.f11565a.add(new c(u3.f11572b, file));
        }

        @Override // b0.b
        public void c(File file) {
        }

        public List<c.InterfaceC0059c> d() {
            return Collections.unmodifiableList(this.f11565a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class c implements c.InterfaceC0059c {

        /* renamed from: a  reason: collision with root package name */
        private final String f11567a;

        /* renamed from: b  reason: collision with root package name */
        private final a0.c f11568b;

        /* renamed from: c  reason: collision with root package name */
        private long f11569c;

        /* renamed from: d  reason: collision with root package name */
        private long f11570d;

        @Override // com.facebook.cache.disk.c.InterfaceC0059c
        /* renamed from: b */
        public a0.c a() {
            return this.f11568b;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0059c
        public String getId() {
            return this.f11567a;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0059c
        public long getSize() {
            if (this.f11569c < 0) {
                this.f11569c = this.f11568b.size();
            }
            return this.f11569c;
        }

        @Override // com.facebook.cache.disk.c.InterfaceC0059c
        public long getTimestamp() {
            if (this.f11570d < 0) {
                this.f11570d = this.f11568b.c().lastModified();
            }
            return this.f11570d;
        }

        private c(String str, File file) {
            com.facebook.common.internal.h.i(file);
            this.f11567a = (String) com.facebook.common.internal.h.i(str);
            this.f11568b = a0.c.b(file);
            this.f11569c = -1L;
            this.f11570d = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {
        @FileType

        /* renamed from: a  reason: collision with root package name */
        public final String f11571a;

        /* renamed from: b  reason: collision with root package name */
        public final String f11572b;

        @Nullable
        public static d b(File file) {
            String s3;
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf > 0 && (s3 = DefaultDiskStorage.s(name.substring(lastIndexOf))) != null) {
                String substring = name.substring(0, lastIndexOf);
                if (s3.equals(".tmp")) {
                    int lastIndexOf2 = substring.lastIndexOf(46);
                    if (lastIndexOf2 <= 0) {
                        return null;
                    }
                    substring = substring.substring(0, lastIndexOf2);
                }
                return new d(s3, substring);
            }
            return null;
        }

        public File a(File file) throws IOException {
            return File.createTempFile(this.f11572b + g0.f27568a, ".tmp", file);
        }

        public String c(String str) {
            return str + File.separator + this.f11572b + this.f11571a;
        }

        public String toString() {
            return this.f11571a + "(" + this.f11572b + ")";
        }

        private d(@FileType String str, String str2) {
            this.f11571a = str;
            this.f11572b = str2;
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    class e implements c.d {

        /* renamed from: a  reason: collision with root package name */
        private final String f11573a;
        @VisibleForTesting

        /* renamed from: b  reason: collision with root package name */
        final File f11574b;

        public e(String str, File file) {
            this.f11573a = str;
            this.f11574b = file;
        }

        @Override // com.facebook.cache.disk.c.d
        public boolean a() {
            return !this.f11574b.exists() || this.f11574b.delete();
        }

        @Override // com.facebook.cache.disk.c.d
        public void b(com.facebook.cache.common.j jVar, Object obj) throws IOException {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.f11574b);
                try {
                    com.facebook.common.internal.d dVar = new com.facebook.common.internal.d(fileOutputStream);
                    jVar.a(dVar);
                    dVar.flush();
                    long a4 = dVar.a();
                    fileOutputStream.close();
                    if (this.f11574b.length() != a4) {
                        throw new IncompleteFileException(a4, this.f11574b.length());
                    }
                } catch (Throwable th) {
                    fileOutputStream.close();
                    throw th;
                }
            } catch (FileNotFoundException e4) {
                DefaultDiskStorage.this.f11561d.a(CacheErrorLogger.CacheErrorCategory.WRITE_UPDATE_FILE_NOT_FOUND, DefaultDiskStorage.f11552f, "updateResource", e4);
                throw e4;
            }
        }

        @Override // com.facebook.cache.disk.c.d
        public a0.a c(Object obj) throws IOException {
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory;
            File q3 = DefaultDiskStorage.this.q(this.f11573a);
            try {
                FileUtils.b(this.f11574b, q3);
                if (q3.exists()) {
                    q3.setLastModified(DefaultDiskStorage.this.f11562e.now());
                }
                return a0.c.b(q3);
            } catch (FileUtils.RenameException e4) {
                Throwable cause = e4.getCause();
                if (cause != null) {
                    if (!(cause instanceof FileUtils.ParentDirNotFoundException)) {
                        if (cause instanceof FileNotFoundException) {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
                        } else {
                            cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                        }
                    } else {
                        cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
                    }
                } else {
                    cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_RENAME_FILE_OTHER;
                }
                DefaultDiskStorage.this.f11561d.a(cacheErrorCategory, DefaultDiskStorage.f11552f, "commit", e4);
                throw e4;
            }
        }
    }

    /* loaded from: classes2.dex */
    private class f implements b0.b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f11576a;

        private f() {
        }

        private boolean d(File file) {
            d u3 = DefaultDiskStorage.this.u(file);
            if (u3 == null) {
                return false;
            }
            String str = u3.f11571a;
            if (str == ".tmp") {
                return e(file);
            }
            com.facebook.common.internal.h.o(str == ".cnt");
            return true;
        }

        private boolean e(File file) {
            return file.lastModified() > DefaultDiskStorage.this.f11562e.now() - DefaultDiskStorage.f11557k;
        }

        @Override // b0.b
        public void a(File file) {
            if (!DefaultDiskStorage.this.f11558a.equals(file) && !this.f11576a) {
                file.delete();
            }
            if (this.f11576a && file.equals(DefaultDiskStorage.this.f11560c)) {
                this.f11576a = false;
            }
        }

        @Override // b0.b
        public void b(File file) {
            if (this.f11576a && d(file)) {
                return;
            }
            file.delete();
        }

        @Override // b0.b
        public void c(File file) {
            if (this.f11576a || !file.equals(DefaultDiskStorage.this.f11560c)) {
                return;
            }
            this.f11576a = true;
        }
    }

    public DefaultDiskStorage(File file, int i2, CacheErrorLogger cacheErrorLogger) {
        com.facebook.common.internal.h.i(file);
        this.f11558a = file;
        this.f11559b = y(file, cacheErrorLogger);
        this.f11560c = new File(file, x(i2));
        this.f11561d = cacheErrorLogger;
        A();
        this.f11562e = com.facebook.common.time.d.a();
    }

    private void A() {
        boolean z3 = true;
        if (this.f11558a.exists()) {
            if (this.f11560c.exists()) {
                z3 = false;
            } else {
                b0.a.b(this.f11558a);
            }
        }
        if (z3) {
            try {
                FileUtils.a(this.f11560c);
            } catch (FileUtils.CreateDirectoryException unused) {
                CacheErrorLogger cacheErrorLogger = this.f11561d;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR;
                Class<?> cls = f11552f;
                cacheErrorLogger.a(cacheErrorCategory, cls, "version directory could not be created: " + this.f11560c, null);
            }
        }
    }

    private String B(byte[] bArr) {
        return bArr.length >= 2 ? (bArr[0] == -1 && bArr[1] == -40) ? "jpg" : (bArr[0] == -119 && bArr[1] == 80) ? "png" : (bArr[0] == 82 && bArr[1] == 73) ? "webp" : (bArr[0] == 71 && bArr[1] == 73) ? "gif" : "undefined" : "undefined";
    }

    private long o(File file) {
        if (file.exists()) {
            long length = file.length();
            if (file.delete()) {
                return length;
            }
            return -1L;
        }
        return 0L;
    }

    private c.b p(c.InterfaceC0059c interfaceC0059c) throws IOException {
        c cVar = (c) interfaceC0059c;
        byte[] read = cVar.a().read();
        String B = B(read);
        return new c.b(cVar.a().c().getPath(), B, (float) cVar.getSize(), (!B.equals("undefined") || read.length < 4) ? "" : String.format(null, "0x%02X 0x%02X 0x%02X 0x%02X", Byte.valueOf(read[0]), Byte.valueOf(read[1]), Byte.valueOf(read[2]), Byte.valueOf(read[3])));
    }

    private boolean query(String str, boolean z3) {
        File q3 = q(str);
        boolean exists = q3.exists();
        if (z3 && exists) {
            q3.setLastModified(this.f11562e.now());
        }
        return exists;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @FileType
    @Nullable
    public static String s(String str) {
        if (".cnt".equals(str)) {
            return ".cnt";
        }
        if (".tmp".equals(str)) {
            return ".tmp";
        }
        return null;
    }

    private String t(String str) {
        d dVar = new d(".cnt", str);
        return dVar.c(w(dVar.f11572b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public d u(File file) {
        d b4 = d.b(file);
        if (b4 != null && v(b4.f11572b).equals(file.getParentFile())) {
            return b4;
        }
        return null;
    }

    private File v(String str) {
        return new File(w(str));
    }

    private String w(String str) {
        String valueOf = String.valueOf(Math.abs(str.hashCode() % 100));
        return this.f11560c + File.separator + valueOf;
    }

    @VisibleForTesting
    static String x(int i2) {
        return String.format(null, "%s.ols%d.%d", f11555i, 100, Integer.valueOf(i2));
    }

    private static boolean y(File file, CacheErrorLogger cacheErrorLogger) {
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                try {
                } catch (IOException e4) {
                    e = e4;
                }
                try {
                    return file.getCanonicalPath().contains(externalStorageDirectory.toString());
                } catch (IOException e5) {
                    e = e5;
                    CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.OTHER;
                    Class<?> cls = f11552f;
                    cacheErrorLogger.a(cacheErrorCategory, cls, "failed to read folder to check if external: " + ((String) null), e);
                    return false;
                }
            }
            return false;
        } catch (Exception e6) {
            cacheErrorLogger.a(CacheErrorLogger.CacheErrorCategory.OTHER, f11552f, "failed to get the external storage directory!", e6);
            return false;
        }
    }

    private void z(File file, String str) throws IOException {
        try {
            FileUtils.a(file);
        } catch (FileUtils.CreateDirectoryException e4) {
            this.f11561d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f11552f, str, e4);
            throw e4;
        }
    }

    @Override // com.facebook.cache.disk.c
    public c.a a() throws IOException {
        List<c.InterfaceC0059c> entries = getEntries();
        c.a aVar = new c.a();
        for (c.InterfaceC0059c interfaceC0059c : entries) {
            c.b p3 = p(interfaceC0059c);
            String str = p3.f11607b;
            if (!aVar.f11605b.containsKey(str)) {
                aVar.f11605b.put(str, 0);
            }
            Map<String, Integer> map = aVar.f11605b;
            map.put(str, Integer.valueOf(map.get(str).intValue() + 1));
            aVar.f11604a.add(p3);
        }
        return aVar;
    }

    @Override // com.facebook.cache.disk.c
    public void b() {
        b0.a.c(this.f11558a, new f());
    }

    @Override // com.facebook.cache.disk.c
    public boolean c(String str, Object obj) {
        return query(str, true);
    }

    @Override // com.facebook.cache.disk.c
    public void clearAll() {
        b0.a.a(this.f11558a);
    }

    @Override // com.facebook.cache.disk.c
    public long d(c.InterfaceC0059c interfaceC0059c) {
        return o(((c) interfaceC0059c).a().c());
    }

    @Override // com.facebook.cache.disk.c
    public boolean e(String str, Object obj) {
        return query(str, false);
    }

    @Override // com.facebook.cache.disk.c
    @Nullable
    public a0.a f(String str, Object obj) {
        File q3 = q(str);
        if (q3.exists()) {
            q3.setLastModified(this.f11562e.now());
            return a0.c.b(q3);
        }
        return null;
    }

    @Override // com.facebook.cache.disk.c
    public String g() {
        String absolutePath = this.f11558a.getAbsolutePath();
        return "_" + absolutePath.substring(absolutePath.lastIndexOf(47) + 1, absolutePath.length()) + "_" + absolutePath.hashCode();
    }

    @Override // com.facebook.cache.disk.c
    public c.d insert(String str, Object obj) throws IOException {
        d dVar = new d(".tmp", str);
        File v3 = v(dVar.f11572b);
        if (!v3.exists()) {
            z(v3, "insert");
        }
        try {
            return new e(str, dVar.a(v3));
        } catch (IOException e4) {
            this.f11561d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_TEMPFILE, f11552f, "insert", e4);
            throw e4;
        }
    }

    @Override // com.facebook.cache.disk.c
    public boolean isEnabled() {
        return true;
    }

    @Override // com.facebook.cache.disk.c
    public boolean isExternal() {
        return this.f11559b;
    }

    @VisibleForTesting
    File q(String str) {
        return new File(t(str));
    }

    @Override // com.facebook.cache.disk.c
    /* renamed from: r */
    public List<c.InterfaceC0059c> getEntries() throws IOException {
        b bVar = new b();
        b0.a.c(this.f11560c, bVar);
        return bVar.d();
    }

    @Override // com.facebook.cache.disk.c
    public long remove(String str) {
        return o(q(str));
    }
}
