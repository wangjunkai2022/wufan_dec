package com.uc.crashsdk;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Debug;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StatFs;
import android.os.StrictMode;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.uc.crashsdk.a.h;
import com.uc.crashsdk.export.LogType;
import io.reactivex.annotations.SchedulerSupport;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class e implements Thread.UncaughtExceptionHandler {

    /* renamed from: b  reason: collision with root package name */
    private static long f60262b;

    /* renamed from: i  reason: collision with root package name */
    private static String f60268i;

    /* renamed from: e  reason: collision with root package name */
    private final List<FileInputStream> f60286e = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60261a = true;

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f60263c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static boolean f60264d = false;

    /* renamed from: f  reason: collision with root package name */
    private static long f60265f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static long f60266g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f60267h = true;

    /* renamed from: j  reason: collision with root package name */
    private static String f60269j = "";

    /* renamed from: k  reason: collision with root package name */
    private static String f60270k = null;

    /* renamed from: l  reason: collision with root package name */
    private static String f60271l = null;

    /* renamed from: m  reason: collision with root package name */
    private static String f60272m = null;

    /* renamed from: n  reason: collision with root package name */
    private static final Object f60273n = new Object();

    /* renamed from: o  reason: collision with root package name */
    private static final Object f60274o = new Object();

    /* renamed from: p  reason: collision with root package name */
    private static final Object f60275p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private static final Object f60276q = new Object();

    /* renamed from: r  reason: collision with root package name */
    private static final ArrayList<String> f60277r = new ArrayList<>();

    /* renamed from: s  reason: collision with root package name */
    private static int f60278s = 0;

    /* renamed from: t  reason: collision with root package name */
    private static String f60279t = null;

    /* renamed from: u  reason: collision with root package name */
    private static boolean f60280u = false;

    /* renamed from: v  reason: collision with root package name */
    private static String f60281v = null;

    /* renamed from: w  reason: collision with root package name */
    private static String f60282w = null;

    /* renamed from: x  reason: collision with root package name */
    private static String f60283x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final Object f60284y = new Object();

    /* renamed from: z  reason: collision with root package name */
    private static final Object f60285z = new Object();
    private static Map<String, Integer> A = null;
    private static String B = null;
    private static int C = -1;
    private static int D = -1;
    private static int E = -1;
    private static int F = -1;
    private static int G = -1;
    private static int H = -1;
    private static int I = -1;
    private static String J = "?";
    private static boolean K = false;
    private static boolean L = false;
    private static int M = 0;
    private static int N = 0;
    private static boolean O = false;
    private static com.uc.crashsdk.a.e P = new com.uc.crashsdk.a.e(TTAdConstant.LANDING_PAGE_TYPE_CODE);
    private static c Q = new c((byte) 0);
    private static boolean R = false;
    private static final com.uc.crashsdk.a.e S = new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_URL_CODE);
    private static Thread.UncaughtExceptionHandler T = null;
    private static Throwable U = null;
    private static boolean V = false;
    private static boolean W = false;
    private static Runnable X = null;
    private static final Object Y = new Object();
    private static int Z = 101;
    private static Runnable aa = new com.uc.crashsdk.a.e(TTAdConstant.DOWNLOAD_URL_CODE);
    private static final Object ab = new Object();
    private static boolean ac = false;
    private static ParcelFileDescriptor ad = null;
    private static boolean ae = false;
    private static boolean af = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProGuard */
    /* loaded from: classes4.dex */
    public static class b implements Comparator<File> {
        private b() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            File file3 = file;
            File file4 = file2;
            if (file3.lastModified() > file4.lastModified()) {
                return 1;
            }
            return file3.lastModified() < file4.lastModified() ? -1 : 0;
        }

        /* synthetic */ b(byte b4) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProGuard */
    /* loaded from: classes4.dex */
    public static class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
                int unused = e.C = intent.getIntExtra(SimulatorExitPlayActivity_.E, -1);
                int unused2 = e.D = intent.getIntExtra("scale", -1);
                int unused3 = e.E = intent.getIntExtra("voltage", -1);
                int unused4 = e.F = intent.getIntExtra("health", -1);
                int unused5 = e.G = intent.getIntExtra("plugged", -1);
                int unused6 = e.H = intent.getIntExtra("status", -1);
                int unused7 = e.I = intent.getIntExtra("temperature", -1);
                String unused8 = e.J = intent.getStringExtra("technology");
                if (e.I() >= 2) {
                    e.J();
                    e.K();
                }
            } else if ("android.intent.action.BATTERY_LOW".equals(action) || "android.intent.action.BATTERY_OKAY".equals(action)) {
                boolean unused9 = e.K = "android.intent.action.BATTERY_LOW".equals(action);
                e.J();
            } else if ("android.intent.action.ANR".equals(action)) {
                try {
                    e.d(context);
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                }
            }
        }

        /* synthetic */ c(byte b4) {
            this();
        }
    }

    public e() {
        try {
            L();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void A() {
        if (ac || com.uc.crashsdk.b.I()) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.INTERACTION_TYPE_CODE), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void B() {
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_LIST_CODE), 7000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
        if ((java.lang.System.currentTimeMillis() % 3) == 0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
        if (r0 == 1) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
        r3 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void C() {
        /*
            int r0 = com.uc.crashsdk.g.L()
            r1 = 4
            r2 = 3
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L13
            if (r0 == r2) goto L13
            if (r0 != r1) goto Lf
            goto L13
        Lf:
            if (r0 != r3) goto L43
        L11:
            r3 = 0
            goto L43
        L13:
            int r5 = android.os.Build.VERSION.SDK_INT
            r6 = 21
            if (r5 < r6) goto L43
            r6 = 25
            if (r5 > r6) goto L43
            if (r0 != 0) goto L21
            r5 = 0
            goto L22
        L21:
            r5 = 1
        L22:
            r6 = 0
            if (r0 != r2) goto L34
            long r8 = java.lang.System.currentTimeMillis()
            r10 = 10
            long r8 = r8 % r10
            int r2 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r2 != 0) goto L33
            r5 = 1
            goto L34
        L33:
            r5 = 0
        L34:
            if (r0 != r1) goto L42
            long r0 = java.lang.System.currentTimeMillis()
            r8 = 3
            long r0 = r0 % r8
            int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r2 != 0) goto L11
            goto L43
        L42:
            r3 = r5
        L43:
            if (r3 != 0) goto L4c
            java.lang.String r0 = "crashsdk"
            java.lang.String r1 = "SIG 3 is disabled by settings"
            com.uc.crashsdk.a.a.a(r0, r1)
        L4c:
            boolean r0 = com.uc.crashsdk.b.I()
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            android.os.Looper r2 = android.os.Looper.myLooper()
            if (r1 == r2) goto L68
            if (r3 == 0) goto L68
            r1 = 2
            com.uc.crashsdk.a.e r2 = new com.uc.crashsdk.a.e
            r3 = 413(0x19d, float:5.79E-43)
            r2.<init>(r3)
            com.uc.crashsdk.a.f.a(r1, r2)
            goto L69
        L68:
            r4 = r3
        L69:
            r1 = 7
            long r2 = (long) r0
            r0 = 0
            com.uc.crashsdk.JNIBridge.nativeCmd(r1, r2, r0, r0)
            if (r4 == 0) goto L76
            r0 = 8
            com.uc.crashsdk.JNIBridge.cmd(r0)
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.C():void");
    }

    public static ParcelFileDescriptor D() {
        if (!com.uc.crashsdk.b.f60229d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return null;
        }
        ParcelFileDescriptor parcelFileDescriptor = ad;
        if (parcelFileDescriptor != null) {
            return parcelFileDescriptor;
        }
        int cmd = (int) JNIBridge.cmd(14);
        if (cmd == -1) {
            return null;
        }
        ParcelFileDescriptor adoptFd = ParcelFileDescriptor.adoptFd(cmd);
        ad = adoptFd;
        ae = true;
        return adoptFd;
    }

    public static boolean E() {
        return af;
    }

    public static void F() {
        String V2 = g.V();
        File file = new File(V2);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                com.uc.crashsdk.a.a.b("Ucebu can not list folder: " + V2);
                return;
            }
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.getName().contains("ucebu")) {
                    a(false, false);
                    return;
                }
            }
        }
    }

    static /* synthetic */ boolean H() {
        return N();
    }

    static /* synthetic */ int I() {
        int i2 = M + 1;
        M = i2;
        return i2;
    }

    static /* synthetic */ void J() {
        StringBuilder X2;
        if (com.uc.crashsdk.b.f60229d && (X2 = X()) != null) {
            JNIBridge.set(125, X2.toString());
        }
        L = true;
        Y();
    }

    static /* synthetic */ int K() {
        M = 0;
        return 0;
    }

    private void L() {
        int G2 = g.G();
        for (int i2 = 0; i2 < G2; i2++) {
            try {
                this.f60286e.add(new FileInputStream("/dev/null"));
            } catch (Exception e4) {
                com.uc.crashsdk.a.g.a(e4);
                return;
            }
        }
    }

    private void M() {
        for (FileInputStream fileInputStream : this.f60286e) {
            com.uc.crashsdk.a.g.a(fileInputStream);
        }
        this.f60286e.clear();
    }

    private static boolean N() {
        if (g.N()) {
            return true;
        }
        return a();
    }

    private static String O() {
        return g.e() + "_";
    }

    private static String P() {
        return com.uc.crashsdk.b.y() ? "fg" : "bg";
    }

    private static byte[] Q() {
        byte[] bArr = null;
        int i2 = 1024;
        while (bArr == null && i2 > 0) {
            try {
                bArr = new byte[i2];
            } catch (Throwable unused) {
                i2 /= 2;
                if (i2 < 16) {
                    break;
                }
            }
        }
        return bArr;
    }

    private static String R() {
        return (!com.uc.crashsdk.b.C() || f60264d) ? LogType.JAVA_TYPE : "ucebujava";
    }

    private static void S() {
        String str;
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        String str2 = "-";
        try {
            str = Build.HARDWARE;
        } catch (Throwable th2) {
            com.uc.crashsdk.a.g.a(th2);
            str = "-";
        }
        try {
            fileReader = new FileReader(new File("/proc/cpuinfo"));
            try {
                bufferedReader = new BufferedReader(fileReader, 512);
                int i2 = 0;
                do {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (readLine.startsWith("Hardware")) {
                            str = readLine.substring(readLine.indexOf(":") + 1).trim();
                        } else if (readLine.startsWith("Processor")) {
                            str2 = readLine.substring(readLine.indexOf(":") + 1).trim();
                        }
                        i2++;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            com.uc.crashsdk.a.g.a(th);
                            com.uc.crashsdk.a.g.a(fileReader);
                            com.uc.crashsdk.a.g.a(bufferedReader);
                            f60270k = str;
                            f60271l = str2;
                        } catch (Throwable th4) {
                            com.uc.crashsdk.a.g.a(fileReader);
                            com.uc.crashsdk.a.g.a(bufferedReader);
                            throw th4;
                        }
                    }
                } while (i2 < 2);
                com.uc.crashsdk.a.g.a(fileReader);
            } catch (Throwable th5) {
                bufferedReader = null;
                th = th5;
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
            fileReader = null;
        }
        com.uc.crashsdk.a.g.a(bufferedReader);
        f60270k = str;
        f60271l = str2;
    }

    private static String T() {
        return g.U() + "bytes";
    }

    private static boolean U() {
        return Build.VERSION.SDK_INT < 29;
    }

    private static void V() {
        if (O || com.uc.crashsdk.b.C() || com.uc.crashsdk.b.I()) {
            return;
        }
        JNIBridge.cmd(18);
    }

    private static void W() {
        com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(TTAdConstant.VIDEO_URL_CODE), 1000L);
    }

    private static StringBuilder X() {
        String str;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("level: ");
            sb.append(C);
            sb.append("\n");
            sb.append("scale: ");
            sb.append(D);
            sb.append("\n");
            switch (F) {
                case 1:
                    str = " (Unknown)";
                    break;
                case 2:
                    str = " (Good)";
                    break;
                case 3:
                    str = " (Overheat)";
                    break;
                case 4:
                    str = " (Dead)";
                    break;
                case 5:
                    str = " (Over voltage)";
                    break;
                case 6:
                    str = " (Unspecified failure)";
                    break;
                case 7:
                    str = " (Cold)";
                    break;
                default:
                    str = " (?)";
                    break;
            }
            sb.append("health: ");
            sb.append(F);
            sb.append(str);
            sb.append("\n");
            int i2 = G;
            String str2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 4 ? " (?)" : " (Wireless)" : " (USB port)" : " (AC charger)" : " (None)";
            sb.append("pluged: ");
            sb.append(G);
            sb.append(str2);
            sb.append("\n");
            int i4 = H;
            String str3 = i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? " (?)" : " (Full)" : " (Not charging)" : " (Discharging)" : " (Charging)" : " (Unknown)";
            sb.append("status: ");
            sb.append(H);
            sb.append(str3);
            sb.append("\n");
            sb.append("voltage: ");
            sb.append(E);
            sb.append("\n");
            sb.append("temperature: ");
            sb.append(I);
            sb.append("\n");
            sb.append("technology: ");
            sb.append(J);
            sb.append("\n");
            sb.append("battery low: ");
            sb.append(K);
            sb.append("\n");
            return sb;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return null;
        }
    }

    private static void Y() {
        if (com.uc.crashsdk.b.f60228c && L && com.uc.crashsdk.a.f60148c) {
            L = false;
            if (com.uc.crashsdk.a.f.b(P)) {
                return;
            }
            com.uc.crashsdk.a.f.a(0, P, 2000L);
        }
    }

    private static boolean Z() {
        return com.uc.crashsdk.b.f60229d && JNIBridge.nativeIsCrashing();
    }

    public static boolean a() {
        if (f60265f == 0) {
            f60265f = 2L;
            if (g(com.uc.crashsdk.b.a("logs")) == 1) {
                f60265f = 1L;
            }
        }
        return f60265f == 1;
    }

    private static void aa() {
        String W2 = g.W();
        File file = new File(W2);
        if (file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length > 150) {
                    Arrays.sort(listFiles, new b((byte) 0));
                    int length = listFiles.length - 150;
                    int i2 = length < 0 ? 0 : length;
                    long currentTimeMillis = System.currentTimeMillis();
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < listFiles.length) {
                        File file2 = listFiles[i4];
                        boolean z3 = i4 < i2;
                        if (!z3 && currentTimeMillis - file2.lastModified() >= 432000000) {
                            z3 = true;
                        }
                        if (!z3) {
                            break;
                        }
                        file2.delete();
                        i5++;
                        if (0 >= 3) {
                            break;
                        }
                        i4++;
                    }
                    com.uc.crashsdk.a.a.a("Removed " + i5 + " logs in " + W2);
                }
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b() {
        if (f60266g == -1) {
            f60266g = g(com.uc.crashsdk.b.a("local"));
        }
        return f60266g;
    }

    public static String d(boolean z3) {
        return z3 ? "https://errlogos.umeng.com/upload" : "https://errlog.umeng.com/upload";
    }

    private static String j(String str) {
        return String.format(Locale.US, "%s%s_%s_%s.log", d(), m(), P(), str);
    }

    private static String k(String str) {
        if (com.uc.crashsdk.a.g.b(str)) {
            int indexOf = str.indexOf(0);
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
            return str.trim();
        }
        return "";
    }

    private static String l(String str) {
        String a4 = com.uc.crashsdk.a.b.a(str, g.w(), g.v());
        if (!str.equals(a4)) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
        return a4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
        if (r7.endsWith(r3) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
        if (r7.indexOf(".log", r7.lastIndexOf(95)) != r7.lastIndexOf(".log")) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean[] m(java.lang.String r7) {
        /*
            boolean r0 = com.uc.crashsdk.g.v()
            boolean r1 = com.uc.crashsdk.g.x()
            r2 = 0
            if (r0 != 0) goto Ld
            if (r1 == 0) goto L6d
        Ld:
            java.lang.String r3 = ".tmp"
            boolean r3 = r7.endsWith(r3)
            if (r3 != 0) goto L6b
            java.lang.String r3 = ".ec"
            boolean r3 = r7.contains(r3)
            if (r3 == 0) goto L1e
            goto L6b
        L1e:
            char r3 = java.io.File.separatorChar
            int r3 = r7.lastIndexOf(r3)
            if (r3 >= 0) goto L27
            r3 = 0
        L27:
            r4 = 0
        L28:
            r5 = 95
            int r3 = r7.indexOf(r5, r3)
            if (r3 < 0) goto L34
            int r4 = r4 + 1
            int r3 = r3 + 1
        L34:
            if (r3 >= 0) goto L28
            r3 = 8
            if (r4 == r3) goto L3b
            goto L6b
        L3b:
            java.lang.String r3 = com.uc.crashsdk.g.w()
            java.lang.String r4 = ".log"
            boolean r6 = r7.endsWith(r4)
            if (r6 != 0) goto L54
            boolean r0 = com.uc.crashsdk.a.g.a(r3)
            if (r0 != 0) goto L6b
            boolean r7 = r7.endsWith(r3)
            if (r7 != 0) goto L5a
            goto L6b
        L54:
            boolean r3 = com.uc.crashsdk.a.g.a(r3)
            if (r3 == 0) goto L5c
        L5a:
            r0 = 0
            goto L6d
        L5c:
            int r3 = r7.lastIndexOf(r5)
            int r3 = r7.indexOf(r4, r3)
            int r7 = r7.lastIndexOf(r4)
            if (r3 == r7) goto L6d
            goto L5a
        L6b:
            r0 = 0
            r1 = 0
        L6d:
            r7 = 2
            boolean[] r7 = new boolean[r7]
            r7[r2] = r0
            r0 = 1
            r7[r0] = r1
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.m(java.lang.String):boolean[]");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:3|4|(3:6|(3:9|(1:11)(17:12|13|14|(13:48|49|18|(1:47)(1:21)|22|(1:24)|25|26|27|29|30|31|32)(1:16)|17|18|(0)|47|22|(0)|25|26|27|29|30|31|32)|7)|53)|54|(0)|25|26|27|29|30|31|32) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(3:6|(3:9|(1:11)(17:12|13|14|(13:48|49|18|(1:47)(1:21)|22|(1:24)|25|26|27|29|30|31|32)(1:16)|17|18|(0)|47|22|(0)|25|26|27|29|30|31|32)|7)|53)|26|27|29|30|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00da, code lost:
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dc, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e2, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e5, code lost:
        com.uc.crashsdk.a.g.a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ea, code lost:
        com.uc.crashsdk.a.g.a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ed, code lost:
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae A[Catch: all -> 0x00ee, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0005, B:6:0x0033, B:7:0x0041, B:9:0x0047, B:11:0x0051, B:12:0x0056, B:15:0x0068, B:21:0x0078, B:26:0x0083, B:29:0x00ae, B:33:0x00d5, B:44:0x00e8, B:46:0x00ea, B:47:0x00ed, B:43:0x00e5, B:18:0x0072), top: B:53:0x0005, inners: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean n(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.n(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0 A[Catch: all -> 0x0106, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:49:0x00d3, B:56:0x00ee, B:52:0x00de, B:63:0x00fa, B:66:0x0104, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:73:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ae A[Catch: all -> 0x0106, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0008, B:7:0x0018, B:9:0x0023, B:10:0x002d, B:38:0x00ae, B:49:0x00d3, B:56:0x00ee, B:52:0x00de, B:63:0x00fa, B:66:0x0104, B:11:0x0033, B:13:0x003b, B:14:0x0044, B:16:0x004c, B:18:0x0054, B:20:0x005c, B:26:0x006a, B:28:0x0074, B:30:0x0081, B:32:0x008b, B:33:0x0096, B:35:0x00a0), top: B:73:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean o(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.o(java.lang.String):boolean");
    }

    private static Map<String, Integer> p(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("\\|", 30)) {
            String[] split = str2.split(":", 3);
            if (split.length == 2) {
                String trim = split[0].trim();
                if (!com.uc.crashsdk.a.g.a(trim)) {
                    int i2 = 1;
                    try {
                        i2 = Integer.parseInt(split[1].trim(), 10);
                    } catch (Throwable th) {
                        com.uc.crashsdk.a.g.a(th);
                    }
                    hashMap.put(trim, Integer.valueOf(i2));
                }
            }
        }
        return hashMap;
    }

    private static void q(String str) {
        if (g.q()) {
            try {
                aa();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            if (str == null || "".equals(str)) {
                return;
            }
            try {
                File file = new File(g.W());
                if (!file.exists()) {
                    file.mkdirs();
                }
                com.uc.crashsdk.a.a.a("crashsdk", "copy log to: " + file);
                com.uc.crashsdk.a.g.a(new File(str), file);
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
    }

    private static String r(String str) {
        return String.format("$^%s^$", str);
    }

    public static void s() {
        Thread.setDefaultUncaughtExceptionHandler(T);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean t() {
        return f60263c.get() || Z();
    }

    public static Throwable u() {
        return U;
    }

    public static int v() {
        if (com.uc.crashsdk.b.F() == 5) {
            return Z;
        }
        return 100;
    }

    public static void w() {
        long o3 = g.o();
        if (o3 < 0) {
            return;
        }
        boolean z3 = com.uc.crashsdk.b.F() == 5;
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(401));
        if (z3) {
            com.uc.crashsdk.a.e eVar = new com.uc.crashsdk.a.e(402);
            X = eVar;
            com.uc.crashsdk.a.f.a(0, eVar, o3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x() {
        if (com.uc.crashsdk.b.f60228c && com.uc.crashsdk.a.f60148c && !com.uc.crashsdk.a.f.b(aa)) {
            com.uc.crashsdk.a.f.a(0, aa, 1000L);
        }
    }

    public static boolean y() {
        synchronized (Y) {
            Runnable runnable = X;
            if (runnable == null || W) {
                return false;
            }
            com.uc.crashsdk.a.f.a(runnable);
            X = null;
            return true;
        }
    }

    public static void z() {
        if (g.q()) {
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(403), com.join.mgps.data.c.f47286a);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(thread, th, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        String str = f60268i;
        if (str != null) {
            return str;
        }
        String i2 = i((String) null);
        f60268i = i2;
        return i2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:30|(2:32|33)|34|35|36|(1:40)|41|(1:45)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0142, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x00d1, TRY_LEAVE, TryCatch #1 {all -> 0x00d1, blocks: (B:37:0x0098, B:39:0x00ad), top: B:67:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00de A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:49:0x00d8, B:51:0x00de, B:53:0x00e6, B:54:0x010c, B:56:0x0112, B:58:0x011a), top: B:65:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0112 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:49:0x00d8, B:51:0x00de, B:53:0x00e6, B:54:0x010c, B:56:0x0112, B:58:0x011a), top: B:65:0x00d8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.e():java.lang.String");
    }

    private static long g(String str) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("getLong", String.class, Long.TYPE);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                return ((Long) declaredMethod.invoke(null, str, 0L)).longValue();
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return 0L;
    }

    private static String h(String str) {
        try {
            return str.replaceAll("[^0-9a-zA-Z-.]", "-");
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String i(String str) {
        if (str == null) {
            str = String.valueOf(System.currentTimeMillis()) + new Random().nextInt(65536);
        }
        return String.format(Locale.US, "%s%s_%s_%s_%s_%s_", O(), g.R(), g.T(), h(Build.MODEL), h(Build.VERSION.RELEASE), str);
    }

    public static void r() {
        T = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        f60268i = null;
    }

    public static String h() {
        String str = f60272m;
        if (str != null) {
            return str;
        }
        String a4 = a(Process.myPid());
        f60272m = a4;
        return a4;
    }

    public static boolean b(int i2, Object[] objArr) {
        if (i2 == 451) {
            if (f60261a || objArr != null) {
                return a((String) objArr[0], (d) objArr[1]);
            }
            throw new AssertionError();
        } else if (i2 != 452) {
            if (f60261a) {
                return false;
            }
            throw new AssertionError();
        } else if (f60261a || objArr != null) {
            d dVar = (d) objArr[1];
            return com.uc.crashsdk.a.g.a(new File((String) objArr[0]), String.format(Locale.US, "%d %d %d %d", Long.valueOf(dVar.f60292a), Long.valueOf(dVar.f60293b), Integer.valueOf(dVar.f60294c), Integer.valueOf(dVar.f60295d)).getBytes());
        } else {
            throw new AssertionError();
        }
    }

    private static void c(OutputStream outputStream) {
        if (com.uc.crashsdk.b.f60229d) {
            String l4 = com.uc.crashsdk.b.l();
            f60267h = false;
            if (1 == JNIBridge.cmd(17, l4)) {
                File file = new File(l4);
                try {
                    byte[] e4 = com.uc.crashsdk.a.g.e(file);
                    if (e4 != null) {
                        outputStream.write(e4);
                    }
                } catch (Throwable th) {
                    a(th, outputStream);
                }
                try {
                    file.delete();
                } catch (Throwable th2) {
                    a(th2, outputStream);
                }
                f60267h = true;
                a(outputStream);
            }
            f60267h = true;
            return;
        }
        File[] fileArr = null;
        int i2 = 900;
        try {
            i2 = g.H();
            fileArr = new File("/proc/self/fd").listFiles();
            if (fileArr != null) {
                outputStream.write(String.format(Locale.US, "opened file count: %d, write limit: %d.\n", Integer.valueOf(fileArr.length), Integer.valueOf(i2)).getBytes("UTF-8"));
            } else {
                outputStream.write("[DEBUG] listFiles failed!\n".getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        if (fileArr != null) {
            try {
                if (fileArr.length >= i2) {
                    outputStream.write("opened files:\n".getBytes("UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    for (File file2 : fileArr) {
                        sb.append(file2.getName());
                        sb.append(" -> ");
                        sb.append(file2.getCanonicalPath());
                        sb.append("\n");
                    }
                    outputStream.write(sb.toString().getBytes("UTF-8"));
                }
            } catch (Throwable th4) {
                a(th4, outputStream);
            }
        }
        a(outputStream);
    }

    public static String f() {
        if (com.uc.crashsdk.a.g.a(f60270k)) {
            S();
        }
        return f60270k;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void d(java.io.OutputStream r12) {
        /*
            java.lang.String r0 = "UTF-8"
            r1 = 0
            r2 = 0
            int r3 = com.uc.crashsdk.g.I()     // Catch: java.lang.Throwable -> L1c
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L1a
            java.lang.String r5 = "/proc/self/task"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L1a
            java.io.File[] r2 = r4.listFiles()     // Catch: java.lang.Throwable -> L1a
            if (r2 != 0) goto L16
            return
        L16:
            int r4 = r2.length     // Catch: java.lang.Throwable -> L1a
            if (r4 >= r3) goto L23
            return
        L1a:
            r4 = move-exception
            goto L1f
        L1c:
            r4 = move-exception
            r3 = 300(0x12c, float:4.2E-43)
        L1f:
            com.uc.crashsdk.a.g.a(r4)
            r4 = 0
        L23:
            if (r2 != 0) goto L26
            return
        L26:
            java.lang.String r5 = "threads info:\n"
            byte[] r5 = r5.getBytes(r0)     // Catch: java.lang.Throwable -> L8e
            r12.write(r5)     // Catch: java.lang.Throwable -> L8e
            java.util.Locale r5 = java.util.Locale.US     // Catch: java.lang.Throwable -> L8e
            java.lang.String r6 = "threads count: %d, dump limit: %d.\n"
            r7 = 2
            java.lang.Object[] r8 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L8e
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L8e
            r8[r1] = r4     // Catch: java.lang.Throwable -> L8e
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L8e
            r4 = 1
            r8[r4] = r3     // Catch: java.lang.Throwable -> L8e
            java.lang.String r3 = java.lang.String.format(r5, r6, r8)     // Catch: java.lang.Throwable -> L8e
            byte[] r3 = r3.getBytes(r0)     // Catch: java.lang.Throwable -> L8e
            r12.write(r3)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r3 = " tid     name\n"
            byte[] r3 = r3.getBytes(r0)     // Catch: java.lang.Throwable -> L8e
            r12.write(r3)     // Catch: java.lang.Throwable -> L8e
            int r3 = r2.length     // Catch: java.lang.Throwable -> L8e
            r5 = 0
        L59:
            if (r5 >= r3) goto L92
            r6 = r2[r5]     // Catch: java.lang.Throwable -> L8e
            java.io.File r8 = new java.io.File     // Catch: java.lang.Throwable -> L8e
            java.lang.String r9 = r6.getPath()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r10 = "comm"
            r8.<init>(r9, r10)     // Catch: java.lang.Throwable -> L8e
            r9 = 128(0x80, float:1.794E-43)
            java.lang.String r8 = com.uc.crashsdk.a.g.a(r8, r9, r1)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r8 = k(r8)     // Catch: java.lang.Throwable -> L8e
            java.util.Locale r9 = java.util.Locale.US     // Catch: java.lang.Throwable -> L8e
            java.lang.String r10 = "%5s %s\n"
            java.lang.Object[] r11 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L8e
            java.lang.String r6 = r6.getName()     // Catch: java.lang.Throwable -> L8e
            r11[r1] = r6     // Catch: java.lang.Throwable -> L8e
            r11[r4] = r8     // Catch: java.lang.Throwable -> L8e
            java.lang.String r6 = java.lang.String.format(r9, r10, r11)     // Catch: java.lang.Throwable -> L8e
            byte[] r6 = r6.getBytes(r0)     // Catch: java.lang.Throwable -> L8e
            r12.write(r6)     // Catch: java.lang.Throwable -> L8e
            int r5 = r5 + 1
            goto L59
        L8e:
            r0 = move-exception
            a(r0, r12)
        L92:
            a(r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.d(java.io.OutputStream):void");
    }

    public static void j() {
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(StrictMode.getThreadPolicy()).permitNetwork().build());
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static String k() {
        if (com.uc.crashsdk.a.g.a(f60282w)) {
            synchronized (f60284y) {
                f60282w = com.uc.crashsdk.a.g.a(com.uc.crashsdk.b.f(), f60283x, true);
            }
        }
        return f60282w;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void a(int i2, Object[] objArr) {
        int i4;
        switch (i2) {
            case 401:
                JNIBridge.nativeCmd(10, com.uc.crashsdk.b.F() == 5 ? 1L : 0L, null, null);
                com.uc.crashsdk.a.f60148c = true;
                com.uc.crashsdk.a.a(false);
                L = true;
                Y();
                x();
                return;
            case 402:
                Object obj = Y;
                synchronized (obj) {
                    if (X == null) {
                        return;
                    }
                    W = true;
                    if (com.uc.crashsdk.b.n()) {
                        return;
                    }
                    if (!com.uc.crashsdk.a.d.d()) {
                        com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
                        return;
                    } else if (!c(LogType.UNEXP_TYPE)) {
                        com.uc.crashsdk.a.a.d("DEBUG", "unexp sample miss");
                        return;
                    } else {
                        int nativeGenerateUnexpLog = JNIBridge.nativeGenerateUnexpLog(g.o(), g.p());
                        if (nativeGenerateUnexpLog != 0) {
                            f.a(11);
                            if ((nativeGenerateUnexpLog & 4352) != 0) {
                                Z = 105;
                                i4 = 30;
                            } else if ((nativeGenerateUnexpLog & LogType.UNEXP_EXIT) != 0) {
                                Z = 104;
                                i4 = 31;
                            } else if ((nativeGenerateUnexpLog & LogType.UNEXP_RESTART) != 0) {
                                Z = 106;
                                i4 = 32;
                            } else {
                                if ((nativeGenerateUnexpLog & LogType.UNEXP_ANR) != 0) {
                                    Z = 103;
                                    f.a(10);
                                } else if ((nativeGenerateUnexpLog & LogType.UNEXP_LOW_MEMORY) != 0) {
                                    Z = 107;
                                    f.a(29);
                                } else {
                                    Z = 102;
                                }
                                a(true);
                            }
                            f.a(i4);
                            a(true);
                        }
                        synchronized (obj) {
                            X = null;
                        }
                        return;
                    }
                }
            case 403:
                aa();
                return;
            case TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE /* 404 */:
            default:
                if (!f60261a) {
                    throw new AssertionError();
                }
                return;
            case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 405 */:
                L = false;
                StringBuilder X2 = X();
                String d4 = com.uc.crashsdk.b.d();
                if (X2 != null) {
                    com.uc.crashsdk.a.g.a(new File(d4), X2.toString());
                    return;
                }
                return;
            case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 406 */:
                if (!f60261a && objArr == null) {
                    throw new AssertionError();
                }
                a((String) objArr[0], ((Boolean) objArr[1]).booleanValue(), ((Boolean) objArr[2]).booleanValue());
                return;
            case TTAdConstant.DOWNLOAD_URL_CODE /* 407 */:
                try {
                    com.uc.crashsdk.a.d();
                    return;
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                    return;
                }
            case TTAdConstant.INTERACTION_TYPE_CODE /* 408 */:
                synchronized (ab) {
                    if (!ac && g.O() && com.uc.crashsdk.b.w()) {
                        com.uc.crashsdk.b.p();
                        h.f();
                        f.c();
                        if (com.uc.crashsdk.b.C()) {
                            B();
                        }
                        if (g.O()) {
                            a(Calendar.getInstance());
                        }
                        ac = true;
                        return;
                    }
                    return;
                }
            case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                b(false, false);
                return;
            case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                a(false, true);
                return;
            case TTAdConstant.IMAGE_CODE /* 411 */:
                if (com.uc.crashsdk.b.f60229d) {
                    JNIBridge.set(28, c(LogType.NATIVE_TYPE));
                    JNIBridge.set(29, c(LogType.ANR_TYPE));
                    return;
                }
                return;
            case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                if (!R && com.uc.crashsdk.b.y() && g.K()) {
                    b(com.uc.crashsdk.a.g.a());
                    return;
                } else if (R) {
                    if (com.uc.crashsdk.b.y() && g.K()) {
                        return;
                    }
                    try {
                        com.uc.crashsdk.a.g.a().unregisterReceiver(Q);
                        R = false;
                        return;
                    } catch (Throwable th2) {
                        com.uc.crashsdk.a.g.a(th2);
                        return;
                    }
                } else {
                    return;
                }
            case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                JNIBridge.cmd(8);
                return;
            case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                try {
                    if (d(com.uc.crashsdk.a.g.a())) {
                        return;
                    }
                    int i5 = N + 1;
                    N = i5;
                    if (i5 < 10) {
                        W();
                        return;
                    } else if (com.uc.crashsdk.b.f60229d) {
                        JNIBridge.set(130, "(get failed)");
                        return;
                    } else {
                        return;
                    }
                } catch (Throwable th3) {
                    com.uc.crashsdk.a.g.a(th3);
                    return;
                }
            case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                if (!f60261a && objArr == null) {
                    throw new AssertionError();
                }
                long longValue = ((Long) objArr[0]).longValue();
                Calendar calendar = Calendar.getInstance();
                if (calendar.getTimeInMillis() >= longValue) {
                    h.g();
                    f.a(100);
                    b(true, true);
                    h.b();
                } else {
                    h.h();
                    h.i();
                    h.c();
                }
                a(calendar);
                break;
            case 416:
                break;
        }
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProGuard */
    /* loaded from: classes4.dex */
    public static class a extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final long f60287a;

        /* renamed from: b  reason: collision with root package name */
        private final OutputStream f60288b;

        /* renamed from: c  reason: collision with root package name */
        private int f60289c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f60290d = 0;

        /* renamed from: e  reason: collision with root package name */
        private boolean f60291e = false;

        a(long j4, OutputStream outputStream) {
            this.f60287a = j4;
            this.f60288b = outputStream;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int a(byte[] r7, int r8, int r9) {
            /*
                r6 = this;
                int r0 = r6.f60290d
                int r0 = r0 + r9
                r6.f60290d = r0
                boolean r0 = r6.f60291e
                if (r0 == 0) goto Lb
                r7 = 0
                return r7
            Lb:
                int r0 = com.uc.crashsdk.g.y()
                if (r0 <= 0) goto L19
                int r1 = r6.f60289c
                int r2 = r1 + r9
                if (r2 <= r0) goto L19
                int r0 = r0 - r1
                goto L1a
            L19:
                r0 = r9
            L1a:
                int r1 = r6.f60289c
                int r1 = r1 + r0
                r6.f60289c = r1
                long r1 = r6.f60287a
                r3 = 0
                int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r5 == 0) goto L30
                java.lang.String r1 = new java.lang.String
                r1.<init>(r7, r8, r0)
                r6.b(r1)
                goto L35
            L30:
                java.io.OutputStream r1 = r6.f60288b
                r1.write(r7, r8, r0)
            L35:
                if (r0 >= r9) goto L3a
                r7 = 1
                r6.f60291e = r7
            L3a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a.a(byte[], int, int):int");
        }

        private void b(String str) {
            if (com.uc.crashsdk.b.f60229d) {
                JNIBridge.nativeClientWriteData(this.f60287a, str);
            }
        }

        @Override // java.io.OutputStream
        public final void write(int i2) {
            if (e.f60267h && e.H()) {
                com.uc.crashsdk.a.a.d("DEBUG", String.format(Locale.US, "%c", Integer.valueOf(i2)));
            }
            if (this.f60287a != 0) {
                b(String.format(Locale.US, "%c", Integer.valueOf(i2)));
            } else {
                this.f60288b.write(i2);
            }
            this.f60289c++;
            this.f60290d++;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i2, int i4) {
            if (e.f60267h && e.H()) {
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i2, bArr2, 0, i4);
                if (i4 != 1 || bArr2[0] != 10) {
                    try {
                        com.uc.crashsdk.a.a.d("DEBUG", new String(bArr2));
                    } catch (Throwable unused) {
                    }
                }
            }
            a(bArr, i2, i4);
        }

        final void a() {
            try {
                if (this.f60290d - this.f60289c > 0) {
                    a("\n");
                    a("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n");
                }
                a(String.format(Locale.US, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n", Integer.valueOf(this.f60290d), Integer.valueOf(this.f60289c), Integer.valueOf(g.y()), Integer.valueOf(this.f60290d - this.f60289c)));
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            if (e.f60267h && e.H() && (bArr.length != 1 || bArr[0] != 10)) {
                try {
                    com.uc.crashsdk.a.a.d("DEBUG", new String(bArr));
                } catch (Throwable unused) {
                }
            }
            a(bArr, 0, bArr.length);
        }

        final void a(String str) {
            if (e.f60267h && e.H()) {
                com.uc.crashsdk.a.a.d("DEBUG", str);
            }
            if (this.f60287a != 0) {
                b(str);
            } else {
                this.f60288b.write(str.getBytes("UTF-8"));
            }
        }
    }

    private static void f(OutputStream outputStream) {
        String m4;
        try {
            outputStream.write("recent status:\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            if (af) {
                m4 = r("LASTVER");
            } else {
                m4 = com.uc.crashsdk.a.m();
            }
            outputStream.write(String.format(Locale.US, "last version: '%s'\n", m4).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            ArrayList<String> arrayList = f60277r;
            synchronized (arrayList) {
                if (f60279t != null) {
                    outputStream.write(String.format(Locale.US, "generating log: %s\n", f60279t).getBytes("UTF-8"));
                }
                if (f60278s > 0 || arrayList.size() > 0) {
                    outputStream.write(String.format(Locale.US, "generated %d logs, recent are:\n", Integer.valueOf(f60278s)).getBytes("UTF-8"));
                    Iterator<String> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        outputStream.write(String.format(Locale.US, "* %s\n", it2.next()).getBytes("UTF-8"));
                    }
                }
            }
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "dumping all threads: %s\n", Boolean.valueOf(f60280u)).getBytes("UTF-8"));
            String str = f60281v;
            if (str != null) {
                outputStream.write(String.format(locale, "dumping threads: %s\n", str).getBytes("UTF-8"));
            }
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        a(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("JavaMax:    ");
            sb.append(Runtime.getRuntime().maxMemory() / 1024);
            sb.append(" kB\n");
            sb.append("JavaTotal:  ");
            sb.append(Runtime.getRuntime().totalMemory() / 1024);
            sb.append(" kB\n");
            sb.append("JavaFree:   ");
            sb.append(Runtime.getRuntime().freeMemory() / 1024);
            sb.append(" kB\n");
            sb.append("NativeHeap: ");
            sb.append(Debug.getNativeHeapSize() / 1024);
            sb.append(" kB\n");
            sb.append("NativeAllocated: ");
            sb.append(Debug.getNativeHeapAllocatedSize() / 1024);
            sb.append(" kB\n");
            sb.append("NativeFree: ");
            sb.append(Debug.getNativeHeapFreeSize() / 1024);
            sb.append(" kB\n");
            ActivityManager activityManager = (ActivityManager) com.uc.crashsdk.a.g.a().getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                sb.append("availMem:   ");
                sb.append(memoryInfo.availMem / 1024);
                sb.append(" kB\n");
                sb.append("threshold:  ");
                sb.append(memoryInfo.threshold / 1024);
                sb.append(" kB\n");
                sb.append("lowMemory:  ");
                sb.append(memoryInfo.lowMemory);
                sb.append("\n");
            }
            return sb.toString();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProGuard */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        long f60292a;

        /* renamed from: b  reason: collision with root package name */
        long f60293b;

        /* renamed from: c  reason: collision with root package name */
        int f60294c;

        /* renamed from: d  reason: collision with root package name */
        int f60295d;

        /* renamed from: e  reason: collision with root package name */
        boolean f60296e;

        /* renamed from: f  reason: collision with root package name */
        boolean f60297f;

        /* renamed from: g  reason: collision with root package name */
        boolean f60298g;

        private d() {
            this.f60292a = 0L;
            this.f60293b = 0L;
            this.f60294c = 0;
            this.f60295d = 0;
            this.f60296e = false;
            this.f60297f = false;
            this.f60298g = false;
        }

        /* synthetic */ d(byte b4) {
            this();
        }
    }

    public static void l() {
        if (af) {
            return;
        }
        com.uc.crashsdk.a.f.a(1, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_CODE), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i() {
        return f60264d;
    }

    public static void o() {
        String str;
        Throwable th;
        if (com.uc.crashsdk.a.g.a(B)) {
            String str2 = null;
            try {
                File file = new File(g.U() + "unique");
                if (file.exists()) {
                    str = com.uc.crashsdk.a.g.a(file, 48, false);
                    try {
                        if (str != null) {
                            try {
                                if (str.length() == 36) {
                                    str2 = str.replaceAll("[^0-9a-zA-Z-]", "-");
                                }
                            } catch (Exception e4) {
                                com.uc.crashsdk.a.g.a(e4);
                            }
                        }
                        str2 = str;
                    } catch (Throwable th2) {
                        th = th2;
                        com.uc.crashsdk.a.g.a(th);
                        str2 = str;
                        B = str2;
                    }
                }
                if (com.uc.crashsdk.a.g.a(str2)) {
                    com.uc.crashsdk.b.D();
                    str2 = UUID.randomUUID().toString();
                    if (!com.uc.crashsdk.a.g.a(str2)) {
                        com.uc.crashsdk.a.g.a(file, str2.getBytes());
                    }
                }
            } catch (Throwable th3) {
                str = str2;
                th = th3;
            }
            B = str2;
        }
    }

    public static String p() {
        return B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void q() {
        O = false;
        if (!com.uc.crashsdk.b.y()) {
            com.uc.crashsdk.a.f.a(3, new com.uc.crashsdk.a.e(416), 11000L);
        }
        if (U()) {
            return;
        }
        N = 0;
        W();
    }

    private static void b(OutputStream outputStream, String str, String str2) {
        String str3;
        String str4;
        try {
            outputStream.write("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
        try {
            Locale locale = Locale.US;
            outputStream.write(String.format(locale, "Basic Information: 'pid: %d/tid: %d/time: %s'\n", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()), m()).getBytes("UTF-8"));
            Object[] objArr = new Object[3];
            objArr[0] = e();
            if (com.uc.crashsdk.a.g.a(f60271l)) {
                S();
            }
            objArr[1] = f60271l;
            objArr[2] = f();
            outputStream.write(String.format(locale, "Cpu Information: 'abi: %s/processor: %s/hardware: %s'\n", objArr).getBytes("UTF-8"));
        } catch (Throwable th2) {
            a(th2, outputStream);
        }
        try {
            Locale locale2 = Locale.US;
            outputStream.write(String.format(locale2, "Mobile Information: 'model: %s/version: %s/sdk: %d'\n", Build.MODEL, Build.VERSION.RELEASE, Integer.valueOf(Build.VERSION.SDK_INT)).getBytes("UTF-8"));
            outputStream.write(("Build fingerprint: '" + Build.FINGERPRINT + "'\n").getBytes("UTF-8"));
            Object[] objArr2 = new Object[4];
            objArr2[0] = a(new Date(f60262b));
            objArr2[1] = Long.valueOf(Runtime.getRuntime().maxMemory());
            objArr2[2] = com.uc.crashsdk.a.g.d();
            objArr2[3] = com.uc.crashsdk.b.y() ? "fg" : "bg";
            outputStream.write(String.format(locale2, "Runtime Information: 'start: %s/maxheap: %s/primaryabi: %s/ground: %s'\n", objArr2).getBytes("UTF-8"));
        } catch (Throwable th3) {
            a(th3, outputStream);
        }
        try {
            Locale locale3 = Locale.US;
            outputStream.write(String.format(locale3, "Application Information: 'version: %s/subversion: %s/buildseq: %s/versioncode: %d'\n", g.R(), g.S(), g.T(), Integer.valueOf(com.uc.crashsdk.a.c())).getBytes("UTF-8"));
            String str5 = "0";
            String str6 = "";
            if (com.uc.crashsdk.b.f60229d) {
                String nativeGet = JNIBridge.nativeGet(1, 0L, null);
                str4 = JNIBridge.nativeGet(2, 0L, null);
                str5 = nativeGet;
            } else {
                str4 = "";
            }
            outputStream.write(String.format(locale3, "CrashSDK Information: 'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s'\n", "3.2.0.4", str5, "210105150455", str4, "release").getBytes("UTF-8"));
            if (str != null) {
                str6 = str;
            }
            outputStream.write(("Report Name: " + str6.substring(str6.lastIndexOf(47) + 1) + "\n").getBytes("UTF-8"));
        } catch (Throwable th4) {
            a(th4, outputStream);
        }
        try {
            if (af) {
                str3 = r("UUID");
            } else {
                str3 = B;
            }
            outputStream.write(String.format("UUID: %s\n", str3).getBytes("UTF-8"));
            outputStream.write(("Log Type: " + str2 + "\n").getBytes("UTF-8"));
        } catch (Throwable th5) {
            a(th5, outputStream);
        }
        try {
            String B2 = com.uc.crashsdk.b.B();
            if (com.uc.crashsdk.a.g.a(B2)) {
                B2 = "(none)";
            }
            outputStream.write(("Activity: " + B2 + "\n").getBytes("UTF-8"));
        } catch (Throwable th6) {
            a(th6, outputStream);
        }
        a(outputStream);
        try {
            com.uc.crashsdk.a.a(outputStream, "UTF-8");
            if (af) {
                f60267h = false;
                outputStream.write(r("HEADER").getBytes("UTF-8"));
                f60267h = true;
            }
        } catch (Throwable th7) {
            a(th7, outputStream);
        }
        a(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m() {
        return a(new Date());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Context context) {
        List<ActivityManager.ProcessErrorStateInfo> processesInErrorState;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        boolean z3 = false;
        if (activityManager == null || (processesInErrorState = activityManager.getProcessesInErrorState()) == null) {
            return false;
        }
        int myPid = Process.myPid();
        Iterator<ActivityManager.ProcessErrorStateInfo> it2 = processesInErrorState.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ActivityManager.ProcessErrorStateInfo next = it2.next();
            if (next.pid == myPid) {
                O = true;
                if (N()) {
                    com.uc.crashsdk.a.a.d("crashsdk", "ANR occurred in process: " + next.processName);
                }
                if (com.uc.crashsdk.b.f60229d) {
                    JNIBridge.set(130, next.longMsg);
                }
                z3 = true;
            }
        }
        if (!z3 && com.uc.crashsdk.b.f60229d) {
            V();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z3) {
        File[] listFiles;
        try {
            if (com.uc.crashsdk.b.v() && (listFiles = new File(g.V()).listFiles()) != null) {
                int l4 = g.l();
                int m4 = g.m();
                if (listFiles.length < Math.min(l4, m4)) {
                    return;
                }
                int i2 = 0;
                int i4 = 0;
                for (File file : listFiles) {
                    if (b(file)) {
                        i2++;
                    } else {
                        i4++;
                    }
                }
                int i5 = (!z3 || i2 < l4) ? 0 : (i2 - l4) + 1;
                int i6 = (z3 || i4 < m4) ? 0 : (i4 - m4) + 1;
                if (i5 == 0 && i6 == 0) {
                    return;
                }
                Arrays.sort(listFiles, new b((byte) 0));
                int i7 = i5;
                int i8 = i6;
                for (File file2 : listFiles) {
                    boolean b4 = b(file2);
                    if (b4 && i7 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest crash log: " + file2.getPath());
                        file2.delete();
                        i7 += -1;
                    } else if (!b4 && i8 > 0) {
                        com.uc.crashsdk.a.a.a("crashsdk", "Delete oldest custom log: " + file2.getPath());
                        file2.delete();
                        i8 += -1;
                    }
                    if (i7 == 0 && i8 == 0) {
                        break;
                    }
                }
                f.a(16, i5 + i6);
                if (i5 > 0) {
                    f.a(22, i5);
                }
                if (i6 > 0) {
                    f.a(23, i6);
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void n() {
        f60262b = System.currentTimeMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x009b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x006f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(java.io.OutputStream r11) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.e(java.io.OutputStream):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(String str) {
        if (af) {
            return true;
        }
        try {
            return o(str);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return true;
        }
    }

    public static boolean d(String str) {
        try {
            if (com.uc.crashsdk.a.g.b(str) && str.startsWith("lib") && str.endsWith(".so")) {
                System.loadLibrary(str.substring(3, str.length() - 3));
                return true;
            }
            return false;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z3) {
        boolean z4 = true;
        if (!R ? !z3 || !g.K() : z3 && g.K()) {
            z4 = false;
        }
        if (z4) {
            com.uc.crashsdk.a.e eVar = S;
            if (com.uc.crashsdk.a.f.b(eVar)) {
                com.uc.crashsdk.a.f.a(eVar);
            }
            com.uc.crashsdk.a.f.a(0, eVar, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
        r3.write(r4.getBytes("UTF-8"));
        r3.write("\n".getBytes("UTF-8"));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r8, java.lang.String r9) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L79
            r1 = 26
            java.lang.String r2 = "ps"
            if (r0 < r1) goto Lf
            java.lang.String r0 = "-ef"
            java.lang.String[] r0 = new java.lang.String[]{r2, r0}     // Catch: java.lang.Throwable -> L79
            goto L13
        Lf:
            java.lang.String[] r0 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L79
        L13:
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L79
            java.lang.Process r0 = r1.exec(r0)     // Catch: java.lang.Throwable -> L79
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L79
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L79
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Throwable -> L79
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L79
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L79
            boolean r0 = com.uc.crashsdk.a.g.b(r8)     // Catch: java.lang.Throwable -> L79
            boolean r2 = com.uc.crashsdk.a.g.b(r9)     // Catch: java.lang.Throwable -> L79
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L79
            r3.<init>()     // Catch: java.lang.Throwable -> L79
        L36:
            java.lang.String r4 = r1.readLine()     // Catch: java.lang.Throwable -> L79
            java.lang.String r5 = "UTF-8"
            if (r4 == 0) goto L74
            r6 = 1
            if (r0 == 0) goto L47
            boolean r7 = r4.contains(r8)     // Catch: java.lang.Throwable -> L79
            if (r7 != 0) goto L61
        L47:
            if (r2 == 0) goto L50
            boolean r7 = r4.contains(r9)     // Catch: java.lang.Throwable -> L79
            if (r7 == 0) goto L50
            goto L61
        L50:
            r7 = 47
            int r7 = r4.indexOf(r7)     // Catch: java.lang.Throwable -> L79
            if (r7 >= 0) goto L60
            r7 = 46
            int r7 = r4.indexOf(r7)     // Catch: java.lang.Throwable -> L79
            if (r7 > 0) goto L61
        L60:
            r6 = 0
        L61:
            if (r6 == 0) goto L36
            byte[] r4 = r4.getBytes(r5)     // Catch: java.lang.Throwable -> L79
            r3.write(r4)     // Catch: java.lang.Throwable -> L79
            java.lang.String r4 = "\n"
            byte[] r4 = r4.getBytes(r5)     // Catch: java.lang.Throwable -> L79
            r3.write(r4)     // Catch: java.lang.Throwable -> L79
            goto L36
        L74:
            java.lang.String r8 = r3.toString(r5)     // Catch: java.lang.Throwable -> L79
            return r8
        L79:
            r8 = move-exception
            com.uc.crashsdk.a.g.a(r8)
            java.lang.String r8 = "exception exists."
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a(java.lang.String, java.lang.String):java.lang.String");
    }

    private static BufferedReader a(InputStreamReader inputStreamReader) {
        BufferedReader bufferedReader = null;
        int i2 = 8192;
        while (bufferedReader == null && i2 > 0) {
            try {
                bufferedReader = new BufferedReader(inputStreamReader, i2);
            } catch (Throwable unused) {
                i2 /= 2;
                if (i2 < 512) {
                    break;
                }
            }
        }
        return bufferedReader;
    }

    public static int e(boolean z3) {
        int b4;
        if (z3) {
            b4 = f.a(com.uc.crashsdk.b.c()) ? 1 : 0;
        } else {
            b4 = f.b();
        }
        int b5 = f.b(z3);
        return b5 > b4 ? b5 : b4;
    }

    private static void a(OutputStream outputStream) {
        try {
            outputStream.write("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n".getBytes("UTF-8"));
        } catch (Throwable th) {
            a(th, outputStream);
        }
    }

    private static String a(File file) {
        String str;
        try {
            str = file.getCanonicalPath();
        } catch (Throwable unused) {
            str = null;
        }
        return com.uc.crashsdk.a.g.a(str) ? file.getPath() : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder e(String str) {
        return a(Thread.currentThread().getStackTrace(), str);
    }

    private static long a(StatFs statFs, String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                Method declaredMethod = StatFs.class.getDeclaredMethod(str, new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(statFs, new Object[0]);
                if (invoke != null && (invoke instanceof Long)) {
                    return ((Long) invoke).longValue();
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Method declaredMethod2 = StatFs.class.getDeclaredMethod(str2, new Class[0]);
            declaredMethod2.setAccessible(true);
            Object invoke2 = declaredMethod2.invoke(statFs, new Object[0]);
            if (invoke2 == null || !(invoke2 instanceof Integer)) {
                return 0L;
            }
            return ((Integer) invoke2).intValue();
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return 0L;
        }
    }

    private static void b(OutputStream outputStream) {
        BufferedReader bufferedReader = null;
        try {
            outputStream.write("logcat:\n".getBytes("UTF-8"));
        } finally {
            try {
                com.uc.crashsdk.a.g.a(bufferedReader);
                a(outputStream);
            } finally {
            }
        }
        if (g.n() <= 0) {
            outputStream.write("[DEBUG] custom java logcat lines count is 0!\n".getBytes("UTF-8"));
            a(outputStream);
            return;
        }
        int n4 = g.n();
        bufferedReader = a(new InputStreamReader(Runtime.getRuntime().exec(new String[]{"logcat", "-d", "-b", com.umeng.analytics.pro.c.ar, "-b", "main", "-v", "threadtime", "-t", String.valueOf(n4)}).getInputStream()));
        if (bufferedReader == null) {
            outputStream.write("[DEBUG] alloc buffer failed!\n".getBytes("UTF-8"));
            a(outputStream);
            return;
        }
        f60267h = false;
        int i2 = 0;
        int i4 = 0;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            i2++;
            if (i4 < n4 && !readLine.contains(" I auditd ") && !readLine.contains(" I liblog ")) {
                outputStream.write(readLine.getBytes("UTF-8"));
                outputStream.write("\n".getBytes("UTF-8"));
                i4++;
            }
        }
        outputStream.write(String.format(Locale.US, "[DEBUG] Read %d lines, wrote %d lines.\n", Integer.valueOf(i2), Integer.valueOf(i4)).getBytes("UTF-8"));
        f60267h = true;
        com.uc.crashsdk.a.g.a(bufferedReader);
        a(outputStream);
    }

    private static void a(a aVar) {
        try {
            aVar.a(String.format(Locale.US, "log end: %s\n", m()));
        } catch (Throwable th) {
            a(th, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(OutputStream outputStream, String str, int i2) {
        int i4 = 0;
        if (str == null) {
            a(outputStream);
            return 0;
        }
        try {
            String a4 = com.uc.crashsdk.a.b.a(str);
            if (a4 == null) {
                a4 = "file: '" + str + "' not found or decode failed!";
            }
            int length = a4.length();
            if (length <= i2 + 32) {
                i2 = length;
            }
            if (i2 > 0) {
                try {
                    outputStream.write(a4.getBytes("UTF-8"), 0, i2);
                    outputStream.write("\n".getBytes("UTF-8"));
                } catch (Throwable th) {
                    th = th;
                    i4 = i2;
                    a(th, outputStream);
                    i2 = i4;
                    a(outputStream);
                    return i2;
                }
            }
            if (i2 < a4.length()) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(a4.length() - i2)).getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(outputStream);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int i2) {
        try {
            String a4 = com.uc.crashsdk.a.g.a(new File(String.format(Locale.US, "/proc/%d/cmdline", Integer.valueOf(i2))), 128, false);
            return com.uc.crashsdk.a.g.b(a4) ? k(a4) : "unknown";
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return "unknown";
        }
    }

    private static void b(a aVar) {
        f60267h = false;
        try {
            aVar.write((r("LOG_END") + "\n").getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f60267h = true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:1|(42:2|3|4|(2:205|206)|6|(1:8)(1:204)|9|10|11|(1:13)|14|(2:197|198)|16|17|18|(1:20)|21|(1:25)|26|27|28|29|30|(1:32)|33|34|35|36|37|38|39|40|(3:42|43|44)|45|46|47|48|49|(1:51)(2:194|(1:196))|52|53|54)|(3:56|57|58)(3:142|143|(5:150|151|152|153|(43:155|156|157|158|160|161|162|163|164|165|166|167|168|169|170|171|60|61|62|(3:64|65|66)(7:123|124|(1:126)|127|(1:129)|130|(4:132|(1:134)(1:138)|135|136))|67|68|69|70|(3:72|73|74)|75|76|77|78|(3:80|81|82)|83|84|85|86|(1:88)|89|90|(1:92)|93|94|(1:96)(1:101)|97|98)))|59|60|61|62|(0)(0)|67|68|69|70|(0)|75|76|77|78|(0)|83|84|85|86|(0)|89|90|(0)|93|94|(0)(0)|97|98|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x04cb, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x04cc, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0434 A[Catch: all -> 0x0498, TRY_LEAVE, TryCatch #24 {all -> 0x0498, blocks: (B:180:0x0350, B:185:0x0361, B:210:0x041b, B:217:0x0430, B:219:0x0434, B:224:0x0449, B:236:0x045f, B:238:0x0463, B:243:0x0478, B:244:0x047b, B:191:0x037b, B:179:0x034d, B:212:0x0427, B:239:0x0466, B:220:0x0437, B:245:0x0481, B:225:0x044c, B:231:0x0456, B:181:0x0353), top: B:303:0x034d }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0463 A[Catch: all -> 0x0498, TRY_LEAVE, TryCatch #24 {all -> 0x0498, blocks: (B:180:0x0350, B:185:0x0361, B:210:0x041b, B:217:0x0430, B:219:0x0434, B:224:0x0449, B:236:0x045f, B:238:0x0463, B:243:0x0478, B:244:0x047b, B:191:0x037b, B:179:0x034d, B:212:0x0427, B:239:0x0466, B:220:0x0437, B:245:0x0481, B:225:0x044c, B:231:0x0456, B:181:0x0353), top: B:303:0x034d }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x04a9 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x04ba A[Catch: all -> 0x04cb, TryCatch #29 {all -> 0x04cb, blocks: (B:270:0x04b6, B:272:0x04ba, B:274:0x04c5), top: B:295:0x04b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0380 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(java.lang.Throwable r24, java.lang.String r25, long r26, boolean r28) {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a(java.lang.Throwable, java.lang.String, long, boolean):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(OutputStream outputStream, String str, int i2) {
        int i4;
        DataInputStream dataInputStream;
        int i5;
        DataInputStream dataInputStream2 = null;
        int i6 = 0;
        try {
            File file = new File(str);
            if (file.exists()) {
                byte[] Q2 = Q();
                if (Q2 == null) {
                    outputStream.write("(alloc buffer failed!)\n".getBytes("UTF-8"));
                    return 0;
                }
                dataInputStream = new DataInputStream(new FileInputStream(file));
                i5 = 0;
                i4 = 0;
                loop0: while (true) {
                    boolean z3 = false;
                    while (true) {
                        try {
                            int read = dataInputStream.read(Q2);
                            if (read == -1) {
                                break loop0;
                            }
                            i5 += read;
                            int i7 = i2 - i4;
                            if (read <= i7 + 32) {
                                i7 = read;
                            }
                            if (i7 > 0 && !z3) {
                                outputStream.write(Q2, 0, i7);
                                i4 += i7;
                            }
                            if (!z3) {
                                if (i7 < read || i4 >= i2) {
                                    z3 = true;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            i6 = i4;
                            dataInputStream2 = dataInputStream;
                            try {
                                a(th, outputStream);
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                                i4 = i6;
                                a(outputStream);
                                return i4;
                            } finally {
                                com.uc.crashsdk.a.g.a(dataInputStream2);
                            }
                        }
                    }
                }
            } else {
                outputStream.write(("file: '" + str + "' not exists!\n").getBytes("UTF-8"));
                dataInputStream = null;
                i5 = 0;
                i4 = 0;
            }
            if (i4 > 0) {
                outputStream.write("\n".getBytes("UTF-8"));
            }
            if (i4 < i5) {
                outputStream.write(String.format(Locale.US, "(truncated %d bytes)\n", Integer.valueOf(i5 - i4)).getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(outputStream);
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(boolean z3) {
        try {
            boolean z4 = g.r() && com.uc.crashsdk.b.C() && !f60264d;
            if (!z4) {
                z4 = g.s();
            }
            if (z4) {
                if (z3) {
                    String k4 = k();
                    if (com.uc.crashsdk.a.g.a(k4)) {
                        return;
                    }
                    j();
                    a(k4, false, false);
                    return;
                }
                a(true, false);
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    private static boolean b(File file) {
        int indexOf;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(95);
        if (lastIndexOf > 0 && (indexOf = name.indexOf(46, lastIndexOf)) > 0) {
            String substring = name.substring(lastIndexOf + 1, indexOf);
            return LogType.JAVA_TYPE.equals(substring) || "ucebujava".equals(substring) || LogType.NATIVE_TYPE.equals(substring) || "ucebujni".equals(substring) || LogType.UNEXP_TYPE.equals(substring) || LogType.ANR_TYPE.equals(substring);
        }
        return false;
    }

    private static String b(String str, boolean z3, boolean z4) {
        if (z3) {
            try {
                str = l(str);
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
        if (z4) {
            try {
                return a(str);
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
                return str;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(String str, String str2, boolean z3) {
        h.a(str, str2, false, z3);
    }

    public static void b(String str) {
        synchronized (f60285z) {
            String i2 = com.uc.crashsdk.b.i();
            com.uc.crashsdk.a.b.a(i2, str + "\n");
        }
    }

    private static void b(String str, String str2) {
        try {
            com.uc.crashsdk.d.a(str, h(), str2);
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    public static void b(Context context) {
        if (g.K()) {
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                intentFilter.addAction("android.intent.action.BATTERY_LOW");
                intentFilter.addAction("android.intent.action.BATTERY_OKAY");
                context.registerReceiver(Q, intentFilter, null, com.uc.crashsdk.a.f.a(1));
                R = true;
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
        }
    }

    public static void b(int i2) {
        com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(TTAdConstant.IMAGE_LIST_SIZE_CODE), i2 * 1000);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int b(boolean z3, boolean z4) {
        int i2;
        if (z4 && !ac) {
            f.d(false);
        }
        if (z3) {
            boolean a4 = f.a(com.uc.crashsdk.b.c(), false);
            h.i();
            i2 = a4;
        } else {
            int a5 = f.a();
            h.i();
            i2 = a5;
        }
        return z4 ? f.a(z3) : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        int lastIndexOf;
        int indexOf;
        int i2;
        int indexOf2;
        File file;
        byte[] e4;
        if (g.x() && (lastIndexOf = str.lastIndexOf(47)) > 0 && (indexOf = str.indexOf(95, lastIndexOf)) > lastIndexOf && (indexOf2 = str.indexOf(95, (i2 = indexOf + 1))) > indexOf) {
            String d4 = com.uc.crashsdk.a.g.d("CrashSDK" + str.substring(lastIndexOf + 1, indexOf) + str.substring(i2, indexOf2));
            if (d4 == null || (e4 = com.uc.crashsdk.a.g.e((file = new File(str)))) == null || e4.length <= 0) {
                return str;
            }
            byte[] bArr = null;
            try {
                bArr = com.uc.crashsdk.a.c.b(e4, d4.substring(0, 16).getBytes());
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            if (bArr == null) {
                return str;
            }
            String str2 = str + ".ec";
            File file2 = new File(str2 + ".tmp");
            if (com.uc.crashsdk.a.g.a(file2, bArr)) {
                if (!file2.renameTo(new File(str2))) {
                    file2.delete();
                    return str;
                }
                file.delete();
                return str2;
            }
            return str;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Throwable th, OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.write("[DEBUG] CrashHandler occurred new exception:\n".getBytes("UTF-8"));
                th.printStackTrace(new PrintStream(outputStream));
                outputStream.write("\n\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
        }
        com.uc.crashsdk.a.g.a(th);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02f2 A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0348 A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03a1 A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d8 A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020d A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0223 A[Catch: all -> 0x0432, TryCatch #2 {all -> 0x043d, blocks: (B:175:0x042c, B:176:0x042e, B:182:0x043b, B:4:0x000a, B:6:0x0010, B:8:0x001f, B:9:0x0034, B:11:0x003a, B:12:0x004d, B:14:0x005d, B:16:0x0067, B:147:0x03bd, B:18:0x006d, B:20:0x007b, B:22:0x008d, B:25:0x00ae, B:27:0x00be, B:31:0x00cb, B:42:0x00f7, B:38:0x00e9, B:62:0x01c4, B:64:0x01d8, B:66:0x01dc, B:67:0x01de, B:69:0x01e3, B:70:0x01e5, B:71:0x01ea, B:81:0x020d, B:82:0x0223, B:84:0x0229, B:86:0x0232, B:88:0x023e, B:90:0x025d, B:91:0x0270, B:93:0x0282, B:95:0x0290, B:96:0x02a1, B:110:0x02e3, B:113:0x02f2, B:116:0x02fe, B:119:0x030d, B:121:0x031b, B:123:0x0328, B:126:0x032f, B:130:0x033c, B:132:0x0348, B:134:0x0362, B:135:0x0367, B:137:0x0377, B:139:0x0384, B:145:0x03ae, B:150:0x03d1, B:152:0x03d8, B:154:0x03df, B:156:0x03e6, B:158:0x03ed, B:160:0x03f4, B:166:0x0406, B:168:0x040d, B:170:0x0414, B:172:0x041b, B:164:0x03ff, B:138:0x037e, B:140:0x03a1, B:142:0x03a6, B:98:0x02a7, B:100:0x02ad, B:103:0x02b5, B:105:0x02b9, B:107:0x02cd, B:109:0x02d1, B:75:0x01f4, B:77:0x0202, B:79:0x0208, B:61:0x01c1, B:173:0x0423), top: B:195:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 1101
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a(java.lang.String, boolean, boolean):void");
    }

    public static boolean a(boolean z3, boolean z4) {
        if (!f60264d) {
            if (com.uc.crashsdk.b.f60229d) {
                JNIBridge.set(1, true);
            }
            f60264d = true;
        }
        try {
            String k4 = k();
            if (com.uc.crashsdk.a.g.a(k4)) {
                com.uc.crashsdk.a.a.a("crashsdk", "CrashHandler url is empty!");
                return false;
            }
            Object obj = f60273n;
            synchronized (obj) {
                if (com.uc.crashsdk.a.f.a(z3 ? 1 : 0, new com.uc.crashsdk.a.e(TTAdConstant.DOWNLOAD_APP_INFO_CODE, new Object[]{k4, Boolean.valueOf(z4), Boolean.valueOf(z3)})) && z3) {
                    try {
                        obj.wait();
                    } catch (InterruptedException e4) {
                        com.uc.crashsdk.a.g.a(e4);
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7 */
    private static boolean a(String str, com.uc.crashsdk.a.e eVar) {
        boolean z3;
        FileChannel fileChannel;
        Exception e4;
        synchronized (f60274o) {
            File file = new File(str);
            if (!file.exists()) {
                try {
                    file.createNewFile();
                } catch (Exception e5) {
                    com.uc.crashsdk.a.g.a(e5);
                }
            }
            ?? r5 = 0;
            r5 = null;
            FileLock lock = null;
            z3 = false;
            try {
                try {
                    try {
                        fileChannel = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0).getChannel();
                    } catch (Throwable th) {
                        th = th;
                        r5 = file;
                        com.uc.crashsdk.a.g.a((Closeable) r5);
                        throw th;
                    }
                } catch (Exception e6) {
                    try {
                        com.uc.crashsdk.a.g.a(e6);
                        fileChannel = null;
                    } catch (Exception e7) {
                        fileChannel = null;
                        e4 = e7;
                        com.uc.crashsdk.a.g.a(e4);
                        com.uc.crashsdk.a.g.a(fileChannel);
                        return z3;
                    }
                }
                if (fileChannel != null) {
                    try {
                        lock = fileChannel.lock();
                    } catch (Exception e8) {
                        try {
                            com.uc.crashsdk.a.g.a(e8);
                        } catch (Exception e9) {
                            e4 = e9;
                            com.uc.crashsdk.a.g.a(e4);
                            com.uc.crashsdk.a.g.a(fileChannel);
                            return z3;
                        }
                    }
                }
                try {
                    z3 = eVar.a();
                    com.uc.crashsdk.a.g.a(fileChannel);
                } finally {
                    if (lock != null) {
                        try {
                            lock.release();
                        } catch (Exception e10) {
                            com.uc.crashsdk.a.g.a(e10);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return z3;
    }

    private static boolean a(String str, d dVar) {
        String a4 = com.uc.crashsdk.a.g.a(new File(str), 64, false);
        if (a4 == null) {
            return false;
        }
        try {
            Matcher matcher = Pattern.compile("(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)").matcher(a4);
            if (matcher.find()) {
                long parseLong = Long.parseLong(matcher.group(1));
                if (System.currentTimeMillis() - parseLong < 86400000) {
                    dVar.f60293b = Long.parseLong(matcher.group(2));
                    dVar.f60294c = Integer.parseInt(matcher.group(3));
                    dVar.f60295d = Integer.parseInt(matcher.group(4));
                    dVar.f60292a = parseLong;
                }
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r11v3 */
    public static boolean a(StringBuffer stringBuffer, String str, long j4, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, String str2) {
        long j5;
        boolean z3;
        boolean a4;
        if (f60263c.get()) {
            com.uc.crashsdk.a.a.b("Processing java crash, skip generate custom log: " + str);
            return false;
        }
        boolean z4 = af || com.uc.crashsdk.b.I();
        if (!z4 && !com.uc.crashsdk.a.d.d()) {
            com.uc.crashsdk.a.a.c("DEBUG", com.uc.crashsdk.a.d.b());
            return false;
        } else if (!c(str)) {
            com.uc.crashsdk.a.a.d("DEBUG", "custom log sample miss: " + str);
            return false;
        } else if (Z()) {
            com.uc.crashsdk.a.a.b("Processing native crash, skip generate custom log: " + str);
            return false;
        } else if (stringBuffer == null || str == null) {
            return false;
        } else {
            String str3 = g.V() + j(str);
            ?? r11 = (j4 & 32) != 0 ? 1 : 0;
            if (z4) {
                long nativeClientCreateConnection = com.uc.crashsdk.b.f60229d ? JNIBridge.nativeClientCreateConnection(str3, SchedulerSupport.CUSTOM, str, r11) : 0L;
                if (nativeClientCreateConnection == 0) {
                    com.uc.crashsdk.a.a.d("DEBUG", "skip custom log: " + str);
                    return false;
                }
                j5 = nativeClientCreateConnection;
            } else if (a(h(), str, (boolean) r11)) {
                return false;
            } else {
                g.a();
                a(false);
                j5 = 0;
            }
            synchronized (f60275p) {
                z3 = r11;
                a4 = a(str3, j5, stringBuffer, str, j4, arrayList, arrayList2, arrayList3, str2);
            }
            if (a4 && !z4) {
                b(h(), str, z3);
            }
            if (j5 != 0) {
                JNIBridge.nativeClientCloseConnection(j5);
            }
            if (a4) {
                if (!z4) {
                    q(str3);
                }
                if (!z4) {
                    str3 = a(l(str3));
                }
                b(str3, str);
                if (!z3 || z4) {
                    return true;
                }
                try {
                    a(true, false);
                    return true;
                } catch (Throwable th) {
                    com.uc.crashsdk.a.g.a(th);
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, String str2, boolean z3) {
        if (n(str2)) {
            h.a(str, str2, true, z3);
            com.uc.crashsdk.a.a.b(String.format(Locale.US, "Custom log '%s' has reach max count!", str2));
            return true;
        }
        return false;
    }

    private static void a(a aVar, String str, long j4) {
        String nativeDumpThreads;
        String str2 = null;
        if (com.uc.crashsdk.b.f60229d) {
            try {
                aVar.flush();
            } catch (Throwable th) {
                com.uc.crashsdk.a.g.a(th);
            }
            nativeDumpThreads = JNIBridge.nativeDumpThreads(str, j4);
            if (af || nativeDumpThreads == null || nativeDumpThreads.length() >= 512 || !nativeDumpThreads.startsWith(net.lingala.zip4j.util.e.F0) || nativeDumpThreads.indexOf(10) >= 0) {
                str2 = nativeDumpThreads;
            } else {
                if (!new File(nativeDumpThreads).exists()) {
                    str2 = "Can not found " + nativeDumpThreads;
                }
                String str3 = str2;
                str2 = nativeDumpThreads;
                nativeDumpThreads = str3;
            }
        } else {
            nativeDumpThreads = "Native not initialized, skip dump!";
        }
        if (nativeDumpThreads != null) {
            try {
                aVar.write(nativeDumpThreads.getBytes("UTF-8"));
                aVar.write("\n".getBytes("UTF-8"));
            } catch (Throwable th2) {
                com.uc.crashsdk.a.g.a(th2);
            }
            a((OutputStream) aVar);
        } else if (str2 != null && !af) {
            b(aVar, str2, 1048576);
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
        }
        try {
            aVar.flush();
        } catch (Throwable th3) {
            com.uc.crashsdk.a.g.a(th3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.lang.String r17, long r18, java.lang.StringBuffer r20, java.lang.String r21, long r22, java.util.ArrayList<java.lang.String> r24, java.util.ArrayList<java.lang.String> r25, java.util.ArrayList<java.lang.String> r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a(java.lang.String, long, java.lang.StringBuffer, java.lang.String, long, java.util.ArrayList, java.util.ArrayList, java.util.ArrayList, java.lang.String):boolean");
    }

    public static void a(String str, boolean z3) {
        if (z3) {
            f60283x = str;
            return;
        }
        synchronized (f60284y) {
            f60282w = str;
            com.uc.crashsdk.a.b.a(com.uc.crashsdk.b.f(), str + "\n");
        }
    }

    private static String a(Date date) {
        return String.format(Locale.US, "%d%02d%02d%02d%02d%02d", Integer.valueOf(date.getYear() + 1900), Integer.valueOf(date.getMonth() + 1), Integer.valueOf(date.getDate()), Integer.valueOf(date.getHours()), Integer.valueOf(date.getMinutes()), Integer.valueOf(date.getSeconds()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str, String str2, int i2, boolean z3, boolean z4) {
        f60267h = false;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[5];
            objArr[0] = str;
            objArr[1] = str2;
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = Integer.valueOf(z3 ? 1 : 0);
            objArr[4] = Integer.valueOf(z4 ? 1 : 0);
            outputStream.write(String.format(locale, "$^%s`%s`%d`%d,%d^$", objArr).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f60267h = true;
        a(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, String str, String str2) {
        f60267h = false;
        try {
            outputStream.write(String.format(Locale.US, "$^%s`%s^$", str, str2).getBytes("UTF-8"));
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
        f60267h = true;
    }

    public static void a(Context context) {
        try {
            if (U()) {
                context.registerReceiver(new c((byte) 0), new IntentFilter("android.intent.action.ANR"), null, com.uc.crashsdk.a.f.a(3));
            }
        } catch (Throwable th) {
            com.uc.crashsdk.a.g.a(th);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:145|(3:177|178|(15:181|182|183|(1:150)|151|152|153|154|(1:156)|157|(1:161)|162|(1:165)|167|(2:169|170)(1:171)))|147|(1:150)|151|152|153|154|(0)|157|(2:159|161)|162|(1:165)|167|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:193|(3:225|226|(15:229|230|231|(1:198)|199|200|201|202|(1:204)|205|(1:209)|210|(1:213)|215|(2:217|218)(1:219)))|195|(1:198)|199|200|201|202|(0)|205|(2:207|209)|210|(1:213)|215|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:71|(3:103|104|(15:107|108|109|(1:76)|77|78|79|80|(1:82)|83|(1:87)|88|(1:91)|93|(2:95|96)(1:97)))|73|(1:76)|77|78|79|80|(0)|83|(2:85|87)|88|(1:91)|93|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:365|(1:369)|(3:401|402|(15:405|406|407|(1:374)|375|376|377|378|(1:380)|381|(1:385)|386|(1:389)|391|(2:393|394)(1:395)))|371|(1:374)|375|376|377|378|(0)|381|(2:383|385)|386|(1:389)|391|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(17:313|314|(1:318)|(3:350|351|(15:354|355|356|(1:323)|324|325|326|327|(1:329)|330|(1:334)|335|(1:338)|340|(2:342|343)(1:344)))|320|(1:323)|324|325|326|327|(0)|330|(2:332|334)|335|(1:338)|340|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:11|(5:14|15|16|(1:18)|12)|66|19|(3:52|53|(15:56|57|58|(1:24)|25|26|27|28|(1:30)|31|(1:35)|36|(1:39)|41|(2:43|44)(1:46)))|21|(1:24)|25|26|27|28|(0)|31|(2:33|35)|36|(1:39)|41|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:473|474|(1:478)|(3:509|510|(17:513|514|515|516|(1:483)|484|485|486|487|(0)|490|(2:492|494)|495|(1:498)|500|(0)|503))|480|(0)|484|485|486|487|(0)|490|(0)|495|(0)|500|(0)|503) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:417|418|(1:420)|422|(1:426)|(3:458|459|(16:462|463|464|465|(1:431)|432|433|434|435|(1:437)|438|(1:442)|443|(1:446)|448|(2:450|451)(1:452)))|428|(1:431)|432|433|434|435|(0)|438|(2:440|442)|443|(1:446)|448|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(34:117|(1:119)|120|(1:122)|123|124|125|126|127|128|(1:526)|132|133|134|135|(7:137|138|139|(1:141)(1:303)|142|143|(15:145|(3:177|178|(15:181|182|183|(1:150)|151|152|153|154|(1:156)|157|(1:161)|162|(1:165)|167|(2:169|170)(1:171)))|147|(1:150)|151|152|153|154|(0)|157|(2:159|161)|162|(1:165)|167|(0)(0))(2:191|(15:193|(3:225|226|(15:229|230|231|(1:198)|199|200|201|202|(1:204)|205|(1:209)|210|(1:213)|215|(2:217|218)(1:219)))|195|(1:198)|199|200|201|202|(0)|205|(2:207|209)|210|(1:213)|215|(0)(0))(1:239)))(5:(1:307)|308|(1:310)(1:415)|311|(17:313|314|(1:318)|(3:350|351|(15:354|355|356|(1:323)|324|325|326|327|(1:329)|330|(1:334)|335|(1:338)|340|(2:342|343)(1:344)))|320|(1:323)|324|325|326|327|(0)|330|(2:332|334)|335|(1:338)|340|(0)(0))(1:(16:365|(1:369)|(3:401|402|(15:405|406|407|(1:374)|375|376|377|378|(1:380)|381|(1:385)|386|(1:389)|391|(2:393|394)(1:395)))|371|(1:374)|375|376|377|378|(0)|381|(2:383|385)|386|(1:389)|391|(0)(0))))|240|(5:245|(1:247)|248|249|250)|251|(1:255)|(3:287|288|(16:291|292|293|294|(1:260)|261|262|263|264|(1:266)|267|(1:271)|272|(1:275)|277|(2:279|280)(1:281)))|257|(1:260)|261|262|263|264|(0)|267|(2:269|271)|272|(1:275)|277|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0132, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0133, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0248, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0249, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0280, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0281, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x02c3, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x02c4, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x02fb, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x02fc, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x0363, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0364, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x039b, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x039c, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x03e2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x03e3, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x041a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x041b, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x04df, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x04e0, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0517, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0518, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0590, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0591, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x05c8, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x05c9, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0079, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007a, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x0611, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0612, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x0649, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x064a, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b1, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b2, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00fa, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00fb, code lost:
        com.uc.crashsdk.a.g.a(r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01f3 A[Catch: all -> 0x020a, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x052e, blocks: (B:151:0x0221, B:190:0x0294, B:192:0x029a, B:233:0x0315, B:234:0x031a, B:236:0x031e, B:135:0x01f3, B:142:0x0206, B:146:0x020e), top: B:491:0x01f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x023f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0269 A[Catch: all -> 0x0280, TryCatch #22 {all -> 0x0280, blocks: (B:171:0x024d, B:174:0x0258, B:176:0x0269, B:178:0x026d, B:179:0x0270, B:182:0x0278), top: B:519:0x024d }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0276 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x02ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x02e4 A[Catch: all -> 0x02fb, TryCatch #18 {all -> 0x02fb, blocks: (B:212:0x02c8, B:215:0x02d3, B:217:0x02e4, B:219:0x02e8, B:220:0x02eb, B:223:0x02f3), top: B:511:0x02c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x035a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0384 A[Catch: all -> 0x039b, TryCatch #44 {all -> 0x039b, blocks: (B:266:0x0368, B:269:0x0373, B:271:0x0384, B:273:0x0388, B:274:0x038b, B:277:0x0393), top: B:556:0x0368 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0391 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x03d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0403 A[Catch: all -> 0x041a, TryCatch #43 {all -> 0x041a, blocks: (B:310:0x03e7, B:313:0x03f2, B:315:0x0403, B:317:0x0407, B:318:0x040a, B:321:0x0412), top: B:554:0x03e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0410 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x045e A[Catch: all -> 0x052c, TryCatch #6 {all -> 0x052c, blocks: (B:329:0x042e, B:332:0x0440, B:334:0x0446, B:336:0x045e, B:337:0x0461, B:343:0x048f, B:241:0x032c, B:338:0x0486), top: B:491:0x01f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x04d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0500 A[Catch: all -> 0x0517, TryCatch #42 {all -> 0x0517, blocks: (B:369:0x04e4, B:372:0x04ef, B:374:0x0500, B:376:0x0504, B:377:0x0507, B:380:0x050f), top: B:552:0x04e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x050d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0070 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0587 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x05b1 A[Catch: all -> 0x05c8, TryCatch #28 {all -> 0x05c8, blocks: (B:423:0x0595, B:426:0x05a0, B:428:0x05b1, B:430:0x05b5, B:431:0x05b8, B:434:0x05c0), top: B:530:0x0595 }] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x05be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0608 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0632 A[Catch: all -> 0x0649, TryCatch #31 {all -> 0x0649, blocks: (B:468:0x0616, B:471:0x0621, B:473:0x0632, B:475:0x0636, B:476:0x0639, B:479:0x0641), top: B:536:0x0616 }] */
    /* JADX WARN: Removed duplicated region for block: B:478:0x063f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009a A[Catch: all -> 0x00b1, TryCatch #11 {all -> 0x00b1, blocks: (B:45:0x007e, B:48:0x0089, B:50:0x009a, B:52:0x009e, B:53:0x00a1, B:56:0x00a9), top: B:497:0x007e }] */
    /* JADX WARN: Removed duplicated region for block: B:538:0x04ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:574:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:575:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:576:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:577:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:578:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:579:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:580:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:581:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x011b A[Catch: all -> 0x0132, TryCatch #12 {all -> 0x0132, blocks: (B:88:0x00ff, B:91:0x010a, B:93:0x011b, B:95:0x011f, B:96:0x0122, B:99:0x012a), top: B:499:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0128 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Thread r20, java.lang.Throwable r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 1632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.e.a(java.lang.Thread, java.lang.Throwable, boolean):void");
    }

    private static void a(Throwable th) {
        try {
            com.uc.crashsdk.a.a.d("DEBUG", a(th.getStackTrace(), (String) null).toString());
        } catch (Throwable unused) {
        }
    }

    private static void a(Calendar calendar) {
        if (g.Q()) {
            long timeInMillis = calendar.getTimeInMillis();
            calendar.add(5, 1);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            long timeInMillis2 = calendar.getTimeInMillis();
            long j4 = timeInMillis2 - timeInMillis;
            com.uc.crashsdk.a.f.a(0, new com.uc.crashsdk.a.e(TTAdConstant.VIDEO_COVER_URL_CODE, new Object[]{Long.valueOf(timeInMillis2)}), j4 <= 3600000 ? 1000 + j4 : 3600000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StringBuilder a(StackTraceElement[] stackTraceElementArr, String str) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            boolean z3 = str == null;
            int i4 = 0;
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                i4++;
                sb.append("  at ");
                sb.append(stackTraceElement.toString());
                sb.append("\n");
                if (!z3 && stackTraceElement.getMethodName().contains(str)) {
                    sb.delete(0, sb.length());
                    z3 = true;
                    i4 = 0;
                }
            }
            i2 = i4;
        }
        if (i2 == 0) {
            sb.append("  (no java stack)\n");
        }
        return sb;
    }

    public static boolean a(ParcelFileDescriptor parcelFileDescriptor) {
        if (ae) {
            com.uc.crashsdk.a.a.d("crashsdk", "Can not call setHostFd and getHostFd in the same process!");
            return false;
        } else if (!com.uc.crashsdk.b.f60229d) {
            com.uc.crashsdk.a.a.d("crashsdk", "Crash so is not loaded!");
            return false;
        } else {
            if (ad != null) {
                com.uc.crashsdk.a.a.c("crashsdk", "Has already set host fd!");
            }
            ad = parcelFileDescriptor;
            int fd = parcelFileDescriptor.getFd();
            int nativeCmd = (int) JNIBridge.nativeCmd(13, fd, null, null);
            af = nativeCmd != -1;
            return fd == -1 || nativeCmd != -1;
        }
    }
}
