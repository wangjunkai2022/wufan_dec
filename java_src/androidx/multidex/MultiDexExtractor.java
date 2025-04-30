package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.alipay.sdk.util.f;
import com.android.dex.DexFormat;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import m.a;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
final class MultiDexExtractor implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final String f6627g = "MultiDex";

    /* renamed from: h  reason: collision with root package name */
    private static final String f6628h = "classes";

    /* renamed from: i  reason: collision with root package name */
    static final String f6629i = ".dex";

    /* renamed from: j  reason: collision with root package name */
    private static final String f6630j = ".classes";

    /* renamed from: k  reason: collision with root package name */
    static final String f6631k = ".zip";

    /* renamed from: l  reason: collision with root package name */
    private static final int f6632l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final String f6633m = "multidex.version";

    /* renamed from: n  reason: collision with root package name */
    private static final String f6634n = "timestamp";

    /* renamed from: o  reason: collision with root package name */
    private static final String f6635o = "crc";

    /* renamed from: p  reason: collision with root package name */
    private static final String f6636p = "dex.number";

    /* renamed from: q  reason: collision with root package name */
    private static final String f6637q = "dex.crc.";

    /* renamed from: r  reason: collision with root package name */
    private static final String f6638r = "dex.time.";

    /* renamed from: s  reason: collision with root package name */
    private static final int f6639s = 16384;

    /* renamed from: t  reason: collision with root package name */
    private static final long f6640t = -1;

    /* renamed from: u  reason: collision with root package name */
    private static final String f6641u = "MultiDex.lock";

    /* renamed from: a  reason: collision with root package name */
    private final File f6642a;

    /* renamed from: b  reason: collision with root package name */
    private final long f6643b;

    /* renamed from: c  reason: collision with root package name */
    private final File f6644c;

    /* renamed from: d  reason: collision with root package name */
    private final RandomAccessFile f6645d;

    /* renamed from: e  reason: collision with root package name */
    private final FileChannel f6646e;

    /* renamed from: f  reason: collision with root package name */
    private final FileLock f6647f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExtractedDex extends File {
        public long crc;

        public ExtractedDex(File file, String str) {
            super(file, str);
            this.crc = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiDexExtractor(File file, File file2) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("MultiDexExtractor(");
        sb.append(file.getPath());
        sb.append(", ");
        sb.append(file2.getPath());
        sb.append(")");
        this.f6642a = file;
        this.f6644c = file2;
        this.f6643b = h(file);
        File file3 = new File(file2, f6641u);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, e.f73015e0);
        this.f6645d = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.f6646e = channel;
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Blocking on lock ");
                sb2.append(file3.getPath());
                this.f6647f = channel.lock();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(file3.getPath());
                sb3.append(" locked");
            } catch (IOException e4) {
                e = e4;
                b(this.f6646e);
                throw e;
            } catch (Error e5) {
                e = e5;
                b(this.f6646e);
                throw e;
            } catch (RuntimeException e6) {
                e = e6;
                b(this.f6646e);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e7) {
            b(this.f6645d);
            throw e7;
        }
    }

    private void a() {
        File[] listFiles = this.f6644c.listFiles(new FileFilter() { // from class: androidx.multidex.MultiDexExtractor.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return !file.getName().equals(MultiDexExtractor.f6641u);
            }
        });
        if (listFiles == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Failed to list secondary dex dir content (");
            sb.append(this.f6644c.getPath());
            sb.append(").");
            return;
        }
        for (File file : listFiles) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Trying to delete old file ");
            sb2.append(file.getPath());
            sb2.append(" of size ");
            sb2.append(file.length());
            if (!file.delete()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Failed to delete old file ");
                sb3.append(file.getPath());
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Deleted old file ");
                sb4.append(file.getPath());
            }
        }
    }

    private static void b(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private static void d(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException, FileNotFoundException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile("tmp-" + str, f6631k, file.getParentFile());
        StringBuilder sb = new StringBuilder();
        sb.append("Extracting ");
        sb.append(createTempFile.getPath());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            ZipEntry zipEntry2 = new ZipEntry(DexFormat.DEX_IN_JAR_NAME);
            zipEntry2.setTime(zipEntry.getTime());
            zipOutputStream.putNextEntry(zipEntry2);
            byte[] bArr = new byte[16384];
            for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                zipOutputStream.write(bArr, 0, read);
            }
            zipOutputStream.closeEntry();
            zipOutputStream.close();
            if (createTempFile.setReadOnly()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Renaming to ");
                sb2.append(file.getPath());
                if (createTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + a.f72569g);
            }
            throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
        } finally {
            b(inputStream);
            createTempFile.delete();
        }
    }

    private static SharedPreferences e(Context context) {
        return context.getSharedPreferences(f6633m, Build.VERSION.SDK_INT < 11 ? 0 : 4);
    }

    private static long g(File file) {
        long lastModified = file.lastModified();
        return lastModified == -1 ? lastModified - 1 : lastModified;
    }

    private static long h(File file) throws IOException {
        long c4 = ZipUtil.c(file);
        return c4 == -1 ? c4 - 1 : c4;
    }

    private static boolean i(Context context, File file, long j4, String str) {
        SharedPreferences e4 = e(context);
        if (e4.getLong(str + f6634n, -1L) == g(file)) {
            if (e4.getLong(str + f6635o, -1L) == j4) {
                return false;
            }
        }
        return true;
    }

    private List<ExtractedDex> m(Context context, String str) throws IOException {
        String str2 = this.f6642a.getName() + f6630j;
        SharedPreferences e4 = e(context);
        int i2 = e4.getInt(str + f6636p, 1);
        ArrayList arrayList = new ArrayList(i2 + (-1));
        int i4 = 2;
        while (i4 <= i2) {
            ExtractedDex extractedDex = new ExtractedDex(this.f6644c, str2 + i4 + f6631k);
            if (extractedDex.isFile()) {
                extractedDex.crc = h(extractedDex);
                long j4 = e4.getLong(str + f6637q + i4, -1L);
                long j5 = e4.getLong(str + f6638r + i4, -1L);
                long lastModified = extractedDex.lastModified();
                if (j5 == lastModified) {
                    String str3 = str2;
                    SharedPreferences sharedPreferences = e4;
                    if (j4 == extractedDex.crc) {
                        arrayList.add(extractedDex);
                        i4++;
                        e4 = sharedPreferences;
                        str2 = str3;
                    }
                }
                throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str + "\"), expected modification time: " + j5 + ", modification time: " + lastModified + ", expected crc: " + j4 + ", file crc: " + extractedDex.crc);
            }
            throw new IOException("Missing extracted secondary dex file '" + extractedDex.getPath() + "'");
        }
        return arrayList;
    }

    private List<ExtractedDex> n() throws IOException {
        String str = this.f6642a.getName() + f6630j;
        a();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.f6642a);
        int i2 = 2;
        try {
            ZipEntry entry = zipFile.getEntry(f6628h + 2 + f6629i);
            while (entry != null) {
                ExtractedDex extractedDex = new ExtractedDex(this.f6644c, str + i2 + f6631k);
                arrayList.add(extractedDex);
                StringBuilder sb = new StringBuilder();
                sb.append("Extraction is needed for file ");
                sb.append(extractedDex);
                int i4 = 0;
                boolean z3 = false;
                while (i4 < 3 && !z3) {
                    i4++;
                    d(zipFile, entry, extractedDex, str);
                    try {
                        extractedDex.crc = h(extractedDex);
                        z3 = true;
                    } catch (IOException unused) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Failed to read crc from ");
                        sb2.append(extractedDex.getAbsolutePath());
                        z3 = false;
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Extraction ");
                    sb3.append(z3 ? "succeeded" : f.f9840h);
                    sb3.append(" '");
                    sb3.append(extractedDex.getAbsolutePath());
                    sb3.append("': length ");
                    sb3.append(extractedDex.length());
                    sb3.append(" - crc: ");
                    sb3.append(extractedDex.crc);
                    if (!z3) {
                        extractedDex.delete();
                        if (extractedDex.exists()) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("Failed to delete corrupted secondary dex '");
                            sb4.append(extractedDex.getPath());
                            sb4.append("'");
                        }
                    }
                }
                if (z3) {
                    i2++;
                    entry = zipFile.getEntry(f6628h + i2 + f6629i);
                } else {
                    throw new IOException("Could not create zip file " + extractedDex.getAbsolutePath() + " for secondary dex (" + i2 + ")");
                }
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    private static void o(Context context, String str, long j4, long j5, List<ExtractedDex> list) {
        SharedPreferences.Editor edit = e(context).edit();
        edit.putLong(str + f6634n, j4);
        edit.putLong(str + f6635o, j5);
        edit.putInt(str + f6636p, list.size() + 1);
        int i2 = 2;
        for (ExtractedDex extractedDex : list) {
            edit.putLong(str + f6637q + i2, extractedDex.crc);
            edit.putLong(str + f6638r + i2, extractedDex.lastModified());
            i2++;
        }
        edit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6647f.release();
        this.f6646e.close();
        this.f6645d.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends File> k(Context context, String str, boolean z3) throws IOException {
        List<ExtractedDex> n4;
        List<ExtractedDex> list;
        StringBuilder sb = new StringBuilder();
        sb.append("MultiDexExtractor.load(");
        sb.append(this.f6642a.getPath());
        sb.append(", ");
        sb.append(z3);
        sb.append(", ");
        sb.append(str);
        sb.append(")");
        if (this.f6647f.isValid()) {
            if (!z3 && !i(context, this.f6642a, this.f6643b, str)) {
                try {
                    list = m(context, str);
                } catch (IOException unused) {
                    n4 = n();
                    o(context, str, g(this.f6642a), this.f6643b, n4);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("load found ");
                sb2.append(list.size());
                sb2.append(" secondary dex files");
                return list;
            }
            n4 = n();
            o(context, str, g(this.f6642a), this.f6643b, n4);
            list = n4;
            StringBuilder sb22 = new StringBuilder();
            sb22.append("load found ");
            sb22.append(list.size());
            sb22.append(" secondary dex files");
            return list;
        }
        throw new IllegalStateException("MultiDexExtractor was closed");
    }
}
