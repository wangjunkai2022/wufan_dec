package com.mob.commons;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.MediaDrm;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.mob.MobSDK;
import com.mob.commons.a;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes4.dex */
public class t {

    /* renamed from: e  reason: collision with root package name */
    private static volatile t f53107e;

    /* renamed from: a  reason: collision with root package name */
    private volatile String f53108a = null;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f53109b = null;

    /* renamed from: c  reason: collision with root package name */
    private volatile String f53110c = null;

    /* renamed from: d  reason: collision with root package name */
    private volatile String f53111d = null;

    private t() {
    }

    public static t a() {
        if (f53107e == null) {
            synchronized (t.class) {
                if (f53107e == null) {
                    f53107e = new t();
                }
            }
        }
        return f53107e;
    }

    private String b(String str) {
        StringBuilder sb = new StringBuilder(str);
        String manufacturer = DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer();
        String model = DeviceHelper.getInstance(MobSDK.getContext()).getModel();
        if (!TextUtils.isEmpty(manufacturer)) {
            sb.append(manufacturer.trim().toUpperCase());
        }
        if (!TextUtils.isEmpty(model)) {
            sb.append(model.trim().toUpperCase());
        }
        NLog mobLog = MobLog.getInstance();
        mobLog.d("rddd gdmd " + ((Object) sb), new Object[0]);
        return Data.MD5(sb.toString());
    }

    private String h() {
        String str;
        if (!TextUtils.isEmpty(g())) {
            str = "12" + b(g());
        } else if (!TextUtils.isEmpty(f())) {
            str = "22" + b(f());
        } else if (!TextUtils.isEmpty(i())) {
            str = "32" + b(this.f53111d);
        } else {
            str = "42" + b(UUID.randomUUID().toString());
        }
        MobLog.getInstance().d("rddd gen rd: " + str, new Object[0]);
        return str;
    }

    private String i() {
        String od = DeviceHelper.getInstance(MobSDK.getContext()).getOD();
        List<String> asList = Arrays.asList("00000000-0000-0000-0000-000000000000", "00000000000000000000000000000000");
        a.c e4 = w.a().e();
        if (e4 != null && e4.g() != null) {
            asList = e4.g();
        }
        if (!TextUtils.isEmpty(od) && !asList.contains(od)) {
            this.f53111d = od;
        }
        return this.f53111d;
    }

