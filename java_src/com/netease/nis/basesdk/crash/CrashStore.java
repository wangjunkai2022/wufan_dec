package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.Logger;
import com.tencent.stat.StatNativeCrashReport;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes4.dex */
public class CrashStore {

    /* renamed from: b  reason: collision with root package name */
    private static final CrashStore f54063b = new CrashStore();

    /* renamed from: a  reason: collision with root package name */
    private String f54064a;

    /* loaded from: classes4.dex */
    class a implements FilenameFilter {
        a(CrashStore crashStore) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                return str.endsWith(".java.crash");
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class b implements Comparator<File> {
        b(CrashStore crashStore) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* loaded from: classes4.dex */
    class c implements FilenameFilter {
        c(CrashStore crashStore) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.startsWith(StatNativeCrashReport.PRE_TAG_TOMBSTONE_FNAME)) {
                return str.endsWith(".native.crash");
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class d implements Comparator<File> {
        d(CrashStore crashStore) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    private CrashStore() {
    }

    public static CrashStore getInstance() {
        return f54063b;
    }

    public void delete(String str) {
        if (com.netease.nis.basesdk.crash.a.b().a(new File(str))) {
            Logger.d("delete file success");
        }
    }

    public void initialize(String str) {
        this.f54064a = str;
        com.netease.nis.basesdk.crash.a.b().b(str);
    }

    public File[] loadJava() {
        if (TextUtils.isEmpty(this.f54064a)) {
            return new File[0];
        }
        File file = new File(this.f54064a);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles(new a(this));
            if (listFiles == null) {
                return new File[0];
            }
            Arrays.sort(listFiles, new b(this));
            return listFiles;
        }
        return new File[0];
    }

    public File[] loadNative() {
        if (TextUtils.isEmpty(this.f54064a)) {
            return new File[0];
        }
        File file = new File(this.f54064a);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles(new c(this));
            if (listFiles == null) {
                return new File[0];
            }
            Arrays.sort(listFiles, new d(this));
            return listFiles;
        }
        return new File[0];
    }

    public String parse(String str) {
        BufferedReader bufferedReader;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader(str));
                } catch (IOException unused) {
                    Logger.e("CrashCrashStore", "parse log file failed");
                    return "";
                }
            } catch (FileNotFoundException unused2) {
            } catch (IOException unused3) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append("\n");
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (IOException unused4) {
                Logger.e("CrashCrashStore", "parse log file failed");
            }
            return sb2;
        } catch (FileNotFoundException unused5) {
            bufferedReader2 = bufferedReader;
            Logger.e("CrashCrashStore", "parse log file failed");
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            return "";
        } catch (IOException unused6) {
            bufferedReader2 = bufferedReader;
            Logger.e("CrashCrashStore", "parse log file failed");
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException unused7) {
                    Logger.e("CrashCrashStore", "parse log file failed");
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v9, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006e -> B:32:0x007c). Please submit an issue!!! */
    public File store(String str) {
        File file;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            file = com.netease.nis.basesdk.crash.a.b().a(String.format(Locale.US, "%s/%s_%020d_%s", this.f54064a, "tombstone", Long.valueOf(new Date().getTime() * 1000), ".java.crash"));
        } catch (Exception unused) {
            Logger.e("CrashCrashStore", "createLogFile failed");
            file = null;
        }
        try {
            try {
            } catch (Exception unused2) {
                Logger.e("CrashCrashStore", "write log file failed");
                randomAccessFile2 = randomAccessFile2;
            }
            if (file != null) {
                try {
                    randomAccessFile = new RandomAccessFile(file, "rws");
                } catch (Exception unused3) {
                }
                try {
                    ?? isEmpty = TextUtils.isEmpty(str);
                    RandomAccessFile randomAccessFile3 = isEmpty;
                    if (isEmpty == 0) {
                        randomAccessFile.write(str.getBytes("UTF-8"));
                        randomAccessFile3 = "UTF-8";
                    }
                    randomAccessFile.close();
                    randomAccessFile2 = randomAccessFile3;
                } catch (Exception unused4) {
                    randomAccessFile2 = randomAccessFile;
                    Logger.e("CrashCrashStore", "write log file failed");
                    if (randomAccessFile2 != null) {
                        randomAccessFile2.close();
                        randomAccessFile2 = randomAccessFile2;
                    }
                    return file;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile2 = randomAccessFile;
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (Exception unused5) {
                            Logger.e("CrashCrashStore", "write log file failed");
                        }
                    }
                    throw th;
                }
            }
            return file;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
