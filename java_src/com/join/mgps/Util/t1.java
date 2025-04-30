package com.join.mgps.Util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Handler;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ShortcutReceiver;
/* compiled from: ShortcutUtil.java */
/* loaded from: classes3.dex */
public class t1 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27839a = "com.android.launcher.action.INSTALL_SHORTCUT";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ShortcutUtil.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27840a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27841b;

        a(Context context, String str) {
            this.f27840a = context;
            this.f27841b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            new com.join.android.app.common.dialog.d(this.f27840a, this.f27841b).show();
        }
    }

    public static void a(Context context, String str, String str2, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(context.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            i2.a(context).b("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
            if (shortcutManager.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(context, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", str2);
                intent.addFlags(67108864);
                shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(context, str).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(str).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, ShortcutReceiver.class), 134217728).getIntentSender());
                d(context, str2);
            }
        } else {
            Intent intent2 = new Intent(f27839a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(context, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", str2);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            context.sendBroadcast(intent2);
            d(context, str2);
        }
        new Handler().postDelayed(new a(context, str2), 500L);
    }

    public static void b(Context context, String str, String str2, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
            if (shortcutManager.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(context, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", str2);
                intent.addFlags(67108864);
                shortcutManager.requestPinShortcut(new ShortcutInfo.Builder(context, str).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(str).setIntent(intent).build(), PendingIntent.getBroadcast(context, 0, new Intent(context, ShortcutReceiver.class), 134217728).getIntentSender());
                d(context, str2);
                return;
            }
            return;
        }
        Intent intent2 = new Intent(f27839a);
        intent2.putExtra("duplicate", false);
        intent2.putExtra("android.intent.extra.shortcut.NAME", str);
        intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
        Intent intent3 = new Intent("android.intent.action.MAIN");
        intent3.setClass(context, MGMainActivity_.class);
        intent3.putExtra("shortcutGameId", str2);
        intent3.addFlags(67108864);
        intent3.addCategory("android.intent.category.LAUNCHER");
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
        context.sendBroadcast(intent2);
        d(context, str2);
    }

    public static boolean c(Context context, String str) {
        if (context == null) {
            return false;
        }
        String d4 = new PrefDef_(context).addedShortcutGames().d();
        return !d2.h(d4) && d4.contains(str);
    }

    public static void d(Context context, String str) {
        PrefDef_ prefDef_ = new PrefDef_(context);
        String d4 = prefDef_.addedShortcutGames().d();
        if (d2.h(d4)) {
            prefDef_.addedShortcutGames().g(str);
        } else if (d4.contains(str)) {
        } else {
            prefDef_.addedShortcutGames().g(d4 + "," + str);
        }
    }

    public static boolean e(Context context, String str) {
        PrefDef_ prefDef_ = new PrefDef_(context);
        String d4 = prefDef_.addedShortcutGames().d();
        if (d2.h(d4) || !d4.contains(str)) {
            return false;
        }
        if (d4.contains("," + str)) {
            d4.replace("," + str, "");
        } else {
            d4.replace(str, "");
        }
        prefDef_.addedShortcutGames().g(d4);
        return false;
    }
}
