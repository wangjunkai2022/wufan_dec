package com.mob.commons.b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.mob.MobSDK;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static g f52847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mob.commons.b.e$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f52848a;

        static {
            int[] iArr = new int[a.values().length];
            f52848a = iArr;
            try {
                iArr[a.XIAOMI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52848a[a.BLACKSHARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52848a[a.VIVO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f52848a[a.HUA_WEI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f52848a[a.OPPO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f52848a[a.ONEPLUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f52848a[a.MOTO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f52848a[a.LENOVO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f52848a[a.ASUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f52848a[a.SAMSUNG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f52848a[a.MEIZU.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f52848a[a.ALPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f52848a[a.NUBIA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f52848a[a.ZTE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f52848a[a.FERRMEOS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f52848a[a.SSUI.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum a {
        UNSUPPORT(-1, com.mob.commons.n.a("009<cbcjefcbWddVdbcgRc")),
        HUA_WEI(0, com.mob.commons.n.a("006Ugcdddigbfcdf")),
        XIAOMI(1, com.mob.commons.n.a("006QgfcdcedbDkRcd")),
        VIVO(2, com.mob.commons.n.a("004i*cdWiDdb")),
        OPPO(3, com.mob.commons.n.a("004Bdb>dd4db")),
        MOTO(4, com.mob.commons.n.a("008kJdbLc)dbcgdbdcce")),
        LENOVO(5, com.mob.commons.n.a("006+dc<h4cjdb?iDdb")),
        ASUS(6, com.mob.commons.n.a("004Yceefcbef")),
        SAMSUNG(7, com.mob.commons.n.a("007_efce$kJefcbcjee")),
        MEIZU(8, com.mob.commons.n.a("005kh6cdfbcb")),
        ALPS(9, com.mob.commons.n.a("004_cedcFd)ef")),
        NUBIA(10, com.mob.commons.n.a("005:cjcbebcdce")),
        ONEPLUS(11, com.mob.commons.n.a("007<dbcjOhd-dccbef")),
        BLACKSHARK(12, com.mob.commons.n.a("010Uebdccecfcief,bTcecgci")),
        ZTE(13, com.mob.commons.n.a("003<fbCch")),
        FERRMEOS(14, com.mob.commons.n.a("008OegcgYhhkh dbef")),
        SSUI(15, com.mob.commons.n.a("004@efefcbcd"));
        

        /* renamed from: r  reason: collision with root package name */
        private int f52867r;

        /* renamed from: s  reason: collision with root package name */
        private String f52868s;

        a(int i2, String str) {
            this.f52867r = i2;
            this.f52868s = str;
        }
    }

    public static synchronized void a(Context context) {
        synchronized (e.class) {
            if (f52847a != null) {
                return;
            }
            String str = Build.MANUFACTURER;
            a a4 = a(str);
            if (a4 == a.UNSUPPORT) {
                c a5 = c.a();
                a5.a(str + " not support");
                return;
            }
            switch (AnonymousClass1.f52848a[a4.ordinal()]) {
                case 1:
                case 2:
                    f52847a = new n(context);
                    break;
                case 3:
                    f52847a = new m(context);
                    break;
                case 4:
                    f52847a = new f(context);
                    break;
                case 5:
                case 6:
                    f52847a = new k(context);
                    break;
                case 7:
                case 8:
                    f52847a = new i(context);
                    break;
                case 9:
                    f52847a = new com.mob.commons.b.a(context);
                    break;
                case 10:
                    f52847a = new l(context);
                    break;
                case 11:
                case 12:
                    f52847a = new h(context);
                    break;
                case 13:
                    f52847a = new j(context);
                    break;
                case 14:
                case 15:
                case 16:
                    f52847a = new o(context);
                    break;
            }
        }
    }

    public static boolean b(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            return gVar.h();
        }
        return false;
    }

    public static String c(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            return gVar.e();
        }
        return null;
    }

    public static String d(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            String e4 = gVar.e();
            if (TextUtils.isEmpty(e4)) {
                return null;
            }
            try {
                return Base64.encodeToString(Data.AES128Encode(Data.MD5(DeviceHelper.getInstance(MobSDK.getContext()).getManufacturer()), e4), 2);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
                return e4;
            }
        }
        return null;
    }

    public static String e(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            return gVar.b();
        }
        return null;
    }

    public static String f(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            return gVar.f();
        }
        return null;
    }

    public static String g(Context context) {
        a(context);
        g gVar = f52847a;
        if (gVar != null) {
            return gVar.g();
        }
        return null;
    }

    private static boolean b() {
        try {
            String b4 = b(com.mob.commons.n.a("0158cgdbdkefefcbcddk(d*cgdbQgScbcf,c"));
            if (TextUtils.isEmpty(b4)) {
                return false;
            }
            return !b4.equalsIgnoreCase(com.mob.commons.n.a("007^cbcjcicjdbeccj"));
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String b(String str) {
        try {
            Method declaredMethod = Class.forName(com.mob.commons.n.a("0274cecj+g8cgdbcdWg;dkdbefdkdgchefFchkRfgcgdbOdh$cgNc cdSh ef")).getDeclaredMethod(com.mob.commons.n.a("003 ee(hc"), String.class);
            declaredMethod.setAccessible(true);
            return String.valueOf(declaredMethod.invoke(null, str));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static a a(String str) {
        a[] values;
        if (!TextUtils.isEmpty(str)) {
            for (a aVar : a.values()) {
                if (aVar.f52868s.equalsIgnoreCase(str)) {
                    return aVar;
                }
            }
        }
        if (!a() && !b()) {
            return a.UNSUPPORT;
        }
        return a.ZTE;
    }

    private static boolean a() {
        try {
            String b4 = b(com.mob.commons.n.a("0211cgdbdkebcbcddcHg%dkegcgRhhkhOdkdcceebNhOdc"));
            if (TextUtils.isEmpty(b4)) {
                return false;
            }
            return b4.equalsIgnoreCase(com.mob.commons.n.a("0081ejfdfcfcfhfcekdg"));
        } catch (Throwable unused) {
            return false;
        }
    }
}
