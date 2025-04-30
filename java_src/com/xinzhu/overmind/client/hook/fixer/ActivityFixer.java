package com.xinzhu.overmind.client.hook.fixer;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.xinzhu.haunted.android.app.a;
import com.xinzhu.haunted.com.android.internal.a;
import com.xinzhu.overmind.utils.e;
import java.util.Locale;
/* loaded from: classes.dex */
public class ActivityFixer {
    public static void fix(Activity activity) {
        new a(activity).h();
        Context baseContext = activity.getBaseContext();
        try {
            TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(a.e.R());
            if (obtainStyledAttributes != null) {
                if (obtainStyledAttributes.getBoolean(a.e.Y(), false)) {
                    try {
                        activity.getWindow().setBackgroundDrawable(WallpaperManager.getInstance(activity).getDrawable());
                    } catch (SecurityException e4) {
                        e4.printStackTrace();
                    }
                }
                if (obtainStyledAttributes.getBoolean(a.e.V(), false)) {
                    activity.getWindow().addFlags(1024);
                }
                obtainStyledAttributes.recycle();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (e.a()) {
            Intent intent = activity.getIntent();
            ApplicationInfo applicationInfo = baseContext.getApplicationInfo();
            PackageManager packageManager = activity.getPackageManager();
            if (intent == null || !activity.isTaskRoot()) {
                return;
            }
            try {
                String format = String.format(Locale.CHINA, "[B%d]%s", Integer.valueOf(com.xinzhu.overmind.client.e.getUserId()), applicationInfo.loadLabel(packageManager));
                Drawable loadIcon = applicationInfo.loadIcon(packageManager);
                activity.setTaskDescription(new ActivityManager.TaskDescription(format, loadIcon instanceof BitmapDrawable ? ((BitmapDrawable) loadIcon).getBitmap() : null));
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }
}
