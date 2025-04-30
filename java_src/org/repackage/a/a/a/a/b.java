package org.repackage.a.a.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import m3.a;
/* compiled from: OpenIDHelper.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public m3.a f73877a = null;

    /* renamed from: b  reason: collision with root package name */
    public String f73878b = null;

    /* renamed from: c  reason: collision with root package name */
    public String f73879c = null;

    /* renamed from: d  reason: collision with root package name */
    public final Object f73880d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public ServiceConnection f73881e = new a();

    /* compiled from: OpenIDHelper.java */
    /* loaded from: classes5.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.this.f73877a = a.AbstractBinderC0481a.a(iBinder);
            synchronized (b.this.f73880d) {
                b.this.f73880d.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.this.f73877a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OpenIDHelper.java */
    /* renamed from: org.repackage.a.a.a.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0495b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f73883a = new b(null);
    }

    public /* synthetic */ b(a aVar) {
    }

    public synchronized String a(Context context, String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (this.f73877a == null) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                if (context.bindService(intent, this.f73881e, 1)) {
                    synchronized (this.f73880d) {
                        try {
                            this.f73880d.wait(3000L);
                        } catch (InterruptedException e4) {
                            e4.printStackTrace();
                        }
                    }
                }
                if (this.f73877a == null) {
                    return "";
                }
                try {
                    return c(context, str);
                } catch (RemoteException e5) {
                    e5.printStackTrace();
                    return "";
                }
            }
            try {
                return c(context, str);
            } catch (RemoteException e6) {
                e6.printStackTrace();
                return "";
            }
        }
        throw new IllegalStateException("Cannot run on MainThread");
    }

    public boolean b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
            return Build.VERSION.SDK_INT >= 28 ? packageInfo != null && packageInfo.getLongVersionCode() >= 1 : packageInfo != null && packageInfo.versionCode >= 1;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public final String c(Context context, String str) {
        Signature[] signatureArr;
        if (TextUtils.isEmpty(this.f73878b)) {
            this.f73878b = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f73879c)) {
            String str2 = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f73878b, 64).signatures;
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] digest = messageDigest.digest(byteArray);
                        StringBuilder sb = new StringBuilder();
                        for (byte b4 : digest) {
                            sb.append(Integer.toHexString((b4 & 255) | 256).substring(1, 3));
                        }
                        str2 = sb.toString();
                    }
                } catch (NoSuchAlgorithmException e5) {
                    e5.printStackTrace();
                }
            }
            this.f73879c = str2;
        }
        String a4 = ((a.AbstractBinderC0481a.C0482a) this.f73877a).a(this.f73878b, this.f73879c, str);
        return TextUtils.isEmpty(a4) ? "" : a4;
    }
}
