package cn.com.chinatelecom.account.api.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import com.androidquery.callback.AjaxStatus;
import com.join.mgps.Util.u;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static String f8660a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f8661b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f8662c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f8663d = "0";

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f8664e = {"46000", "46002", "46004", "46007", "46008"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f8665f = {"46003", "46005", "46011"};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f8666g = {"46001", "46006", "46009"};

    private static int a(int i2) {
        int i4 = AjaxStatus.NETWORK_ERROR;
        if (i2 != -101) {
            i4 = -1;
            if (i2 != -1) {
                switch (i2) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 2;
                    case 13:
                    case 18:
                    case 19:
                        return 3;
                    case 20:
                        return 4;
                    default:
                        return i2;
                }
            }
        }
        return i4;
    }

    public static NetworkInfo a(Context context) {
        if (context == null) {
            return null;
        }
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static String a() {
        return f8660a;
    }

    public static String a(Context context, boolean z3) {
        String h4 = h(context);
        if (h4 != null) {
            for (String str : f8665f) {
                if (h4.equals(str)) {
                    return z3 ? "1" : "CT";
                }
            }
            for (String str2 : f8664e) {
                if (h4.equals(str2)) {
                    return z3 ? PayCenterOrderRequest.PAY_TYPE_RECHARGE : "CM";
                }
            }
            for (String str3 : f8666g) {
                if (h4.equals(str3)) {
                    return z3 ? "3" : "CU";
                }
            }
        }
        return z3 ? "0" : "UN";
    }

    public static String b() {
        return f8661b != null ? "https://open.e.189.cn/openapi/special/getTimeStamp.do".replace(cn.com.chinatelecom.account.api.a.d.a(b.f8626g), f8661b) : "https://open.e.189.cn/openapi/special/getTimeStamp.do";
    }

    public static boolean b(Context context) {
        NetworkInfo a4 = a(context);
        return a4 != null && a4.isAvailable();
    }

    public static String c() {
        String str = f8662c;
        return str != null ? "https://api-e189.21cn.com/gw/client/accountMsg.do".replace("e189.21cn.com", str) : "https://api-e189.21cn.com/gw/client/accountMsg.do";
    }

    public static boolean c(Context context) {
        NetworkInfo a4 = a(context);
        return a4 != null && a4.getType() == 0;
    }

    public static boolean d(Context context) {
        if (context == null) {
            return true;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Throwable th) {
            CtAuth.warn("NetUtil", "isMobileEnable error ", th);
            return true;
        }
    }

    public static String e(Context context) {
        int j4 = j(context);
        return j4 != -101 ? (j4 == -1 || j4 == 0) ? "null" : j4 != 1 ? j4 != 2 ? j4 != 3 ? j4 != 4 ? Integer.toString(j4) : "5G" : "4G" : "3G" : "2G" : "WIFI";
    }

    public static String f(Context context) {
        String e4 = e(context);
        return (e4 != null && e4.equals("WIFI") && d(context)) ? "BOTH" : e4;
    }

    public static String g(Context context) {
        String f4 = f(context);
        if (!TextUtils.isEmpty(f4) && !f4.equals("null")) {
            if (f4.equals("2G")) {
                return u.f27861t;
            }
            if (f4.equals("3G")) {
                return "11";
            }
            if (f4.equals("4G")) {
                return "12";
            }
            if (f4.equals("5G")) {
                return "16";
            }
            if (f4.equals("WIFI")) {
                return "13";
            }
            if (f4.equals("BOTH")) {
                return "14";
            }
        }
        return "15";
    }

    public static String h(Context context) {
        try {
            String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            return !TextUtils.isEmpty(simOperator) ? simOperator : "00000";
        } catch (Throwable th) {
            th.printStackTrace();
            return "00000";
        }
    }

    public static String i(Context context) {
        return a(context, true);
    }

    private static int j(Context context) {
        int i2 = 0;
        try {
            NetworkInfo a4 = a(context);
            if (a4 != null && a4.isAvailable() && a4.isConnected()) {
                int type = a4.getType();
                if (type == 1) {
                    i2 = AjaxStatus.NETWORK_ERROR;
                } else if (type == 0) {
                    try {
                        i2 = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    if (i2 == 0) {
                        i2 = a4.getSubtype();
                    }
                }
            } else {
                i2 = -1;
            }
        } catch (NullPointerException e5) {
            e5.printStackTrace();
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return a(i2);
    }
}
