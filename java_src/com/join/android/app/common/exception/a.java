package com.join.android.app.common.exception;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.join.android.app.common.utils.j;
import com.join.mgps.Util.g0;
import com.join.mgps.activity.SplashActivity;
import com.papa.sim.statistic.p;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import net.lingala.zip4j.util.e;
/* compiled from: DefaultExceptionHandler.java */
/* loaded from: classes.dex */
public class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f16981e = true;

    /* renamed from: f  reason: collision with root package name */
    public static final String f16982f = "CrashCatchHandler";

    /* renamed from: g  reason: collision with root package name */
    private static final String f16983g = "VERSION_NAME";

    /* renamed from: h  reason: collision with root package name */
    private static final String f16984h = "VERSION_CODE";

    /* renamed from: i  reason: collision with root package name */
    private static final String f16985i = "EXCEPTION";

    /* renamed from: j  reason: collision with root package name */
    private static final String f16986j = "crash";

    /* renamed from: k  reason: collision with root package name */
    private static final String f16987k = ".log";

    /* renamed from: l  reason: collision with root package name */
    private static final int f16988l = 2000;

    /* renamed from: m  reason: collision with root package name */
    private static final String f16989m = "/log";

    /* renamed from: n  reason: collision with root package name */
    private static final String f16990n = "yyyy-MM-dd HH:mm:ss";

    /* renamed from: o  reason: collision with root package name */
    private static final a f16991o = new a();

    /* renamed from: a  reason: collision with root package name */
    private Context f16992a;

    /* renamed from: b  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f16993b;

    /* renamed from: c  reason: collision with root package name */
    private Properties f16994c = new Properties();

    /* renamed from: d  reason: collision with root package name */
    private String f16995d;

    /* compiled from: DefaultExceptionHandler.java */
    /* renamed from: com.join.android.app.common.exception.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0127a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f16996a;

        C0127a(Throwable th) {
            this.f16996a = th;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            a.this.k(this.f16996a);
            a.this.i(this.f16996a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultExceptionHandler.java */
    /* loaded from: classes.dex */
    public class b implements FilenameFilter {
        b() {
        }

        boolean a(long j4) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j4);
            int i2 = calendar.get(1);
            int i4 = calendar.get(2);
            int i5 = calendar.get(5);
            calendar.setTimeInMillis(System.currentTimeMillis());
            return i2 == calendar.get(1) && i4 == calendar.get(2) && i5 == calendar.get(5);
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.contains(g0.f27568a)) {
                String substring = str.substring(str.lastIndexOf(g0.f27568a) + 1);
                if (TextUtils.isEmpty(substring) && substring.equals("log")) {
                    if (!a(file.lastModified()) && file.exists()) {
                        file.delete();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    private a() {
    }

    @SuppressLint({"CommitPrefEdits"})
    private String d(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        this.f16994c.put(f16985i, stringWriter.toString());
        try {
            stringWriter.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        printWriter.close();
        String str = e.F0 + f16986j + new SimpleDateFormat(f16990n, Locale.US).format(new Date()) + f16987k;
        File file = new File(this.f16995d);
        if (!file.exists()) {
            file.mkdirs();
            if (file.canWrite()) {
                return m(str);
            }
            l("unable to write to log file", null);
        } else if (file.canWrite()) {
            return m(str);
        } else {
            l("unable to write to log file", null);
        }
        return null;
    }

    public static a e() {
        return f16991o;
    }

    public static FilenameFilter f() {
        return new b();
    }

    private String g() {
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            return this.f16992a.getCacheDir().getPath();
        }
        return this.f16992a.getExternalCacheDir().getAbsolutePath();
    }

    private void h() {
        ((AlarmManager) this.f16992a.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis() + 1000, PendingIntent.getActivity(this.f16992a, 0, new Intent(this.f16992a, SplashActivity.class), 0));
        Process.killProcess(Process.myPid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(Throwable th) {
        String localizedMessage;
        if (th == null || (localizedMessage = th.getLocalizedMessage()) == null) {
            return false;
        }
        l("程序异常，即将退出:\r\n", localizedMessage);
        c();
        d(th);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer(j.n(this.f16992a).m() + ";error::");
        stringBuffer.append(th.getMessage());
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        p.l(this.f16992a).H1(stringBuffer.toString());
    }

    private void l(String str, String str2) {
    }

    public void c() {
        Field[] declaredFields;
        try {
            this.f16994c.put(f16983g, com.join.android.app.mgsim.wufun.b.f17914h);
            this.f16994c.put(f16984h, "340");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        for (Field field : Build.class.getDeclaredFields()) {
            field.setAccessible(true);
            try {
                this.f16994c.put(field.getName(), String.valueOf(field.get(null)));
            } catch (IllegalAccessException e5) {
                e5.printStackTrace();
            } catch (IllegalArgumentException e6) {
                e6.printStackTrace();
            }
        }
    }

    public void j(Context context) {
        this.f16992a = context;
        this.f16993b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.f16995d = g() + f16989m;
        new File(this.f16995d).listFiles(f());
    }

    public String m(String str) {
        File file = new File(this.f16995d + str);
        try {
            file.createNewFile();
            if (file.exists() && file.canWrite()) {
                FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                this.f16994c.store(fileOutputStream, "");
                fileOutputStream.flush();
                fileOutputStream.close();
                return str;
            }
            return null;
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (IOException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
        new C0127a(th).start();
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException unused) {
        }
        h();
    }
}
