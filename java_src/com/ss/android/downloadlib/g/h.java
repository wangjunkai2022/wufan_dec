package com.ss.android.downloadlib.g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.config.q;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.activity.JumpKllkActivity;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.umeng.analytics.pro.ai;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InnerOpenAppUtils.java */
/* loaded from: classes4.dex */
public class h {
    private static void b(final Context context, final com.ss.android.downloadlib.addownload.b.e eVar, final String str) {
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.g.h.1
            @Override // java.lang.Runnable
            public void run() {
                final JSONObject i2 = com.ss.android.downloadlib.addownload.j.i();
                final String optString = i2.optString(ai.az);
                final JSONObject jSONObject = new JSONObject();
                String a4 = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("x"), optString);
                JSONObject jSONObject2 = new JSONObject();
                l.a(jSONObject2, ai.av, str);
                l.a(jSONObject2, ai.aA, Build.VERSION.INCREMENTAL);
                l.a(jSONObject2, "m", Build.MODEL);
                l.a(jSONObject2, "im", com.ss.android.downloadlib.a.a.b.a(context));
                l.a(jSONObject2, com.xinzhu.overmind.utils.helpers.d.f64708a, com.ss.android.downloadlib.a.a.b.b(context));
                l.a(jSONObject2, ai.aF, "m");
                byte[] bytes = jSONObject2.toString().getBytes();
                com.ss.android.downloadlib.addownload.j.d().a(a4, com.ss.android.downloadlib.addownload.j.q().a(bytes, bytes.length), "application/octet-stream;tt-data=a", 0, new q() { // from class: com.ss.android.downloadlib.g.h.1.1
                    @Override // com.ss.android.download.api.config.q
                    public void a(String str2) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        h.b(context, str, str2, eVar, jSONObject, i2, optString);
                    }

                    @Override // com.ss.android.download.api.config.q
                    public void a(Throwable th) {
                        Context context2 = context;
                        com.ss.android.downloadlib.b.a.a(h.a(context2, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
                        l.a(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                        h.b(eVar, jSONObject, 4, 1);
                    }
                });
            }
        });
    }

    private static com.ss.android.downloadlib.addownload.b.g c(Context context, com.ss.android.downloadlib.addownload.b.e eVar, String str) {
        Intent intent = new Intent(context, JumpKllkActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(ai.av, str);
        intent.putExtra("id", eVar.f57139a);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.b.g(7, "am_kllk2");
        } catch (Throwable unused) {
            b(eVar, jSONObject, 1, 3);
            return a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
    }

    private static com.ss.android.downloadlib.addownload.b.g d(@NonNull Context context, @NonNull String str) {
        try {
            Uri parse = Uri.parse("https://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
            Intent intent = new Intent();
            intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
            intent.setData(parse);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.b.g(5);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.b.g(6, 14);
        }
    }

    private static boolean e(Context context, String str) {
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.j.getContext();
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
            if (com.ss.android.socialbase.downloader.g.a.c().a("fix_app_link_flag")) {
                intent.addFlags(32768);
            }
        }
        intent.setData(Uri.parse(str));
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        String i2 = com.ss.android.socialbase.appdownloader.f.d.i();
        if (l.d(com.ss.android.downloadlib.addownload.j.getContext(), i2)) {
            intent.setPackage(i2);
        }
        if (l.a(com.ss.android.downloadlib.addownload.j.getContext(), intent)) {
            try {
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, String str2, @NonNull com.ss.android.downloadlib.addownload.b.e eVar, @NonNull JSONObject jSONObject, @NonNull JSONObject jSONObject2, String str3) {
        l.a(jSONObject, "ttdownloader_type", (Object) 1);
        try {
            String a4 = a(com.ss.android.socialbase.appdownloader.f.c.a(new JSONObject(str2).optString("a")), jSONObject2, str3);
            l.a(jSONObject, "open_url", a4);
            if (e(context, a4)) {
                b(eVar, jSONObject, -1, 1);
                com.ss.android.downloadlib.b.a.a("am_m1", jSONObject, eVar, true);
            } else {
                com.ss.android.downloadlib.b.a.a(a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
                b(eVar, jSONObject, 2, 1);
            }
        } catch (Exception unused) {
            com.ss.android.downloadlib.b.a.a(a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
            b(eVar, jSONObject, 3, 1);
        }
    }

    public static com.ss.android.downloadlib.addownload.b.g a(Context context, Uri uri) {
        if (context != null && uri != null && BaseConstants.SCHEME_MARKET.equals(uri.getScheme())) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                if (!l.a(context, intent)) {
                    return new com.ss.android.downloadlib.addownload.b.g(6, 13);
                }
                String i2 = com.ss.android.socialbase.appdownloader.f.d.i();
                if (l.d(context, i2) && !com.ss.android.socialbase.appdownloader.f.d.f()) {
                    intent.setPackage(i2);
                }
                if (com.ss.android.socialbase.downloader.g.a.c().a("fix_jump_market")) {
                    intent.addFlags(335544320);
                } else if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                if (com.ss.android.socialbase.downloader.g.a.c().b("test_jump_market_failed") == 1) {
                    com.ss.android.downloadlib.e.c.a().a(false, "jump market error");
                    return new com.ss.android.downloadlib.addownload.b.g(6, 25);
                }
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                context.startActivity(intent);
                return new com.ss.android.downloadlib.addownload.b.g(5);
            } catch (Exception unused) {
                return new com.ss.android.downloadlib.addownload.b.g(6, 14);
            }
        }
        return new com.ss.android.downloadlib.addownload.b.g(6, 12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            intent.addFlags(268435456);
            intent.putExtra("open_url", str);
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private static void d(final Context context, final com.ss.android.downloadlib.addownload.b.e eVar, final String str) {
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.g.h.2
            @Override // java.lang.Runnable
            public void run() {
                Context context2 = context;
                com.ss.android.downloadlib.b.a.a(h.a(context2, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject i2 = com.ss.android.downloadlib.addownload.j.i();
                    Thread.sleep(i2.optInt("m2_delay_millis", 1000));
                    com.ss.android.downloadlib.a.b.a.a().a(context, true);
                    com.ss.android.downloadlib.a.b.b bVar = new com.ss.android.downloadlib.a.b.b();
                    bVar.f57047a = 1;
                    bVar.f57048b = 0;
                    bVar.f57049c = String.format(com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("v"), i2.optString(ai.az)), str);
                    com.ss.android.downloadlib.a.b.a.a().a(bVar, (com.ss.android.downloadlib.a.b.d) null);
                    com.ss.android.downloadlib.a.b.a.a().b();
                    h.b(eVar, jSONObject, -1, 2);
                } catch (Throwable th) {
                    th.printStackTrace();
                    h.b(eVar, jSONObject, 1, 2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, String str2, @NonNull com.ss.android.downloadlib.addownload.b.e eVar, @NonNull JSONObject jSONObject) {
        l.a(jSONObject, "ttdownloader_type", (Object) 5);
        try {
            String a4 = com.ss.android.socialbase.appdownloader.f.c.a(new JSONObject(str2).optString("a"));
            if (!TextUtils.isEmpty(a4)) {
                TTDelegateActivity.a(str, eVar.f57139a, a4, jSONObject);
            } else {
                com.ss.android.downloadlib.b.a.a(a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
                b(eVar, jSONObject, 5, 5);
            }
        } catch (Exception unused) {
            com.ss.android.downloadlib.b.a.a(a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
            b(eVar, jSONObject, 6, 5);
        }
    }

    private static void e(final Context context, final com.ss.android.downloadlib.addownload.b.e eVar, final String str) {
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.g.h.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject i2 = com.ss.android.downloadlib.addownload.j.i();
                String optString = i2.optString(ai.az);
                final JSONObject jSONObject = new JSONObject();
                String a4 = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("x"), optString);
                JSONObject jSONObject2 = new JSONObject();
                l.a(jSONObject2, ai.aF, "v");
                l.a(jSONObject2, ai.av, str);
                byte[] bytes = jSONObject2.toString().getBytes();
                com.ss.android.downloadlib.addownload.j.d().a(a4, com.ss.android.downloadlib.addownload.j.q().a(bytes, bytes.length), "application/octet-stream;tt-data=a", 0, new q() { // from class: com.ss.android.downloadlib.g.h.3.1
                    @Override // com.ss.android.download.api.config.q
                    public void a(String str2) {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        h.b(context, str, str2, eVar, jSONObject);
                    }

                    @Override // com.ss.android.download.api.config.q
                    public void a(Throwable th) {
                        Context context2 = context;
                        com.ss.android.downloadlib.b.a.a(h.a(context2, Uri.parse(BaseConstants.MARKET_PREFIX + str)), eVar, true);
                        l.a(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                        h.b(eVar, jSONObject, 7, 5);
                    }
                });
            }
        });
    }

    public static com.ss.android.downloadlib.addownload.b.g a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.ss.android.socialbase.appdownloader.f.d.f() && l.d(context, "com.sec.android.app.samsungapps")) {
                return d(context, str);
            }
            return a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        return new com.ss.android.downloadlib.addownload.b.g(6, 11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.ss.android.downloadlib.addownload.b.e eVar, JSONObject jSONObject, int i2, int i4) {
        l.a(jSONObject, "error_code", Integer.valueOf(i2));
        l.a(jSONObject, "ttdownloader_type", Integer.valueOf(i4));
        l.a(jSONObject, com.ss.android.socialbase.appdownloader.f.d.i(), Integer.valueOf(l.b(com.ss.android.downloadlib.addownload.j.getContext(), com.ss.android.socialbase.appdownloader.f.d.i())));
        com.ss.android.downloadlib.d.a.a().b("am_result", jSONObject, eVar);
    }

    public static com.ss.android.downloadlib.addownload.b.g a(Context context, com.ss.android.downloadlib.addownload.b.e eVar, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (com.ss.android.socialbase.appdownloader.f.d.f() && l.d(context, "com.sec.android.app.samsungapps")) {
                return d(context, str);
            }
            if (eVar.f57140b.isAd() && eVar.f57142d.enableAM()) {
                JSONArray optJSONArray = com.ss.android.downloadlib.addownload.j.i().optJSONArray("am_plans");
                if (com.ss.android.socialbase.appdownloader.f.d.b() && com.ss.android.socialbase.appdownloader.f.a.a(optJSONArray, "am_0")) {
                    b(context, eVar, str);
                    return new com.ss.android.downloadlib.addownload.b.g(7, "am_m1");
                } else if (com.ss.android.socialbase.appdownloader.f.d.d() && com.ss.android.socialbase.appdownloader.f.a.a(optJSONArray, "am_3")) {
                    return c(context, eVar, str);
                } else {
                    if (com.ss.android.socialbase.appdownloader.f.d.e() && com.ss.android.socialbase.appdownloader.f.a.a(optJSONArray, "am_2")) {
                        d(context, eVar, str);
                        return new com.ss.android.downloadlib.addownload.b.g(7, "am_m2");
                    } else if (com.ss.android.socialbase.appdownloader.f.d.c() && com.ss.android.socialbase.appdownloader.f.a.a(optJSONArray, "am_5")) {
                        e(context, eVar, str);
                        return new com.ss.android.downloadlib.addownload.b.g(7, "am_v1");
                    } else {
                        return a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
                    }
                }
            }
            return a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str));
        }
        return new com.ss.android.downloadlib.addownload.b.g(6, 11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.ss.android.downloadlib.addownload.b.g b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return new com.ss.android.downloadlib.addownload.b.g(4, 11);
        }
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.j.getContext();
        }
        Intent f4 = l.f(context, str);
        if (f4 == null) {
            return new com.ss.android.downloadlib.addownload.b.g(4, 22);
        }
        f4.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(f4);
            return new com.ss.android.downloadlib.addownload.b.g(3);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.b.g(4, 23);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.ss.android.downloadlib.addownload.b.g b(String str, @NonNull com.ss.android.downloadad.api.a.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return new com.ss.android.downloadlib.addownload.b.g(2, 21);
        }
        Context context = com.ss.android.downloadlib.addownload.j.getContext();
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        intent.addFlags(268435456);
        intent.putExtra("open_url", str);
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        if (com.ss.android.socialbase.downloader.g.a.c().a("fix_app_link_flag")) {
            intent.addFlags(67108864);
        }
        if (l.b(context, intent)) {
            if (com.ss.android.downloadlib.addownload.j.i().optInt("open_url_mode") == 0 && com.ss.android.downloadlib.addownload.j.k() != null && com.ss.android.downloadlib.addownload.j.k().a() && Build.VERSION.SDK_INT >= 26 && aVar.q()) {
                TTDelegateActivity.a(str, aVar);
            } else {
                try {
                    com.ss.android.downloadlib.addownload.j.getContext().startActivity(intent);
                } catch (Exception unused) {
                    return new com.ss.android.downloadlib.addownload.b.g(2);
                }
            }
            return new com.ss.android.downloadlib.addownload.b.g(1);
        }
        return new com.ss.android.downloadlib.addownload.b.g(2, 24);
    }

    private static String a(String str, @NonNull JSONObject jSONObject, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String a4 = com.ss.android.socialbase.appdownloader.f.c.a(jSONObject.optString(com.sdk.a.g.f56552a), str2);
        String a5 = com.ss.android.socialbase.appdownloader.f.c.a(jSONObject.optString("h"), str2);
        return (TextUtils.isEmpty(a4) || TextUtils.isEmpty(a5)) ? str : str.replace(a4, a5);
    }

    public static void a(Context context, String str, long j4, boolean z3) {
        JSONObject jSONObject = new JSONObject();
        com.ss.android.downloadlib.addownload.b.e e4 = com.ss.android.downloadlib.addownload.b.f.a().e(j4);
        try {
            JSONObject i2 = com.ss.android.downloadlib.addownload.j.i();
            String optString = i2.optString(ai.az);
            String a4 = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("aa"), optString);
            String a5 = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("ac"), optString);
            String a6 = com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("af"), optString);
            boolean a7 = com.ss.android.socialbase.appdownloader.f.a.a(i2, context, a5);
            StringBuilder sb = new StringBuilder(String.format(a4, str, a6, a5));
            Intent intent = new Intent("android.intent.action.VIEW");
            String i4 = com.ss.android.socialbase.appdownloader.f.d.i();
            if (l.d(context, i4)) {
                intent.setPackage(i4);
            }
            if (z3) {
                sb.append(com.ss.android.socialbase.appdownloader.f.c.a(i2.optString("ae"), optString));
            } else {
                intent.addFlags(335544320);
            }
            l.a(jSONObject, "mf", Boolean.valueOf(a7));
            l.a(jSONObject, "if", Boolean.valueOf(z3));
            intent.setData(Uri.parse(sb.toString()));
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
            context.startActivity(intent);
            com.ss.android.downloadlib.b.a.a("am_kllk2", jSONObject, e4, true);
            if (a7) {
                b(e4, jSONObject, -1, 3);
            } else {
                b(e4, jSONObject, 3, 3);
            }
        } catch (Exception unused) {
            Context context2 = com.ss.android.downloadlib.addownload.j.getContext();
            com.ss.android.downloadlib.b.a.a(a(context2, Uri.parse(BaseConstants.MARKET_PREFIX + str)), e4, true);
            b(e4, jSONObject, 2, 3);
        }
    }

    private static boolean a(@NonNull Activity activity, @NonNull String str, @NonNull HashMap<String, String> hashMap) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(BaseConstants.MARKET_PREFIX + str));
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        intent.putExtra(com.alipay.sdk.authjs.a.f9678l, hashMap);
        String i2 = com.ss.android.socialbase.appdownloader.f.d.i();
        if (l.d(com.ss.android.downloadlib.addownload.j.getContext(), i2)) {
            intent.setPackage(i2);
        }
        if (l.a(com.ss.android.downloadlib.addownload.j.getContext(), intent)) {
            try {
                activity.startActivity(intent);
                return true;
            } catch (Exception e4) {
                com.ss.android.downloadlib.e.c.a().a(e4, "start v1");
                return false;
            }
        }
        return false;
    }

    public static void a(@NonNull Activity activity, String str, long j4, String str2, String str3) {
        JSONObject jSONObject;
        int i2;
        try {
            jSONObject = new JSONObject(str3);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        com.ss.android.downloadlib.addownload.b.e e4 = com.ss.android.downloadlib.addownload.b.f.a().e(j4);
        try {
            JSONObject i4 = com.ss.android.downloadlib.addownload.j.i();
            boolean a4 = com.ss.android.socialbase.appdownloader.f.a.a(i4, activity, com.ss.android.socialbase.appdownloader.f.c.a(i4.optString("bg"), i4.optString(ai.az)));
            HashMap<String, String> b4 = l.b(new JSONObject(str2));
            if (a4 && !b4.isEmpty() && a(activity, str, b4)) {
                b(e4, jSONObject, -1, 5);
                com.ss.android.downloadlib.b.a.a("am_v1", jSONObject, e4, true);
                return;
            }
            if (a4) {
                i2 = b4.isEmpty() ? 1 : 2;
            } else {
                i2 = 3;
            }
            b(e4, jSONObject, i2, 5);
            com.ss.android.downloadlib.b.a.a(a(activity, Uri.parse(BaseConstants.MARKET_PREFIX + str)), e4, true);
        } catch (Exception unused2) {
            Context context = com.ss.android.downloadlib.addownload.j.getContext();
            com.ss.android.downloadlib.b.a.a(a(context, Uri.parse(BaseConstants.MARKET_PREFIX + str)), e4, true);
            b(e4, jSONObject, 4, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.ss.android.downloadlib.addownload.b.g a(Context context, String str, com.ss.android.downloadad.api.a.a aVar) {
        Intent f4 = l.f(context, str);
        if (f4 == null) {
            return new com.ss.android.downloadlib.addownload.b.g(4, 22);
        }
        if (Build.VERSION.SDK_INT >= 26 && com.ss.android.downloadlib.addownload.j.i().optInt("open_package_mode") == 1 && com.ss.android.downloadlib.addownload.j.k() != null && com.ss.android.downloadlib.addownload.j.k().a() && aVar.q()) {
            TTDelegateActivity.b(str, aVar);
            return new com.ss.android.downloadlib.addownload.b.g(3);
        }
        f4.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        try {
            context.startActivity(f4);
            return new com.ss.android.downloadlib.addownload.b.g(3);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.b.g(4, 23);
        }
    }

    static com.ss.android.downloadlib.addownload.b.g a(String str, com.ss.android.downloadad.api.a.a aVar) {
        return a(com.ss.android.downloadlib.addownload.j.getContext(), str, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.ss.android.downloadlib.addownload.b.g a(@NonNull com.ss.android.downloadad.api.a.b bVar, String str, String str2) {
        com.ss.android.downloadlib.addownload.b.g b4 = b(str, bVar);
        return (com.ss.android.downloadlib.b.f.a(bVar) && b4.getType() == 2) ? a(str2, bVar) : b4;
    }
}
