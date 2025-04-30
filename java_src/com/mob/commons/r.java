package com.mob.commons;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.join.mgps.Util.g0;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.UIHandler;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class r {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mob.commons.r$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53098a;

        static {
            int[] iArr = new int[InternationalDomain.values().length];
            f53098a = iArr;
            try {
                iArr[InternationalDomain.JP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53098a[InternationalDomain.US.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Context a() {
        try {
            return b();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public static Context b() {
        try {
            Object c4 = c();
            if (c4 != null) {
                return (Context) ReflectHelper.invokeInstanceMethod(c4, o.a("014%ff=id7ej?ee,eddedgdf)dGdeecdk"), new Object[0]);
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public static Object c() {
        Object a4;
        final ReflectHelper.a<Void, Object> aVar = new ReflectHelper.a<Void, Object>() { // from class: com.mob.commons.r.1
            @Override // com.mob.tools.utils.ReflectHelper.a
            public Object a(Void r3) {
                try {
                    return ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(o.a("0264dfdk4h.dhecdeOhDeldf5ee$elejdg5d@deRj2de^dAdieiNcJdh_i*df%h")), o.a("021NdgdcdhdhOi dk5d%ejdg2d)de,j8de=dFdiei)c7dhGi>df>h"), new Object[0]);
                } catch (Throwable th) {
                    MobLog.getInstance().w(th);
                    return null;
                }
            }
        };
        if ((Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId() || Build.VERSION.SDK_INT >= 18) && (a4 = aVar.a(null)) != null) {
            return a4;
        }
        final Object obj = new Object();
        final Object[] objArr = new Object[1];
        synchronized (obj) {
            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: com.mob.commons.r.2
                /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
                    jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:10:0x001a
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
                    */
                @Override // android.os.Handler.Callback
                public boolean handleMessage(android.os.Message r5) {
                    /*
                        r4 = this;
                        java.lang.Object r5 = r1
                        monitor-enter(r5)
                        r0 = 0
                        java.lang.Object[] r1 = r2     // Catch: java.lang.Throwable -> L20
                        com.mob.tools.utils.ReflectHelper$a r2 = r3     // Catch: java.lang.Throwable -> L20
                        r3 = 0
                        java.lang.Object r2 = r2.a(r3)     // Catch: java.lang.Throwable -> L20
                        r1[r0] = r2     // Catch: java.lang.Throwable -> L20
                        java.lang.Object r1 = r1     // Catch: java.lang.Throwable -> L15
                        r1.notify()     // Catch: java.lang.Throwable -> L15
                        goto L34
                    L15:
                        r1 = move-exception
                        com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L1e
                    L1a:
                        r2.w(r1)     // Catch: java.lang.Throwable -> L1e
                        goto L34
                    L1e:
                        r0 = move-exception
                        goto L46
                    L20:
                        r1 = move-exception
                        com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L36
                        r2.w(r1)     // Catch: java.lang.Throwable -> L36
                        java.lang.Object r1 = r1     // Catch: java.lang.Throwable -> L2e
                        r1.notify()     // Catch: java.lang.Throwable -> L2e
                        goto L34
                    L2e:
                        r1 = move-exception
                        com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L1e
                        goto L1a
                    L34:
                        monitor-exit(r5)     // Catch: java.lang.Throwable -> L1e
                        return r0
                    L36:
                        r0 = move-exception
                        java.lang.Object r1 = r1     // Catch: java.lang.Throwable -> L3d
                        r1.notify()     // Catch: java.lang.Throwable -> L3d
                        goto L45
                    L3d:
                        r1 = move-exception
                        com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L1e
                        r2.w(r1)     // Catch: java.lang.Throwable -> L1e
                    L45:
                        throw r0     // Catch: java.lang.Throwable -> L1e
                    L46:
                        monitor-exit(r5)     // Catch: java.lang.Throwable -> L1e
                        goto L49
                    L48:
                        throw r0
                    L49:
                        goto L48
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mob.commons.r.AnonymousClass2.handleMessage(android.os.Message):boolean");
                }
            });
            obj.wait();
        }
        return objArr[0];
    }

    public static ArrayList<HashMap<String, Object>> d() {
        ArrayList<String> g4;
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            ArrayList<HashMap<String, Object>> availableWifiListOneKey = deviceHelper.getAvailableWifiListOneKey();
            if (availableWifiListOneKey != null && !availableWifiListOneKey.isEmpty() && (g4 = b.g()) != null && !g4.isEmpty()) {
                String bssid = deviceHelper.getBssid();
                ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
                Iterator<HashMap<String, Object>> it2 = availableWifiListOneKey.iterator();
                while (it2.hasNext()) {
                    HashMap<String, Object> next = it2.next();
                    Object obj = next.get(o.a("005Vfjehehegfi"));
                    if (obj != null && String.valueOf(obj).equals(bssid)) {
                        next.put(o.a("010Ldddddddgdcdhggecdkdk"), Boolean.TRUE);
                        bssid = null;
                    }
                    HashMap<String, Object> hashMap = new HashMap<>();
                    Iterator<String> it3 = g4.iterator();
                    while (it3.hasNext()) {
                        String next2 = it3.next();
                        Object obj2 = next.get(next2);
                        if (obj2 != null) {
                            hashMap.put(next2, obj2);
                        }
                    }
                    arrayList.add(hashMap);
                }
                return arrayList;
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return null;
    }

    public static void a(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
        }
    }

    public static String b(String str) {
        Uri parse;
        String scheme;
        String str2;
        try {
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        boolean checkForceHttps = MobSDK.checkForceHttps();
        if (checkForceHttps || (Build.VERSION.SDK_INT >= 23 && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted())) {
            str = str.trim();
            if (str.startsWith(o.a("007cddefgg")) && (parse = Uri.parse(str.trim())) != null && (scheme = parse.getScheme()) != null && scheme.equals(o.a("004cdde"))) {
                String host = parse.getHost();
                String path = parse.getPath();
                String query = parse.getQuery();
                String str3 = "";
                if (host != null) {
                    int port = parse.getPort();
                    StringBuilder sb = new StringBuilder();
                    sb.append(host);
                    if (port > 0 && port != 80) {
                        str2 = ":" + port;
                        sb.append(str2);
                        host = sb.toString();
                        if (!checkForceHttps && Build.VERSION.SDK_INT >= 24 && ((Boolean) ReflectHelper.invokeInstanceMethod(NetworkSecurityPolicy.getInstance(), o.a("027ZdefgggedRi.dfdhOdi,dl8dBeidhdffhfhdedggh3iSdh?lEde0ddih"), host)).booleanValue()) {
                            return str;
                        }
                    }
                    str2 = "";
                    sb.append(str2);
                    host = sb.toString();
                    if (!checkForceHttps) {
                        return str;
                    }
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("https://");
                sb2.append(host);
                if (path == null) {
                    path = "";
                }
                sb2.append(path);
                if (query != null) {
                    str3 = "?" + query;
                }
                sb2.append(str3);
                return sb2.toString();
            }
        }
        return str;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = "";
        if (str.startsWith(o.a("007cddefgg"))) {
            str = str.replace(o.a("007cddefgg"), "");
        }
        if (str.startsWith("https://")) {
            str = str.replace("https://", "");
        }
        if (MobSDK.checkV6()) {
            str2 = o.a("002j;ie");
        } else {
            int i2 = AnonymousClass3.f53098a[MobSDK.getDomain().ordinal()];
            if (i2 == 1) {
                str2 = "jp";
            } else if (i2 == 2) {
                str2 = o.a("002_dcfg");
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return b(o.a("007cddefgg") + str);
        }
        if (str.startsWith(str2 + g0.f27568a)) {
            return b(o.a("007cddefgg") + str);
        }
        return b(o.a("007cddefgg") + str2 + "-" + str);
    }

    public static String a(String str, int i2) {
        int parseInt;
        int i4 = 0;
        int i5 = 3;
        if (str.startsWith("00")) {
            parseInt = Integer.parseInt(str.substring(2, 3));
        } else if (str.startsWith("0")) {
            parseInt = Integer.parseInt(str.substring(1, 3));
        } else {
            parseInt = Integer.parseInt(str.substring(0, 3));
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[parseInt];
        boolean z3 = true;
        while (i5 < charArray.length) {
            if (charArray[i5] < 'a') {
                z3 = !z3;
            } else {
                if (z3) {
                    iArr[i4] = charArray[i5] - i2;
                } else {
                    iArr[i4] = (charArray[i5] - i2) * 10;
                    i5++;
                    iArr[i4] = iArr[i4] + (charArray[i5] - i2);
                }
                int i6 = iArr[i4];
                i4++;
            }
            i5++;
        }
        return d.a(iArr);
    }
}
