package com.papa.gsyvideoplayer.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.WindowManager;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.fragment.app.FragmentActivity;
import java.io.File;
import java.util.Formatter;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: CommonUtil.java */
/* loaded from: classes4.dex */
public class b {
    public static void a(String str) {
        String[] list;
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            for (String str2 : file.list()) {
                a(str + File.separator + str2);
            }
            file.delete();
        }
    }

    public static int b(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(Activity activity) {
        TypedValue typedValue = new TypedValue();
        if (activity.getTheme().resolveAttribute(16843499, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static Activity d(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return o(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return o(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static AppCompatActivity e(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (context instanceof ContextThemeWrapper) {
            return e(((ContextThemeWrapper) context).getBaseContext());
        }
        return null;
    }

    public static boolean f(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getRotation() == 1 || activity.getWindowManager().getDefaultDisplay().getRotation() == 3;
    }

    public static int g(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int h(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int i(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", q.a.f73954a);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String j(long j4) {
        if (j4 >= 0 && j4 < 1024) {
            return j4 + " KB/s";
        } else if (j4 >= 1024 && j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return Long.toString(j4 / 1024) + " KB/s";
        } else if (j4 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED || j4 >= IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            return "";
        } else {
            return Long.toString(j4 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) + " MB/s";
        }
    }

    public static void k(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(3074);
        } else if (i2 >= 19) {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(2562);
        } else {
            ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(514);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public static void l(Context context, boolean z3, boolean z4) {
        AppCompatActivity e4;
        ActionBar supportActionBar;
        if (z3 && (e4 = e(context)) != null && (supportActionBar = e4.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.hide();
        }
        if (z4) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().setFlags(1024, 1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().setFlags(1024, 1024);
            } else {
                e(context).getWindow().setFlags(1024, 1024);
            }
        }
    }

    public static boolean m(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }

    public static int n(Context context, float f4) {
        return (int) ((f4 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Activity o(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof TintContextWrapper) {
            return o(((TintContextWrapper) context).getBaseContext());
        }
        if (context instanceof ContextWrapper) {
            return o(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void p(Context context, int i2) {
        ((Activity) context).getWindow().getDecorView().setSystemUiVisibility(i2);
    }

    @SuppressLint({"RestrictedApi"})
    public static void q(Context context, boolean z3, boolean z4) {
        AppCompatActivity e4;
        ActionBar supportActionBar;
        if (z3 && (e4 = e(context)) != null && (supportActionBar = e4.getSupportActionBar()) != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
            supportActionBar.show();
        }
        if (z4) {
            if (context instanceof FragmentActivity) {
                ((FragmentActivity) context).getWindow().clearFlags(1024);
            } else if (context instanceof Activity) {
                ((Activity) context).getWindow().clearFlags(1024);
            } else {
                e(context).getWindow().clearFlags(1024);
            }
        }
    }

    public static String r(int i2) {
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
