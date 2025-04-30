package cn.sharesdk.framework.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.a.b.e;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.g;
import com.mob.MobSDK;
import com.mob.commons.SHARESDK;
import com.mob.commons.authorize.DeviceAuthorizer;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.FileLocker;
import java.io.File;
import java.util.Calendar;
/* compiled from: StatisticsLogger.java */
/* loaded from: classes2.dex */
public class d extends g {

    /* renamed from: b  reason: collision with root package name */
    private static d f8790b;

    /* renamed from: e  reason: collision with root package name */
    private Handler f8793e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8794f;

    /* renamed from: g  reason: collision with root package name */
    private long f8795g;

    /* renamed from: h  reason: collision with root package name */
    private File f8796h;

    /* renamed from: c  reason: collision with root package name */
    private DeviceHelper f8791c = DeviceHelper.getInstance(MobSDK.getContext());

    /* renamed from: d  reason: collision with root package name */
    private a f8792d = a.a();

    /* renamed from: i  reason: collision with root package name */
    private FileLocker f8797i = new FileLocker();

    private d() {
        File file = new File(MobSDK.getContext().getFilesDir(), ".statistics");
        this.f8796h = file;
        if (file.exists()) {
            return;
        }
        try {
            this.f8796h.createNewFile();
        } catch (Exception e4) {
            SSDKLog.b().a(e4);
        }
    }

    private void d(cn.sharesdk.framework.a.b.c cVar) {
        try {
            this.f8792d.a(cVar);
            cVar.h();
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            SSDKLog.b().a(cVar.toString(), new Object[0]);
        }
    }

    public void b(cn.sharesdk.framework.a.b.c cVar) {
        try {
            if (MobSDK.isMob()) {
                if (this.f8794f) {
                    c(cVar);
                    if (cVar.g()) {
                        Message message = new Message();
                        message.what = 3;
                        message.obj = cVar;
                        this.f8927a.sendMessage(message);
                    } else {
                        SSDKLog b4 = SSDKLog.b();
                        b4.a("Drop event: " + cVar.toString(), new Object[0]);
                    }
                }
            }
        } catch (Throwable th) {
            SSDKLog b5 = SSDKLog.b();
            b5.a("logStart " + th, new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.utils.g
    protected void c(Message message) {
        if (this.f8794f) {
            e eVar = new e();
            eVar.f8765a = System.currentTimeMillis() - this.f8795g;
            a(eVar);
            this.f8794f = false;
            try {
                this.f8793e.sendEmptyMessage(1);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
            f8790b = null;
            this.f8927a.getLooper().quit();
        }
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f8790b == null) {
                f8790b = new d();
            }
            dVar = f8790b;
        }
        return dVar;
    }

    public void a(Handler handler) {
        this.f8793e = handler;
    }

    @Override // cn.sharesdk.framework.utils.g
    protected void a(Message message) {
        if (this.f8794f) {
            return;
        }
        this.f8794f = true;
        try {
            this.f8797i.setLockFile(this.f8796h.getAbsolutePath());
            if (this.f8797i.lock(false)) {
                new Thread(new Runnable() { // from class: cn.sharesdk.framework.a.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d.this.f8792d.a(DeviceAuthorizer.authorize(new SHARESDK()));
                        } catch (Exception e4) {
                            SSDKLog.b().a(e4);
                        }
                    }
                }).start();
                this.f8792d.b();
                this.f8792d.c();
                ShareSDK.setEnableAuthTag(true);
                b();
                this.f8927a.sendEmptyMessageDelayed(4, 3600000L);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    private void c(cn.sharesdk.framework.a.b.c cVar) {
        cVar.f8751f = DeviceAuthorizer.authorize(new SHARESDK());
        cVar.f8752g = this.f8791c.getPackageName();
        cVar.f8753h = this.f8791c.getAppVersion();
        cVar.f8754i = String.valueOf(ShareSDK.SDK_VERSION_CODE);
        cVar.f8755j = this.f8791c.getPlatformCode();
        cVar.f8756k = this.f8791c.getDetailNetworkTypeForStatic();
        if (TextUtils.isEmpty(MobSDK.getAppkey())) {
            SSDKLog.b().b("ShareSDKCore", "Your appKey of ShareSDK is null , this will cause its data won't be count!");
        } else if (!"cn.sharesdk.demo".equals(cVar.f8752g) && ("api20".equals(MobSDK.getAppkey()) || "androidv1101".equals(MobSDK.getAppkey()))) {
            SSDKLog.b().b("ShareSDKCore", "Your app is using the appkey of ShareSDK Demo, this will cause its data won't be count!");
        }
        cVar.f8757l = cn.sharesdk.framework.utils.a.c();
    }

    @Override // cn.sharesdk.framework.utils.g
    protected void b(Message message) {
        int i2 = message.what;
        if (i2 == 2) {
            try {
                this.f8792d.d();
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        } else if (i2 == 3) {
            Object obj = message.obj;
            if (obj != null) {
                d((cn.sharesdk.framework.a.b.c) obj);
                this.f8927a.removeMessages(2);
                this.f8927a.sendEmptyMessageDelayed(2, 2000L);
            }
        } else if (i2 != 4) {
        } else {
            long longValue = cn.sharesdk.framework.a.a.e.a().i().longValue();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(longValue);
            int i4 = calendar.get(1);
            int i5 = calendar.get(2);
            int i6 = calendar.get(5);
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i7 = calendar.get(1);
            int i8 = calendar.get(2);
            int i9 = calendar.get(5);
            if (i4 != i7 || i5 != i8 || i6 != i9) {
                this.f8792d.c();
            }
            this.f8927a.sendEmptyMessageDelayed(4, 3600000L);
        }
    }

    public void a(final cn.sharesdk.framework.a.b.c cVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            new Thread() { // from class: cn.sharesdk.framework.a.d.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    d.this.b(cVar);
                }
            }.start();
        } else {
            b(cVar);
        }
    }

    private void b() {
        new Thread(new Runnable() { // from class: cn.sharesdk.framework.a.d.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    cn.sharesdk.framework.authorize.d.c().d();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }).start();
    }
}
