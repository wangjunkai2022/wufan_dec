package com.join.mgps.Util;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
/* compiled from: ShortcutSuperUtils.java */
/* loaded from: classes3.dex */
public class s1 {
    private s1() throws InstantiationException {
        throw new InstantiationException("This class is not for instantiation");
    }

    public static boolean a(Context context, String str) {
        String str2;
        String str3;
        int i2;
        PackageManager packageManager = context.getPackageManager();
        Context context2 = null;
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(2097152);
        intent.addFlags(1048576);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 1);
        int i4 = 0;
        while (true) {
            if (i4 >= queryIntentActivities.size()) {
                str2 = "unknown";
                str3 = null;
                i2 = 0;
                break;
            }
            ResolveInfo resolveInfo = queryIntentActivities.get(i4);
            if (resolveInfo.activityInfo.packageName.equals(str)) {
                str2 = resolveInfo.loadLabel(packageManager).toString();
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                str3 = activityInfo.name;
                i2 = activityInfo.applicationInfo.icon;
                break;
            }
            i4++;
        }
        if (str3 == null) {
            return false;
        }
        Intent intent2 = new Intent(t1.f27839a);
        intent2.putExtra("android.intent.extra.shortcut.NAME", str2);
        intent2.putExtra("duplicate", false);
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent.setComponent(new ComponentName(str, str3)));
        if (context.getPackageName().equals(str)) {
            context2 = context;
        } else {
            try {
                context2 = context.createPackageContext(str, 3);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
            }
        }
        if (context2 != null) {
            intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context2, i2));
        }
        context.sendBroadcast(intent2);
        return true;
    }

    private static byte[] b(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            return null;
        }
    }

    private static Uri c(Context context) {
        StringBuilder sb = new StringBuilder();
        String a4 = s0.a(context);
        if (a4 == null || a4.trim().equals("")) {
            a4 = s0.b(context, s0.d(context) + ".permission.READ_SETTINGS");
        }
        sb.append("content://");
        if (TextUtils.isEmpty(a4)) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 8) {
                sb.append("com.android.launcher.settings");
            } else if (i2 < 19) {
                sb.append("com.android.launcher2.settings");
            } else {
                sb.append("com.android.launcher3.settings");
            }
        } else {
            sb.append(a4);
        }
        sb.append("/favorites?notify=true");
        return Uri.parse(sb.toString());
    }

    public static boolean d(Context context, String str) {
        try {
            boolean z3 = true;
            Cursor query = context.getContentResolver().query(c(context), new String[]{"title"}, "title=? ", new String[]{str}, null);
            if (query == null || query.getCount() <= 0) {
                z3 = false;
            }
            if (query != null && !query.isClosed()) {
                query.close();
            }
            return z3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean e(Context context, String str, Intent intent) {
        try {
            boolean z3 = true;
            Cursor query = context.getContentResolver().query(c(context), new String[]{"title", "intent"}, "title=?  and intent=?", new String[]{str, intent.toUri(0)}, null);
            if (query == null || query.getCount() <= 0) {
                z3 = false;
            }
            if (query != null && !query.isClosed()) {
                query.close();
            }
            return z3;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static void f(Context context, String str, Intent intent, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri c4 = c(context);
            Cursor query = contentResolver.query(c4, new String[]{"_id", "title", "intent"}, "title=?  and intent=? ", new String[]{str, intent.toUri(0)}, null);
            if (query != null && query.getCount() > 0) {
                query.moveToFirst();
                int i2 = query.getInt(0);
                ContentValues contentValues = new ContentValues();
                contentValues.put("icon", b(bitmap));
                int update = context.getContentResolver().update(Uri.parse(c4.toString() + "/favorites/" + i2 + "?notify=true"), contentValues, null, null);
                context.getContentResolver().notifyChange(c4, null);
                StringBuilder sb = new StringBuilder();
                sb.append("update ok: affected ");
                sb.append(update);
                sb.append(" rows,index is");
                sb.append(i2);
            }
            if (query == null || query.isClosed()) {
                return;
            }
            query.close();
        } catch (Exception e4) {
            e4.printStackTrace();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("update shortcut icon,get errors:");
            sb2.append(e4.getMessage());
        }
    }
}
