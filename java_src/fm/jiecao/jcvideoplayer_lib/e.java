package fm.jiecao.jcvideoplayer_lib;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import java.util.Formatter;
import java.util.LinkedHashMap;
import java.util.Locale;
/* compiled from: JCUtils.java */
/* loaded from: classes3.dex */
public class e {
    public static void a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            context.getSharedPreferences("JCVD_PROGRESS", 0).edit().clear().apply();
        } else {
            context.getSharedPreferences("JCVD_PROGRESS", 0).edit().putInt(str, 0).apply();
        }
    }

    public static int b(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static AppCompatActivity c(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return c(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static String d(LinkedHashMap<String, String> linkedHashMap, int i2) {
        if (linkedHashMap.size() == 1) {
            return g(linkedHashMap, i2);
        }
        return g(linkedHashMap, i2);
    }

    public static String e(LinkedHashMap<String, String> linkedHashMap, int i2) {
        int i4 = 0;
        for (String str : linkedHashMap.keySet()) {
            if (i4 == i2) {
                return str.toString();
            }
            i4++;
        }
        return null;
    }

    public static int f(Context context, String str) {
        if (JCVideoPlayer.f65542p0) {
            return context.getSharedPreferences("JCVD_PROGRESS", 0).getInt(str, 0);
        }
        return 0;
    }

    public static String g(LinkedHashMap<String, String> linkedHashMap, int i2) {
        int i4 = 0;
        for (String str : linkedHashMap.keySet()) {
            if (i4 == i2) {
                return linkedHashMap.get(str);
            }
            i4++;
        }
        return null;
    }

    public static boolean h(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static void i(Context context, String str, int i2) {
        if (JCVideoPlayer.f65542p0) {
            SharedPreferences.Editor edit = context.getSharedPreferences("JCVD_PROGRESS", 0).edit();
            edit.putInt(str, i2);
            edit.apply();
        }
    }

    public static Activity j(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return j(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static String k(int i2) {
        if (i2 <= 0 || i2 >= 86400000) {
            return "00:00";
        }
        int i4 = i2 / 1000;
        int i5 = i4 % 60;
        int i6 = (i4 / 60) % 60;
        int i7 = i4 / 3600;
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return i7 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i7), Integer.valueOf(i6), Integer.valueOf(i5)).toString() : formatter.format("%02d:%02d", Integer.valueOf(i6), Integer.valueOf(i5)).toString();
    }
}
