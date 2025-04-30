package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.provider.FontsContractCompat;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.h.h;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import io.reactivex.annotations.SchedulerSupport;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AhUtils.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57566a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static c f57567b;

    /* renamed from: c  reason: collision with root package name */
    private static a f57568c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AhUtils.java */
    /* loaded from: classes4.dex */
    public static class a implements a.InterfaceC0308a {

        /* renamed from: a  reason: collision with root package name */
        private final e f57569a;

        /* renamed from: b  reason: collision with root package name */
        private final int f57570b;

        /* renamed from: c  reason: collision with root package name */
        private JSONObject f57571c;

        public a(Context context, Intent intent, int i2, JSONObject jSONObject, InterfaceC0305b interfaceC0305b) {
            this.f57571c = jSONObject;
            int optInt = jSONObject.optInt("query_interval", 1000);
            this.f57570b = optInt;
            this.f57569a = new e(context, intent, i2, interfaceC0305b, optInt);
        }

        @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
        public void b() {
            if (!this.f57569a.f57585i) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                this.f57569a.f57582f.sendMessage(obtain);
            }
            com.ss.android.socialbase.downloader.a.a.a().b(this);
            a unused = b.f57568c = null;
        }

        @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0308a
        public void c() {
            int optInt = this.f57571c.optInt("time_out_second", 20);
            Message obtain = Message.obtain();
            obtain.what = 1;
            this.f57569a.f57582f.sendMessage(obtain);
            if (optInt <= 0 || optInt >= 60) {
                return;
            }
            Message obtain2 = Message.obtain();
            obtain2.what = 2;
            this.f57569a.f57582f.sendMessageDelayed(obtain2, optInt * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AhUtils.java */
    /* renamed from: com.ss.android.socialbase.appdownloader.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0305b {
        boolean a(@NonNull Context context);
    }

    /* compiled from: AhUtils.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.a aVar);
    }

    /* compiled from: AhUtils.java */
    /* loaded from: classes4.dex */
    private static class d implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f57573a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0305b f57574b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f57575c;

        /* renamed from: d  reason: collision with root package name */
        private final long f57576d;

        public d(Handler handler, Context context, InterfaceC0305b interfaceC0305b, long j4) {
            this.f57573a = context;
            this.f57574b = interfaceC0305b;
            this.f57575c = handler;
            this.f57576d = j4;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            InterfaceC0305b interfaceC0305b;
            try {
                interfaceC0305b = this.f57574b;
            } catch (Throwable unused) {
            }
            if (interfaceC0305b != null) {
                long j4 = this.f57576d;
                if (j4 > 0 && j4 <= com.join.mgps.data.c.f47286a) {
                    Context context = this.f57573a;
                    boolean a4 = context != null ? interfaceC0305b.a(context) : false;
                    Message obtain = Message.obtain();
                    if (a4) {
                        obtain.what = 2;
                        this.f57575c.sendMessage(obtain);
                    } else {
                        obtain.what = 1;
                        this.f57575c.sendMessageDelayed(obtain, this.f57576d);
                    }
                    return Boolean.FALSE;
                }
            }
            return Boolean.FALSE;
        }
    }

    /* compiled from: AhUtils.java */
    /* loaded from: classes4.dex */
    private static class e implements h.a {

        /* renamed from: a  reason: collision with root package name */
        public static int f57577a;

        /* renamed from: b  reason: collision with root package name */
        private static int f57578b;

        /* renamed from: c  reason: collision with root package name */
        private final Context f57579c;

        /* renamed from: d  reason: collision with root package name */
        private final Intent f57580d;

        /* renamed from: e  reason: collision with root package name */
        private final InterfaceC0305b f57581e;

        /* renamed from: f  reason: collision with root package name */
        private final Handler f57582f;

        /* renamed from: g  reason: collision with root package name */
        private final long f57583g;

        /* renamed from: h  reason: collision with root package name */
        private Future<Boolean> f57584h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f57585i = false;

        public e(Context context, Intent intent, int i2, InterfaceC0305b interfaceC0305b, long j4) {
            this.f57579c = context;
            this.f57580d = intent;
            f57578b = i2;
            this.f57581e = interfaceC0305b;
            this.f57582f = new com.ss.android.socialbase.downloader.h.h(Looper.getMainLooper(), this);
            this.f57583g = j4;
        }

        @Override // com.ss.android.socialbase.downloader.h.h.a
        public void a(Message message) {
            if (message != null) {
                int i2 = message.what;
                if (i2 == 1) {
                    long j4 = this.f57583g;
                    if (j4 <= 0 || j4 > com.join.mgps.data.c.f47286a) {
                        return;
                    }
                    f57577a = 1;
                    this.f57584h = com.ss.android.socialbase.downloader.downloader.c.l().submit(new d(this.f57582f, this.f57579c, this.f57581e, this.f57583g));
                } else if (i2 == 2) {
                    f57577a = 2;
                    this.f57582f.removeMessages(2);
                    this.f57582f.removeMessages(1);
                    Future<Boolean> future = this.f57584h;
                    if (future != null) {
                        future.cancel(true);
                    }
                    if (!this.f57585i && (Build.VERSION.SDK_INT < 29 || com.ss.android.socialbase.downloader.a.a.a().b())) {
                        Intent intent = this.f57580d;
                        if (intent != null) {
                            b.b(this.f57579c, intent);
                        } else {
                            DownloadInfo downloadInfo = Downloader.getInstance(this.f57579c).getDownloadInfo(f57578b);
                            if (downloadInfo != null && downloadInfo.isDownloadOverStatus()) {
                                com.ss.android.socialbase.appdownloader.c.b(this.f57579c, f57578b, false);
                            }
                        }
                        this.f57585i = true;
                    }
                    b.b(f57578b, this.f57580d == null, b.a(this.f57579c));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 1) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 26)
    public static boolean e(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return context.getPackageManager().canRequestPackageInstalls();
        } catch (Throwable unused) {
            return true;
        }
    }

    private static boolean b(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.ss.android.socialbase.appdownloader.a aVar) {
        if (context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (TextUtils.isEmpty(savePath)) {
                return false;
            }
            aVar.f57558d = SchedulerSupport.CUSTOM;
            com.ss.android.socialbase.appdownloader.a.a a4 = com.ss.android.socialbase.appdownloader.a.d.a(context, SchedulerSupport.CUSTOM, jSONObject, downloadInfo);
            if (a4 != null && a4.a()) {
                Intent b4 = a4.b();
                if (b4 == null) {
                    return false;
                }
                if (a(new File(savePath), downloadInfo, jSONObject)) {
                    if (b(context, b4)) {
                        aVar.f57556b = 0;
                        return true;
                    }
                    aVar.f57556b = 1;
                } else {
                    aVar.f57556b = 6;
                }
                return false;
            }
            aVar.f57556b = 3;
        }
        return false;
    }

    public static void c(int i2, JSONObject jSONObject) {
        int i4 = 1;
        boolean z3 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z3) {
            i4 = 2;
        }
        try {
            jSONObject2.put("scene", i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().b(i2, "guide_auth_open_setting", jSONObject2);
    }

    private static void d(int i2, JSONObject jSONObject) {
        int i4 = 1;
        boolean z3 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z3) {
            i4 = 2;
        }
        try {
            jSONObject2.put("scene", i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().b(i2, "guide_auth_dialog_show", jSONObject2);
    }

    public static boolean a(Context context, DownloadInfo downloadInfo, Intent intent, boolean z3) {
        JSONArray e4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).e("ah_plans");
        if (e4 != null) {
            int length = e4.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject optJSONObject = e4.optJSONObject(i2);
                if (com.ss.android.socialbase.appdownloader.f.a.a(optJSONObject) && a(context, downloadInfo, intent, optJSONObject, z3)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0173  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(android.content.Context r11, com.ss.android.socialbase.downloader.model.DownloadInfo r12, android.content.Intent r13, org.json.JSONObject r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.b.a(android.content.Context, com.ss.android.socialbase.downloader.model.DownloadInfo, android.content.Intent, org.json.JSONObject, boolean):boolean");
    }

    public static com.ss.android.socialbase.appdownloader.a b(JSONObject jSONObject, com.ss.android.socialbase.downloader.g.a aVar) {
        com.ss.android.socialbase.appdownloader.a aVar2 = new com.ss.android.socialbase.appdownloader.a();
        if (jSONObject == null) {
            return aVar2;
        }
        aVar2.f57555a = jSONObject.optString("type");
        aVar2.f57559e = "vbi";
        if (com.ss.android.socialbase.appdownloader.a.d.a(com.ss.android.socialbase.downloader.downloader.c.N(), "vbi", jSONObject, aVar)) {
            aVar2.f57556b = 0;
        } else {
            a(aVar2, 3);
        }
        return aVar2;
    }

    public static void b(int i2, JSONObject jSONObject) {
        int i4 = 1;
        boolean z3 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z3) {
            i4 = 2;
        }
        try {
            jSONObject2.put("scene", i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().b(i2, "guide_auth_dialog_cancel", jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i2, boolean z3, boolean z4) {
        JSONObject jSONObject = new JSONObject();
        int i4 = 1;
        try {
            jSONObject.put("scene", z3 ? 1 : 2);
            if (!z4) {
                i4 = 2;
            }
            jSONObject.put(FontsContractCompat.Columns.RESULT_CODE, i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().b(i2, "guide_auth_result", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, Intent intent) {
        return a(context, intent, true);
    }

    private static boolean a(Context context, @NonNull DownloadInfo downloadInfo, JSONObject jSONObject, @NonNull com.ss.android.socialbase.appdownloader.a aVar, com.ss.android.socialbase.downloader.g.a aVar2) {
        boolean z3;
        String optString = jSONObject.optString("type");
        aVar.f57555a = optString;
        Intent b4 = com.ss.android.socialbase.appdownloader.a.d.a(context, "vbi", jSONObject, downloadInfo).b();
        StringBuilder sb = new StringBuilder();
        try {
            z3 = b(context, b4);
        } catch (Throwable th) {
            sb.append(optString);
            sb.append(" startActivity failed : ");
            sb.append(a(th));
            a(aVar, 1);
            z3 = false;
        }
        if (!z3) {
            aVar.f57557c = sb.toString();
        } else {
            aVar.f57556b = 0;
        }
        return true;
    }

    private static boolean a(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.ss.android.socialbase.appdownloader.a aVar) {
        boolean z3;
        if (context != null && jSONObject != null) {
            String optString = jSONObject.optString("device_plans");
            aVar.f57559e = optString;
            if (!TextUtils.isEmpty(optString)) {
                String[] split = optString.split(",");
                String savePath = downloadInfo.getSavePath();
                if (TextUtils.isEmpty(savePath)) {
                    return false;
                }
                File file = new File(savePath);
                StringBuilder sb = new StringBuilder();
                String str = null;
                int length = split.length;
                int i2 = 0;
                while (true) {
                    z3 = true;
                    if (i2 >= length) {
                        z3 = false;
                        break;
                    }
                    String str2 = split[i2];
                    com.ss.android.socialbase.appdownloader.a.a a4 = com.ss.android.socialbase.appdownloader.a.d.a(context, str2, jSONObject, downloadInfo);
                    if (a4 != null) {
                        Intent b4 = a4.b();
                        if (b4 != null) {
                            if (a(file, downloadInfo, jSONObject)) {
                                try {
                                    a(context, b4, false);
                                    str = str2;
                                    break;
                                } catch (Throwable th) {
                                    sb.append(str2);
                                    sb.append(" startActivity failed : ");
                                    sb.append(a(th));
                                    a(aVar, 1);
                                }
                            } else {
                                a(aVar, 6);
                                sb.append(str2);
                                sb.append(" createDescFile failed! ");
                            }
                        } else {
                            a(aVar, 3);
                            sb.append(str2);
                            sb.append(" resolveActivity failed! ");
                        }
                    }
                    sb.append("  ");
                    i2++;
                }
                if (!z3) {
                    aVar.f57557c = sb.toString();
                } else {
                    aVar.f57558d = str;
                    aVar.f57556b = 0;
                }
                return z3;
            }
        }
        return false;
    }

    public static int a(@NonNull com.ss.android.socialbase.downloader.g.a aVar) {
        JSONObject d4 = aVar.d("download_dir");
        if (d4 != null ? !TextUtils.isEmpty(d4.optString("dir_name")) : false) {
            if (com.ss.android.socialbase.downloader.g.a.c().a("get_download_info_by_list")) {
                JSONArray e4 = aVar.e("ah_plans");
                int i2 = -1;
                if (e4 != null) {
                    int length = e4.length();
                    for (int i4 = 0; i4 < length; i4++) {
                        JSONObject optJSONObject = e4.optJSONObject(i4);
                        if (com.ss.android.socialbase.appdownloader.f.a.a(optJSONObject)) {
                            String optString = optJSONObject.optString("type");
                            if (!"plan_a".equals(optString) && !"plan_b".equals(optString) && !"plan_e".equals(optString) && !"plan_f".equals(optString)) {
                                if ("plan_d".equalsIgnoreCase(optString) || "plan_h".equalsIgnoreCase(optString) || ("plan_g".equalsIgnoreCase(optString) && (i2 = b(optJSONObject, aVar).f57556b) == 0)) {
                                    return 0;
                                }
                            } else {
                                i2 = a(optJSONObject, aVar).f57556b;
                                if (i2 == 0) {
                                    return 0;
                                }
                            }
                        }
                    }
                }
                return i2;
            }
            return 4;
        }
        return 5;
    }

    @NonNull
    public static com.ss.android.socialbase.appdownloader.a a(JSONObject jSONObject, com.ss.android.socialbase.downloader.g.a aVar) {
        com.ss.android.socialbase.appdownloader.a aVar2 = new com.ss.android.socialbase.appdownloader.a();
        if (jSONObject == null) {
            return aVar2;
        }
        String optString = jSONObject.optString("type");
        aVar2.f57555a = optString;
        if ("plan_b".equals(optString)) {
            aVar2.f57559e = SchedulerSupport.CUSTOM;
            if (com.ss.android.socialbase.appdownloader.a.d.a(com.ss.android.socialbase.downloader.downloader.c.N(), SchedulerSupport.CUSTOM, jSONObject, aVar)) {
                aVar2.f57556b = 0;
                return aVar2;
            }
            a(aVar2, 3);
        } else {
            String optString2 = jSONObject.optString("device_plans");
            aVar2.f57559e = optString2;
            if (!TextUtils.isEmpty(optString2)) {
                for (String str : optString2.split(",")) {
                    if (com.ss.android.socialbase.appdownloader.a.d.a(com.ss.android.socialbase.downloader.downloader.c.N(), str, jSONObject, aVar)) {
                        aVar2.f57556b = 0;
                        return aVar2;
                    }
                    a(aVar2, 3);
                }
            }
        }
        return aVar2;
    }

    public static com.ss.android.socialbase.appdownloader.a a(JSONObject jSONObject, String str, Context context, com.ss.android.socialbase.downloader.g.a aVar) {
        com.ss.android.socialbase.appdownloader.a aVar2 = new com.ss.android.socialbase.appdownloader.a();
        if (jSONObject != null && com.ss.android.socialbase.appdownloader.f.d.b()) {
            aVar2.f57555a = jSONObject.optString("type");
            if (aVar.a("bi", 0) == 1) {
                aVar2.f57556b = 0;
                return aVar2;
            } else if (a(context)) {
                aVar2.f57556b = 2;
            } else if (com.ss.android.socialbase.appdownloader.f.a.a(str) != null) {
                aVar2.f57556b = 0;
            } else {
                aVar2.f57556b = 9;
            }
        }
        return aVar2;
    }

    private static void a(com.ss.android.socialbase.appdownloader.a aVar, int i2) {
        int i4 = aVar.f57556b;
        if (i4 != -1) {
            aVar.f57556b = (i4 * 10) + i2;
        } else {
            aVar.f57556b = i2;
        }
    }

    private static boolean a(File file, DownloadInfo downloadInfo, @NonNull JSONObject jSONObject) {
        if (file == null) {
            return false;
        }
        String path = file.getPath();
        JSONObject d4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).d("download_dir");
        File file2 = null;
        String optString = d4 != null ? d4.optString("ins_desc") : null;
        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString)) {
            file2 = new File(path + File.separator + optString);
        }
        if (file2 != null) {
            try {
                if (file2.createNewFile()) {
                    file2.deleteOnExit();
                    return true;
                }
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Context context, @Nullable Intent intent, JSONObject jSONObject, int i2, @Nullable com.ss.android.socialbase.appdownloader.a aVar) {
        if (context != null && jSONObject != null) {
            long optLong = jSONObject.optLong("jump_interval", 0L);
            if (optLong <= 0) {
                return false;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("sp_ah_config", 0);
            if ((System.currentTimeMillis() - sharedPreferences.getLong("last_jump_unknown_source_time", 0L)) / 60000 >= optLong && !a(context)) {
                sharedPreferences.edit().putLong("last_jump_unknown_source_time", System.currentTimeMillis()).apply();
                if (jSONObject.optInt("show_unknown_source_dialog", 0) == 1) {
                    Intent intent2 = new Intent(context, JumpUnknownSourceActivity.class);
                    intent2.addFlags(268435456);
                    intent2.putExtra("intent", intent);
                    intent2.putExtra("config", jSONObject.toString());
                    intent2.putExtra("id", i2);
                    try {
                        if (a(context, intent2, false)) {
                            d(i2, jSONObject);
                        }
                        return true;
                    } catch (Throwable th) {
                        if (aVar != null) {
                            aVar.f57556b = 1;
                            aVar.f57557c = "tryShowUnknownSourceDialog" + a(th);
                        }
                        return false;
                    }
                }
                if (a(context, intent, i2, jSONObject)) {
                    c(i2, jSONObject);
                }
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context, @Nullable Intent intent, int i2, JSONObject jSONObject) {
        try {
            if (com.ss.android.socialbase.appdownloader.f.d.b() && Build.VERSION.SDK_INT < 26 && !d(context)) {
                com.ss.android.socialbase.appdownloader.a.f fVar = new com.ss.android.socialbase.appdownloader.a.f(context);
                if (fVar.a()) {
                    a(context, intent, i2, jSONObject, new InterfaceC0305b() { // from class: com.ss.android.socialbase.appdownloader.b.1
                        @Override // com.ss.android.socialbase.appdownloader.b.InterfaceC0305b
                        public boolean a(@NonNull Context context2) {
                            return b.d(context2);
                        }
                    });
                    return b(context, fVar.b());
                }
            } else if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26 && !e(context)) {
                com.ss.android.socialbase.appdownloader.a.b bVar = new com.ss.android.socialbase.appdownloader.a.b(context);
                if (bVar.a()) {
                    a(context, intent, i2, jSONObject, new InterfaceC0305b() { // from class: com.ss.android.socialbase.appdownloader.b.2
                        @Override // com.ss.android.socialbase.appdownloader.b.InterfaceC0305b
                        public boolean a(@NonNull Context context2) {
                            return b.e(context2);
                        }
                    });
                    return b(context, bVar.b());
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean a(Context context) {
        if (context == null) {
            return true;
        }
        if (com.ss.android.socialbase.appdownloader.f.d.b() && Build.VERSION.SDK_INT < 26) {
            return d(context);
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            return e(context);
        }
        return true;
    }

    public static boolean a() {
        return e.f57577a == 1;
    }

    public static void a(int i2, JSONObject jSONObject) {
        int i4 = 1;
        boolean z3 = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z3) {
            i4 = 2;
        }
        try {
            jSONObject2.put("scene", i4);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.c.P().b(i2, "guide_auth_dialog_confirm", jSONObject2);
    }

    private static void a(Context context, Intent intent, int i2, JSONObject jSONObject, InterfaceC0305b interfaceC0305b) {
        if (f57568c != null) {
            com.ss.android.socialbase.downloader.a.a.a().b(f57568c);
            f57568c = null;
        }
        f57568c = new a(context, intent, i2, jSONObject, interfaceC0305b);
        com.ss.android.socialbase.downloader.a.a.a().a(f57568c);
    }

    public static boolean a(Context context, Intent intent, boolean z3) {
        if (context == null || intent == null) {
            return false;
        }
        if (z3) {
            try {
                intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
                context.startActivity(intent);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        context.startActivity(intent);
        return true;
    }

    public static String a(Throwable th) {
        String th2 = th.toString();
        return th2.length() > 800 ? th2.substring(0, 500) : th2;
    }

    public static void a(c cVar) {
        f57567b = cVar;
    }
}
