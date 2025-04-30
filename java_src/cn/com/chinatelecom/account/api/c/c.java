package cn.com.chinatelecom.account.api.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import cn.com.chinatelecom.account.api.CtAuth;
import java.net.InetAddress;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8554a = "c";

    /* renamed from: b  reason: collision with root package name */
    private static Handler f8555b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private boolean f8556c;

    /* renamed from: d  reason: collision with root package name */
    private Context f8557d;

    /* renamed from: e  reason: collision with root package name */
    private ConnectivityManager.NetworkCallback f8558e;

    public c(Context context) {
        this.f8557d = context;
    }

    public static int a(String str) {
        try {
            byte[] address = InetAddress.getByName(str).getAddress();
            return (address[0] & 255) | ((address[3] & 255) << 24) | ((address[2] & 255) << 16) | ((address[1] & 255) << 8);
        } catch (Throwable th) {
            CtAuth.warn(f8554a, "When InetAddress.getByName(),throws exception", th);
            return -1;
        }
    }

    public static String b(String str) {
        int indexOf = str.indexOf("://");
        if (indexOf > 0) {
            str = str.substring(indexOf + 3);
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 >= 0) {
            str = str.substring(0, indexOf2);
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 >= 0) {
            str = str.substring(0, indexOf3);
        }
        int indexOf4 = str.indexOf(63);
        return indexOf4 >= 0 ? str.substring(0, indexOf4) : str;
    }

    private void b(final b bVar) {
        f8555b.postDelayed(new Runnable() { // from class: cn.com.chinatelecom.account.api.c.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.d() || bVar == null) {
                    return;
                }
                c.this.c();
                bVar.a();
            }
        }, 2500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(String str) {
        try {
            Class<?> cls = Class.forName("android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f8557d.getSystemService("connectivity");
            if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) != 0) {
                cls.getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(connectivityManager, 0, "enableHIPRI");
                for (int i2 = 0; i2 < 5 && connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) != 0; i2++) {
                    Thread.sleep(500L);
                }
            }
            int a4 = a(b(str));
            Class<?> cls2 = Integer.TYPE;
            boolean booleanValue = ((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(connectivityManager, 5, Integer.valueOf(a4))).booleanValue();
            String str2 = f8554a;
            CtAuth.info(str2, "STMN_V4 ：" + booleanValue);
            return booleanValue ? 0 : -2;
        } catch (Throwable th) {
            CtAuth.warn(f8554a, "STMN_V4_T", th);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        this.f8556c = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean d() {
        return this.f8556c;
    }

    @TargetApi(21)
    public void a() {
        try {
            if (this.f8558e != null) {
                ((ConnectivityManager) this.f8557d.getSystemService("connectivity")).unregisterNetworkCallback(this.f8558e);
                this.f8558e = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @TargetApi(21)
    public void a(final b bVar) {
        final long currentTimeMillis = System.currentTimeMillis();
        try {
            b(bVar);
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest build = builder.build();
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: cn.com.chinatelecom.account.api.c.c.2
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    if (c.this.d() || bVar == null) {
                        return;
                    }
                    c.this.c();
                    bVar.a(network, System.currentTimeMillis() - currentTimeMillis);
                }
            };
            this.f8558e = networkCallback;
            ((ConnectivityManager) this.f8557d.getSystemService("connectivity")).requestNetwork(build, networkCallback);
        } catch (Throwable unused) {
            if (d() || bVar == null) {
                return;
            }
            bVar.a(System.currentTimeMillis() - currentTimeMillis);
        }
    }

    public void a(final b bVar, final String str) {
        new d().a(new e() { // from class: cn.com.chinatelecom.account.api.c.c.3
            @Override // cn.com.chinatelecom.account.api.c.e
            public void a() {
                final long currentTimeMillis = System.currentTimeMillis();
                int c4 = c.this.c(str);
                if (c4 == 0) {
                    bVar.a(null, System.currentTimeMillis() - currentTimeMillis);
                } else if (c4 == -1) {
                    c.f8555b.post(new Runnable() { // from class: cn.com.chinatelecom.account.api.c.c.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a(System.currentTimeMillis() - currentTimeMillis);
                        }
                    });
                } else {
                    c.f8555b.post(new Runnable() { // from class: cn.com.chinatelecom.account.api.c.c.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            bVar.a();
                        }
                    });
                }
            }
        });
    }
}