    private String j() throws Throwable {
        int i2 = Build.VERSION.SDK_INT;
        MediaDrm mediaDrm = null;
        if (i2 < 18) {
            return null;
        }
        String a4 = j.a("061<cbbjhaPh?gcdcgcBgEdfgfff6gSbecjXh6cbgcdebe*g[df:f7hgcjbcddbcdagfgchagfehcjUbNddbjbebjfcdabedacjcadeddfc[f1eiejeibegcejejgfgfbeejdc");
        UUID uuid = new UUID(-1301668207276963122L, -6645017420763422227L);
        try {
            MediaDrm mediaDrm2 = new MediaDrm(uuid);
            try {
                com.mob.tools.a.h.a(MobSDK.getContext(), DeviceHelper.getInstance(MobSDK.getContext()).getAInfo().targetSdkVersion).a(mediaDrm2.getClass(), mediaDrm2, "native_setup", new Class[]{Object.class, byte[].class, String.class}, new Object[]{new WeakReference(mediaDrm2), a(uuid), a4});
                byte[] propertyByteArray = mediaDrm2.getPropertyByteArray("deviceUniqueId");
                String byteToHex = Data.byteToHex(propertyByteArray, 0, propertyByteArray.length);
                try {
                    if (i2 >= 28) {
                        mediaDrm2.close();
                    } else {
                        mediaDrm2.release();
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
                return byteToHex;
            } catch (Throwable th2) {
                th = th2;
                mediaDrm = mediaDrm2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    try {
                        if (Build.VERSION.SDK_INT >= 28) {
                            if (mediaDrm != null) {
                                mediaDrm.close();
                            }
                        } else if (mediaDrm != null) {
                            mediaDrm.release();
                        }
                    } catch (Throwable th4) {
                        MobLog.getInstance().d(th4);
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private String k() {
        String str = null;
        if (!b.a(j.a("003)bdcbcb"))) {
            return null;
        }
        try {
            String b4 = w.a().b("key_pddt", (String) null);
            try {
                if (!TextUtils.isEmpty(b4)) {
                    long b5 = w.a().b("key_lgpdt", 0L);
                    long j4 = 604800000;
                    try {
                        j4 = Long.parseLong(String.valueOf(b.a(j.a("006^debgdeddbd c"), 604800))) * 1000;
                    } catch (Throwable unused) {
                    }
                    if (System.currentTimeMillis() - b5 < j4) {
                        MobLog.getInstance().d("rddd che p useable", new Object[0]);
                        return b4;
                    }
                }
                if ((!j.a("004hJbcPh$ca").equalsIgnoreCase(DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer()) || Build.VERSION.SDK_INT > 25) && (!j.a("006a-babddbXg1bc").equalsIgnoreCase(DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer()) || Build.VERSION.SDK_INT > 22)) {
                    List<String> l4 = l();
                    if (!l4.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        PackageManager packageManager = MobSDK.getContext().getPackageManager();
                        int i2 = 0;
                        for (int i4 = 0; i4 < l4.size(); i4++) {
                            try {
                                String str2 = l4.get(i4);
                                PackageInfo packageInfo = packageManager.getPackageInfo(str2, 0);
                                if (packageInfo != null && a(packageInfo)) {
                                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str2, 1);
                                    sb.append(str2);
                                    sb.append(applicationInfo.uid);
                                    i2++;
                                }
                            } catch (PackageManager.NameNotFoundException e4) {
                                MobLog.getInstance().d(e4);
                            }
                        }
                        if (i2 > 0) {
                            String str3 = Build.BRAND;
                            Locale locale = Locale.ROOT;
                            sb.append(str3.toUpperCase(locale));
                            sb.append(Build.MODEL.toUpperCase(locale));
                            sb.append(Build.MANUFACTURER.toUpperCase(locale));
                            sb.append(i2);
                            b4 = Data.MD5(sb.toString());
                            w.a().a("key_pddt", b4);
                            w.a().a("key_lgpdt", System.currentTimeMillis());
                        }
                    }
                    return b4;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                str = b4;
                MobLog.getInstance().d(th);
                return str;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private List<String> l() {
        ArrayList arrayList = new ArrayList();
        for (String str : com.mob.tools.a.b.a(MobSDK.getContext()).F()) {
            if (!str.contains("com.google.android") && !str.contains("com.miui.packageinstaller")) {
                arrayList.add(str);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public String b() {
        return PayCenterOrderRequest.PAY_TYPE_RECHARGE;
    }

    public String c() {
        if (TextUtils.isEmpty(this.f53109b)) {
            String b4 = w.a().b("key_rdt2", (String) null);
            if (!TextUtils.isEmpty(b4)) {
                this.f53109b = b4;
            }
        }
        return this.f53109b;
    }

    public boolean d() {
        if (TextUtils.isEmpty(this.f53109b)) {
            synchronized (this) {
                if (TextUtils.isEmpty(this.f53109b)) {
                    return TextUtils.isEmpty(w.a().b("key_rdt2", (String) null));
                }
                return false;
            }
        }
        return false;
    }

    public synchronized String e() {
        String c4;
        c4 = c();
        if (TextUtils.isEmpty(c4)) {
            c4 = h();
            this.f53109b = c4;
            if (!TextUtils.isEmpty(c4)) {
                w.a().a("key_rdt2", c4);
            }
        }
        return c4;
    }

    public synchronized String f() {
        if (TextUtils.isEmpty(this.f53110c)) {
            this.f53110c = k();
        }
        return this.f53110c;
    }

    public synchronized String g() {
        if (TextUtils.isEmpty(this.f53108a)) {
            this.f53108a = j();
        }
        return this.f53108a;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, this.f53109b)) {
            return;
        }
        NLog mobLog = MobLog.getInstance();
        mobLog.d("rddd saveRD pre is " + this.f53109b + " cur is " + str, new Object[0]);
        w.a().a("key_rdt2", str);
    }

    private byte[] a(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 8; i2++) {
            int i4 = (7 - i2) * 8;
            bArr[i2] = (byte) (mostSignificantBits >>> i4);
            bArr[i2 + 8] = (byte) (leastSignificantBits >>> i4);
        }
        return bArr;
    }

    private boolean a(PackageInfo packageInfo) {
        int i2 = packageInfo.applicationInfo.flags;
        return ((i2 & 1) == 1) || ((i2 & 128) == 1);
    }
}
