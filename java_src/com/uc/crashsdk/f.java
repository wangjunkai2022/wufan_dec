package com.uc.crashsdk;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.uc.crashsdk.a.h;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60303a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, SparseIntArray> f60304b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f60305c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final SparseArray<String> f60306d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f60307e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static boolean f60308f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2) {
        a(i2, 1);
    }

    private static boolean b(int i2, int i4) {
        try {
            b.u();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        try {
            String c4 = c(i2);
            if (c4 == null) {
                com.uc.crashsdk.a.a.a("crashsdk", "Stat type not exists: " + i2, null);
                return false;
            }
            File file = new File(b.c());
            if (!file.exists()) {
                file.createNewFile();
            }
            StringBuffer a4 = a(file);
            if (com.uc.crashsdk.a.g.a(a4)) {
                if (a4 == null) {
                    a4 = new StringBuffer();
                }
                a4.append("[");
                a4.append(e.h());
                a4.append("]\n");
            }
            a(a4, c4, a(a4, c4) + i4);
            return a(file, a4);
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            return false;
        }
    }

    private static boolean c(String str) {
        SparseIntArray sparseIntArray = f60304b.get(str);
        if (sparseIntArray == null) {
            return false;
        }
        for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
            int keyAt = sparseIntArray.keyAt(i2);
            d.a(str, keyAt, sparseIntArray.get(keyAt));
        }
        return true;
    }

    private static char[] d() {
        char[] cArr = null;
        int i2 = 1024;
        while (cArr == null && i2 > 0) {
            try {
                cArr = new char[i2];
            } catch (Throwable unused) {
                i2 /= 2;
                if (i2 < 512) {
                    break;
                }
            }
        }
        return cArr;
    }

    private static void e() {
        SparseArray<String> sparseArray = f60306d;
        synchronized (sparseArray) {
            if (sparseArray.size() != 0) {
                return;
            }
            sparseArray.put(100, "start_pv");
            sparseArray.put(102, "start_hpv");
            sparseArray.put(1, "all_all");
            sparseArray.put(2, "all_fg");
            sparseArray.put(101, "all_bg");
            sparseArray.put(3, "java_fg");
            sparseArray.put(4, "java_bg");
            sparseArray.put(7, "native_fg");
            sparseArray.put(8, "native_bg");
            sparseArray.put(27, "native_anr_fg");
            sparseArray.put(28, "native_anr_bg");
            sparseArray.put(9, "native_ok");
            sparseArray.put(10, "unexp_anr");
            sparseArray.put(29, "unexp_lowmem");
            sparseArray.put(30, "unexp_killed");
            sparseArray.put(31, "unexp_exit");
            sparseArray.put(32, "unexp_restart");
            sparseArray.put(11, "unexp_fg");
            sparseArray.put(12, "unexp_bg");
            sparseArray.put(40, "anr_fg");
            sparseArray.put(41, "anr_bg");
            sparseArray.put(42, "anr_cr_fg");
            sparseArray.put(43, "anr_cr_bg");
            sparseArray.put(13, "log_up_succ");
            sparseArray.put(14, "log_up_fail");
            sparseArray.put(15, "log_empty");
            sparseArray.put(200, "log_tmp");
            sparseArray.put(16, "log_abd_all");
            sparseArray.put(22, "log_abd_builtin");
            sparseArray.put(23, "log_abd_custom");
            sparseArray.put(17, "log_large");
            sparseArray.put(18, "log_up_all");
            sparseArray.put(19, "log_up_bytes");
            sparseArray.put(20, "log_up_crash");
            sparseArray.put(21, "log_up_custom");
            sparseArray.put(24, "log_zipped");
            sparseArray.put(201, "log_enced");
            sparseArray.put(25, "log_renamed");
            sparseArray.put(26, "log_safe_skip");
        }
    }

    private static File[] f() {
        File[] listFiles = new File(g.U()).listFiles();
        if (listFiles != null) {
            ArrayList arrayList = new ArrayList();
            for (File file : listFiles) {
                if (file.getPath().endsWith(".st")) {
                    arrayList.add(file);
                }
            }
            return (File[]) arrayList.toArray(new File[arrayList.size()]);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2, int i4) {
        if (i4 == 0) {
            com.uc.crashsdk.a.a.b("Add stat for type " + i2 + " with count 0!");
            return;
        }
        a(b.c(), new com.uc.crashsdk.a.e(751, new Object[]{Integer.valueOf(i2), Integer.valueOf(i4)}));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a A[Catch: all -> 0x0056, TryCatch #0 {, blocks: (B:7:0x0008, B:9:0x000c, B:11:0x000e, B:13:0x0016, B:15:0x0018, B:17:0x0020, B:19:0x002a, B:27:0x004a, B:28:0x004d, B:29:0x0054, B:21:0x0031, B:23:0x0037, B:25:0x0042), top: B:36:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(boolean r3) {
        /*
            boolean r0 = com.uc.crashsdk.f.f60308f
            if (r0 == 0) goto L5
            return
        L5:
            java.lang.Object r0 = com.uc.crashsdk.f.f60307e
            monitor-enter(r0)
            boolean r1 = com.uc.crashsdk.f.f60308f     // Catch: java.lang.Throwable -> L56
            if (r1 == 0) goto Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            return
        Le:
            java.lang.String r1 = "crash detail"
            boolean r3 = com.uc.crashsdk.a.h.a(r3, r1)     // Catch: java.lang.Throwable -> L56
            if (r3 == 0) goto L18
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            return
        L18:
            r3 = 0
            boolean r1 = com.uc.crashsdk.b.p()     // Catch: java.lang.Throwable -> L56
            r2 = 1
            if (r1 == 0) goto L31
            r3 = 2
            a(r3, r2)     // Catch: java.lang.Throwable -> L56
            boolean r3 = com.uc.crashsdk.b.o()     // Catch: java.lang.Throwable -> L56
            if (r3 == 0) goto L2f
            r3 = 42
            a(r3, r2)     // Catch: java.lang.Throwable -> L56
        L2f:
            r3 = 1
            goto L48
        L31:
            boolean r1 = com.uc.crashsdk.b.q()     // Catch: java.lang.Throwable -> L56
            if (r1 == 0) goto L48
            r3 = 101(0x65, float:1.42E-43)
            a(r3, r2)     // Catch: java.lang.Throwable -> L56
            boolean r3 = com.uc.crashsdk.b.o()     // Catch: java.lang.Throwable -> L56
            if (r3 == 0) goto L2f
            r3 = 43
            a(r3, r2)     // Catch: java.lang.Throwable -> L56
            goto L2f
        L48:
            if (r3 == 0) goto L4d
            a(r2, r2)     // Catch: java.lang.Throwable -> L56
        L4d:
            r3 = 100
            a(r3, r2)     // Catch: java.lang.Throwable -> L56
            com.uc.crashsdk.f.f60308f = r2     // Catch: java.lang.Throwable -> L56
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            return
        L56:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            goto L5a
        L59:
            throw r3
        L5a:
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.f.d(boolean):void");
    }

    private static String c(int i2) {
        String str;
        e();
        SparseArray<String> sparseArray = f60306d;
        synchronized (sparseArray) {
            str = sparseArray.get(i2);
        }
        return str;
    }

    private static StringBuffer a(File file) {
        FileReader fileReader;
        FileReader fileReader2 = null;
        if (file.exists()) {
            char[] d4 = d();
            if (d4 == null) {
                com.uc.crashsdk.a.a.a("crashsdk", "readCrashStatData alloc buffer failed!", null);
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            try {
                try {
                    fileReader = new FileReader(file);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e4) {
                e = e4;
            }
            try {
                int read = fileReader.read(d4);
                if (read > 0) {
                    fileReader2 = null;
                    stringBuffer.append(d4, 0, read);
                }
                com.uc.crashsdk.a.g.a(fileReader);
            } catch (Exception e5) {
                e = e5;
                fileReader2 = fileReader;
                com.uc.crashsdk.a.g.a(e);
                com.uc.crashsdk.a.g.a(fileReader2);
                return stringBuffer;
            } catch (Throwable th2) {
                th = th2;
                fileReader2 = fileReader;
                com.uc.crashsdk.a.g.a(fileReader2);
                throw th;
            }
            return stringBuffer;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z3) {
        if (g.O() && !b.I()) {
            e.j();
            if (!h.e()) {
                h.a(z3);
            }
            if (b.C()) {
                d(z3);
                a(b.c(), z3);
                h.b(z3);
            }
        }
    }

    private static int a(StringBuffer stringBuffer, String str) {
        int indexOf = stringBuffer.indexOf(str);
        if (indexOf < 0) {
            return 0;
        }
        int indexOf2 = stringBuffer.indexOf(SimpleComparison.EQUAL_TO_OPERATION, indexOf + str.length());
        if (indexOf2 < 0) {
            com.uc.crashsdk.a.a.b(str + " line not contain '='!");
            return 0;
        }
        int i2 = indexOf2 + 1;
        int indexOf3 = stringBuffer.indexOf("\n", i2);
        if (indexOf3 < 0) {
            indexOf3 = stringBuffer.length();
        }
        try {
            int parseInt = Integer.parseInt(stringBuffer.substring(i2, indexOf3));
            if (parseInt < 0) {
                return 0;
            }
            return parseInt;
        } catch (NumberFormatException e4) {
            com.uc.crashsdk.a.g.a(e4);
            return 0;
        }
    }

    private static boolean b(String str) {
        e();
        synchronized (f60306d) {
            File file = new File(str);
            StringBuffer a4 = a(file);
            if (com.uc.crashsdk.a.g.a(a4)) {
                return false;
            }
            int indexOf = a4.indexOf("[");
            if (indexOf < 0) {
                com.uc.crashsdk.a.a.a("crashsdk", "Can not found process name start!", null);
                return false;
            }
            int i2 = indexOf + 1;
            int indexOf2 = a4.indexOf("]", i2);
            if (indexOf2 < 0) {
                com.uc.crashsdk.a.a.a("crashsdk", "Can not found process name end!", null);
                return false;
            }
            String substring = a4.substring(i2, indexOf2);
            int i4 = 0;
            boolean z3 = false;
            while (true) {
                SparseArray<String> sparseArray = f60306d;
                if (i4 >= sparseArray.size()) {
                    break;
                }
                int keyAt = sparseArray.keyAt(i4);
                String str2 = sparseArray.get(keyAt);
                int a5 = a(a4, str2);
                if (a5 > 0) {
                    h.a(substring, keyAt, a5);
                    Map<String, SparseIntArray> map = f60304b;
                    synchronized (map) {
                        SparseIntArray sparseIntArray = map.get(substring);
                        if (sparseIntArray == null) {
                            sparseIntArray = new SparseIntArray();
                            map.put(substring, sparseIntArray);
                        }
                        sparseIntArray.put(keyAt, sparseIntArray.get(keyAt, 0) + a5);
                    }
                    a(a4, str2, 0);
                    z3 = true;
                }
                i4++;
            }
            if (z3) {
                a(file, a4);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(700), 3000L);
    }

    private static void a(StringBuffer stringBuffer, String str, int i2) {
        int indexOf = stringBuffer.indexOf(str);
        if (indexOf < 0) {
            if (i2 > 0) {
                stringBuffer.append(str);
                stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
                stringBuffer.append(i2);
                stringBuffer.append("\n");
                return;
            }
            return;
        }
        int indexOf2 = stringBuffer.indexOf("\n", indexOf);
        if (indexOf2 < 0) {
            indexOf2 = stringBuffer.length();
        }
        stringBuffer.replace(indexOf, indexOf2, str + SimpleComparison.EQUAL_TO_OPERATION + String.valueOf(i2));
    }

    private static boolean a(File file, StringBuffer stringBuffer) {
        FileWriter fileWriter;
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(file);
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            String stringBuffer2 = stringBuffer.toString();
            fileWriter.write(stringBuffer2, 0, stringBuffer2.length());
            com.uc.crashsdk.a.g.a(fileWriter);
            return true;
        } catch (Exception e5) {
            e = e5;
            fileWriter2 = fileWriter;
            com.uc.crashsdk.a.g.a(e);
            com.uc.crashsdk.a.g.a(fileWriter2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            com.uc.crashsdk.a.g.a(fileWriter2);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static int a(boolean z3) {
        int i2;
        Map<String, SparseIntArray> map = f60304b;
        synchronized (map) {
            try {
                if (z3) {
                    String h4 = e.h();
                    boolean c4 = c(h4);
                    map.remove(h4);
                    i2 = c4;
                } else {
                    int i4 = 0;
                    for (String str : map.keySet()) {
                        if (c(str)) {
                            i4++;
                        }
                    }
                    f60304b.clear();
                    i2 = i4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    private static boolean a(String str, com.uc.crashsdk.a.e eVar) {
        return b.a(f60305c, str, eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, boolean z3) {
        if (h.a(z3, "crash detail report")) {
            return false;
        }
        return a(str, new com.uc.crashsdk.a.e(752, new Object[]{str}));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        File[] f4 = f();
        if (f4 != null) {
            int i2 = 0;
            for (File file : f4) {
                if (a(file.getAbsolutePath(), false)) {
                    i2++;
                }
            }
            return i2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(boolean z3) {
        int size;
        Map<String, SparseIntArray> map = f60304b;
        synchronized (map) {
            try {
                if (z3) {
                    String h4 = e.h();
                    if (map.containsKey(h4)) {
                        map.remove(h4);
                        size = 1;
                    } else {
                        size = 0;
                    }
                } else {
                    size = map.size();
                    map.clear();
                }
            } finally {
            }
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return a(str, new com.uc.crashsdk.a.e(753, new Object[]{str}));
    }

    public static boolean a(int i2, Object[] objArr) {
        switch (i2) {
            case 751:
                if (f60303a || objArr != null) {
                    return b(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue());
                }
                throw new AssertionError();
            case 752:
                if (f60303a || objArr != null) {
                    return b((String) objArr[0]);
                }
                throw new AssertionError();
            case 753:
                if (f60303a || objArr != null) {
                    File file = new File((String) objArr[0]);
                    if (file.exists()) {
                        file.delete();
                        return true;
                    }
                    return false;
                }
                throw new AssertionError();
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b() {
        File[] f4 = f();
        if (f4 != null) {
            int i2 = 0;
            for (File file : f4) {
                if (a(file.getAbsolutePath())) {
                    i2++;
                }
            }
            return i2;
        }
        return 0;
    }

    public static void b(int i2) {
        if (i2 != 700) {
            return;
        }
        d(false);
    }
}
