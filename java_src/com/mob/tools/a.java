package com.mob.tools;

import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.utils.ResHelper;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.util.HashSet;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f53359a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f53360b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private volatile HashSet<String> f53361c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private File f53362d;

    /* renamed from: e  reason: collision with root package name */
    private int f53363e;

    /* renamed from: f  reason: collision with root package name */
    private String f53364f;

    /* renamed from: com.mob.tools.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0244a {
        void a(String str);

        boolean a();
    }

    public a(String str, String str2, int i2) {
        this.f53363e = i2;
        if (str2 == null) {
            str2 = "null";
        } else if (TextUtils.isDigitsOnly(str2)) {
            str2 = str + str2;
        }
        this.f53364f = str2;
        File dataCacheFile = ResHelper.getDataCacheFile(MobSDK.getContextSafely(), str);
        this.f53362d = dataCacheFile;
        if (dataCacheFile.isDirectory()) {
            return;
        }
        this.f53362d.mkdirs();
    }

    private boolean b(String str) {
        synchronized (this.f53361c) {
            if (this.f53361c.contains(str)) {
                return true;
            }
            this.f53361c.add(str);
            return false;
        }
    }

    private void c(String str) {
        synchronized (this.f53361c) {
            this.f53361c.remove(str);
        }
    }

    public void a(String str) {
        a(str, false);
    }

    public void a(String str, boolean z3) {
        String str2;
        FileWriter fileWriter;
        String name;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        BufferedWriter bufferedWriter = null;
        try {
            str2 = Base64.encodeToString(str.getBytes("utf-8"), 2);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        synchronized (f53359a) {
            File a4 = a(z3);
            try {
                fileWriter = new FileWriter(a4, true);
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter);
                    try {
                        bufferedWriter2.newLine();
                        bufferedWriter2.write(str2);
                        ResHelper.closeIOs(bufferedWriter2);
                        ResHelper.closeIOs(fileWriter);
                        name = a4.getName();
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedWriter = bufferedWriter2;
                        MobLog.getInstance().d(th);
                        ResHelper.closeIOs(bufferedWriter);
                        ResHelper.closeIOs(fileWriter);
                        name = a4.getName();
                        c(name);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                fileWriter = null;
            }
            c(name);
        }
    }

    private File a(boolean z3) {
        File file;
        File[] listFiles = this.f53362d.listFiles();
        int i2 = 5;
        int i4 = 3;
        char c4 = 2;
        if (listFiles != null && listFiles.length > 0) {
            int length = listFiles.length;
            int i5 = 0;
            int i6 = 1;
            while (i5 < length) {
                File file2 = listFiles[i5];
                String name = file2.getName();
                if (name.startsWith(this.f53364f)) {
                    String[] split = name.split("_");
                    if (!z3 && split.length == i4) {
                        try {
                            int parseInt = Integer.parseInt(split[c4]);
                            if (parseInt < this.f53363e && !b(name)) {
                                File file3 = this.f53362d;
                                Object[] objArr = new Object[i2];
                                objArr[0] = this.f53364f;
                                objArr[1] = "_";
                                objArr[2] = Integer.valueOf(i6);
                                objArr[3] = "_";
                                objArr[4] = Integer.valueOf(parseInt + 1);
                                File file4 = new File(file3, a(objArr));
                                return file2.renameTo(file4) ? file4 : file2;
                            }
                        } catch (Throwable th) {
                            MobLog.getInstance().d(th);
                        }
                    }
                    if (split.length > 1) {
                        try {
                            if (Integer.parseInt(split[1]) == i6) {
                                i6++;
                            }
                        } catch (Throwable th2) {
                            MobLog.getInstance().d(th2);
                        }
                    }
                }
                i5++;
                i2 = 5;
                i4 = 3;
                c4 = 2;
            }
            file = new File(this.f53362d, a(this.f53364f, "_", Integer.valueOf(i6), "_", 0));
        } else {
            file = new File(this.f53362d, a(this.f53364f, "_", 1, "_", 0));
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
        return file;
    }

    public void a(InterfaceC0244a interfaceC0244a) {
        FileReader fileReader;
        if (interfaceC0244a == null) {
            return;
        }
        synchronized (f53360b) {
            File[] listFiles = this.f53362d.listFiles(new FilenameFilter() { // from class: com.mob.tools.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return !TextUtils.isEmpty(str) && str.startsWith(a.this.f53364f);
                }
            });
            if (listFiles != null && listFiles.length > 0) {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (!b(name)) {
                        BufferedReader bufferedReader = null;
                        try {
                            fileReader = new FileReader(file);
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                                while (true) {
                                    try {
                                        String readLine = bufferedReader2.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        interfaceC0244a.a(new String(Base64.decode(readLine, 2), "utf-8"));
                                    } catch (Throwable th) {
                                        th = th;
                                        bufferedReader = bufferedReader2;
                                        MobLog.getInstance().d(th);
                                        ResHelper.closeIOs(bufferedReader);
                                        ResHelper.closeIOs(fileReader);
                                        c(name);
                                    }
                                }
                                if (interfaceC0244a.a()) {
                                    file.delete();
                                }
                                ResHelper.closeIOs(bufferedReader2);
                                ResHelper.closeIOs(fileReader);
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileReader = null;
                        }
                        c(name);
                    }
                }
            }
        }
    }

    public void a(long j4) {
        synchronized (f53360b) {
            File[] listFiles = this.f53362d.listFiles(new FilenameFilter() { // from class: com.mob.tools.a.2
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return !TextUtils.isEmpty(str) && str.startsWith(a.this.f53364f);
                }
            });
            if (listFiles != null && listFiles.length > 0) {
                long j5 = 0;
                for (File file : listFiles) {
                    j5 += file.length();
                }
                if (j5 >= j4) {
                    for (File file2 : listFiles) {
                        file2.delete();
                    }
                }
            }
        }
    }

    private static String a(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj);
        }
        return sb.toString();
    }
}
