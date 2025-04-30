package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedHashSet;
/* loaded from: classes4.dex */
public class StatNativeCrashReport {
    public static final String PRE_TAG_TOMBSTONE_FNAME = "tombstone_";

    /* renamed from: d  reason: collision with root package name */
    private static boolean f59969d;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f59972c = false;

    /* renamed from: b  reason: collision with root package name */
    private static StatLogger f59968b = com.tencent.stat.common.k.b();

    /* renamed from: a  reason: collision with root package name */
    static StatNativeCrashReport f59967a = new StatNativeCrashReport();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f59970e = false;

    /* renamed from: f  reason: collision with root package name */
    private static String f59971f = null;

    static {
        f59969d = false;
        try {
            System.loadLibrary("MtaNativeCrash");
        } catch (Throwable th) {
            f59969d = false;
            f59968b.w(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(File file) {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
            }
            bufferedReader.close();
        } catch (IOException e4) {
            f59968b.e((Exception) e4);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LinkedHashSet<File> a(Context context) {
        File[] listFiles;
        LinkedHashSet<File> linkedHashSet = new LinkedHashSet<>();
        String tombstonesDir = getTombstonesDir(context);
        if (tombstonesDir != null) {
            File file = new File(tombstonesDir);
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().startsWith(PRE_TAG_TOMBSTONE_FNAME) && file2.isFile()) {
                        f59968b.d("get tombstone file:" + file2.getAbsolutePath().toString());
                        linkedHashSet.add(file2.getAbsoluteFile());
                    }
                }
            }
        }
        return linkedHashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(File file) {
        try {
            return Long.valueOf(file.getName().replace(PRE_TAG_TOMBSTONE_FNAME, "")).longValue();
        } catch (NumberFormatException e4) {
            f59968b.e((Exception) e4);
            return 0L;
        }
    }

    public static void doNativeCrashTest() {
        f59967a.makeJniCrash();
    }

    public static String getTombstonesDir(Context context) {
        if (f59971f == null) {
            f59971f = com.tencent.stat.common.p.a(context, "__mta_tombstone__", "");
        }
        return f59971f;
    }

    public static void initNativeCrash(Context context, String str) {
        if (f59967a.f59972c) {
            return;
        }
        if (str == null) {
            try {
                str = context.getDir("tombstones", 0).getAbsolutePath();
            } catch (Throwable th) {
                f59968b.w(th);
                return;
            }
        }
        if (str.length() > 128) {
            StatLogger statLogger = f59968b;
            statLogger.e("The length of tombstones dir: " + str + " can't exceeds 200 bytes.");
            return;
        }
        f59971f = str;
        com.tencent.stat.common.p.b(context, "__mta_tombstone__", str);
        setNativeCrashEnable(true);
        f59967a.initJNICrash(str);
        f59967a.f59972c = true;
        f59968b.d("initNativeCrash success.");
    }

    public static boolean isNativeCrashDebugEnable() {
        return f59970e;
    }

    public static boolean isNativeCrashEnable() {
        return f59969d;
    }

    public static String onNativeCrashHappened() {
        try {
            new RuntimeException("MTA has caught a native crash, java stack:\n").printStackTrace();
            return "";
        } catch (RuntimeException e4) {
            return e4.toString();
        }
    }

    public static void setNativeCrashDebugEnable(boolean z3) {
        try {
            f59967a.enableNativeCrashDebug(z3);
            f59970e = z3;
        } catch (Throwable th) {
            f59968b.w(th);
        }
    }

    public static void setNativeCrashEnable(boolean z3) {
        try {
            f59967a.enableNativeCrash(z3);
            f59969d = z3;
        } catch (Throwable th) {
            f59968b.w(th);
        }
    }

    public native void enableNativeCrash(boolean z3);

    public native void enableNativeCrashDebug(boolean z3);

    public native boolean initJNICrash(String str);

    public native String makeJniCrash();

    public native String stringFromJNI();
}
