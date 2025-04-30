package com.join.mgps.Util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.pref.PrefDef_;
import java.util.Iterator;
/* compiled from: JPushMangerUtil.java */
/* loaded from: classes3.dex */
public class p0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JPushMangerUtil.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27731a;

        a(Context context) {
            this.f27731a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AccountUtil_.getInstance_(this.f27731a).isTourist()) {
                p0.e(this.f27731a);
            } else {
                p0.d(this.f27731a);
            }
        }
    }

    public static void a(Context context) {
        if (new PrefDef_(context).firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        new Handler().postDelayed(new a(context), 500L);
    }

    public static void b(Context context) {
        c(context);
    }

    public static boolean c(Context context) {
        Iterator<ActivityManager.RunningAppProcessInfo> it2 = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it2.next();
            if (next.processName.equals(context.getPackageName())) {
                context.getPackageName();
                StringBuilder sb = new StringBuilder();
                sb.append("此appimportace =");
                sb.append(next.importance);
                sb.append(",context.getClass().getName()=");
                sb.append(context.getClass().getName());
                if (next.importance != 100) {
                    context.getPackageName();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("处于后台");
                    sb2.append(next.processName);
                    return true;
                }
                context.getPackageName();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("处于前台");
                sb3.append(next.processName);
            }
        }
        return false;
    }

    public static void d(Context context) {
        new PrefDef_(context).firstShowUserPermiss().d().booleanValue();
    }

    public static void e(Context context) {
        new PrefDef_(context).firstShowUserPermiss().d().booleanValue();
    }
}
