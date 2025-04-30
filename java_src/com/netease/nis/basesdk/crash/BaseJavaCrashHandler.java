package com.netease.nis.basesdk.crash;

import android.os.Process;
import android.util.Log;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public abstract class BaseJavaCrashHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private String f54053a = "https://crash.163.com/uploadCrashLogInfo.do";

    /* renamed from: b  reason: collision with root package name */
    private String f54054b = "https://crash.163.com/client/api/uploadStartUpInfo.do";

    /* renamed from: c  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f54055c;

    /* renamed from: d  reason: collision with root package name */
    private CrashStore f54056d;

    /* loaded from: classes4.dex */
    class a implements HttpUtil.ResponseCallBack {
        a(BaseJavaCrashHandler baseJavaCrashHandler) {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            Logger.i("BaseJavaCrashHandler", "start error" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.i("BaseJavaCrashHandler", "start success");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements HttpUtil.ResponseCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f54057a;

        b(String str) {
            this.f54057a = str;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            Logger.e("upload crash info failed,error code:" + i2 + " msg:" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.d("upload crash info success" + this.f54057a);
            BaseJavaCrashHandler.this.f54056d.delete(this.f54057a);
        }
    }

    protected abstract Map<String, String> buildCrashInfo(String str);

    protected abstract Map<String, String> buildStartInfo();

    public void initialize(String str) {
        this.f54055c = Thread.getDefaultUncaughtExceptionHandler();
        try {
            Thread.setDefaultUncaughtExceptionHandler(this);
        } catch (Exception e4) {
            Logger.e("BaseJavaCrashHandler", "JavaCrashHandler setDefaultUncaughtExceptionHandler failed" + e4.getMessage());
        }
        CrashStore crashStore = CrashStore.getInstance();
        this.f54056d = crashStore;
        crashStore.initialize(str);
        if (buildStartInfo() != null) {
            new Thread(new StartReportRunnable(buildStartInfo(), this.f54054b, new a(this))).start();
        }
        a();
    }

    protected boolean interceptHandleException(Throwable th) {
        return false;
    }

    public void setStartUrl(String str) {
        this.f54054b = str;
    }

    public void setUploadUrl(String str) {
        this.f54053a = str;
    }

    public void testCrash() {
        throw new RuntimeException("test java exception");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f54055c;
        if (uncaughtExceptionHandler != null) {
            Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
        }
        try {
            if (!interceptHandleException(th)) {
                a(thread, th);
            }
        } catch (Exception e4) {
            Logger.e("BaseJavaCrashHandler", "JavaCrashHandler handleException failed" + e4.getMessage());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f54055c;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    private void a() {
        Logger.d("check and report crash info");
        File[] loadJava = this.f54056d.loadJava();
        if (loadJava.length > 0) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 5, 5L, TimeUnit.SECONDS, new ArrayBlockingQueue(10), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardPolicy());
            for (File file : loadJava) {
                try {
                    threadPoolExecutor.execute(a(this.f54056d.parse(file.getAbsolutePath()), file.getAbsolutePath()));
                } catch (UnsupportedEncodingException unused) {
                    Logger.e("BaseJavaCrashHandler", "logInfo encode error");
                }
            }
        }
    }

    private void a(Thread thread, Throwable th) {
        try {
            a(this.f54056d.store(Log.getStackTraceString(th)).getAbsolutePath());
        } catch (UnsupportedEncodingException unused) {
            Logger.e("BaseJavaCrashHandler", "logInfo encode error");
        }
    }

    private void a(String str) {
        String parse = this.f54056d.parse(str);
        Logger.d(parse);
        Thread thread = new Thread(a(parse, str));
        thread.start();
        try {
            thread.join(3000L);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            Logger.e("quick upload isInterrupted");
        }
    }

    private CrashReportRunnable a(String str, String str2) {
        return new CrashReportRunnable(buildCrashInfo(str), this.f54053a, new b(str2));
    }
}
