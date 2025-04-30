package com.bytedance.sdk.openadsdk.downloadnew;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTDownloadEventLogger;
import com.bytedance.sdk.openadsdk.downloadnew.c;
import com.bytedance.sdk.openadsdk.downloadnew.core.DialogBuilder;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadEventModel;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.TagGameListActivity_;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.g;
import com.ss.android.download.api.config.h;
import com.ss.android.download.api.config.k;
import com.ss.android.download.api.config.p;
import com.ss.android.download.api.config.q;
import com.ss.android.download.api.config.s;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.a;
import com.ss.android.download.api.model.b;
import com.ss.android.downloadlib.addownload.a.a;
import com.ss.android.downloadlib.addownload.b.f;
import com.ss.android.downloadlib.b.j;
import com.ss.android.socialbase.downloader.depend.aa;
import com.ss.android.socialbase.downloader.depend.ad;
import com.ss.android.socialbase.downloader.downloader.DownloaderBuilder;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import com.ss.android.socialbase.downloader.network.i;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTDownloadVisitor.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f10640a;

    /* renamed from: c  reason: collision with root package name */
    public static ITTDownloadVisitor f10642c;

    /* renamed from: e  reason: collision with root package name */
    private static Context f10644e;

    /* renamed from: f  reason: collision with root package name */
    private static Map<Integer, ITTDownloadAdapter.OnEventLogHandler> f10645f;

    /* renamed from: g  reason: collision with root package name */
    private static final com.ss.android.download.api.download.a.a f10646g;

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f10643d = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public static boolean f10641b = true;

    /* compiled from: TTDownloadVisitor.java */
    /* loaded from: classes2.dex */
    public static class e implements IDownloadHttpService {
        @Override // com.ss.android.socialbase.downloader.network.IDownloadHttpService
        public i downloadWithConnection(int i2, String str, List<com.ss.android.socialbase.downloader.model.c> list) throws IOException {
            final c.a a4 = com.bytedance.sdk.openadsdk.downloadnew.c.a(str, list);
            if (a4 != null) {
                return new i() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.e.1
                    @Override // com.ss.android.socialbase.downloader.network.i
                    public InputStream a() {
                        return a4.f10632a;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.g
                    public int b() {
                        return a4.f10634c;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.g
                    public void c() {
                    }

                    @Override // com.ss.android.socialbase.downloader.network.i
                    public void d() {
                        try {
                            a4.f10635d.disconnect();
                        } catch (Exception unused) {
                        }
                    }

                    @Override // com.ss.android.socialbase.downloader.network.g
                    public String a(String str2) {
                        Map<String, String> map = a4.f10633b;
                        if (map != null) {
                            return map.get(str2);
                        }
                        return null;
                    }
                };
            }
            return null;
        }
    }

    static {
        try {
            f10640a = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
        } catch (Throwable unused) {
        }
        f10646g = new com.ss.android.download.api.download.a.a() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.6
            @Override // com.ss.android.download.api.download.a.a
            public void a(DownloadModel downloadModel, DownloadController downloadController, DownloadEventConfig downloadEventConfig) {
                com.bytedance.sdk.openadsdk.api.a.b("TTDownloadVisitor", "completeListener: onDownloadStart");
            }

            @Override // com.ss.android.download.api.download.a.a
            public void b(DownloadInfo downloadInfo, String str) {
                com.bytedance.sdk.openadsdk.api.a.b("TTDownloadVisitor", "completeListener: onInstalled");
                d.c(str);
            }

            @Override // com.ss.android.download.api.download.a.a
            public void a(DownloadInfo downloadInfo, String str) {
                com.bytedance.sdk.openadsdk.api.a.b("TTDownloadVisitor", "completeListener: onDownloadFinished");
            }

            @Override // com.ss.android.download.api.download.a.a
            public void a(DownloadInfo downloadInfo, BaseException baseException, String str) {
                com.bytedance.sdk.openadsdk.api.a.b("TTDownloadVisitor", "completeListener: onDownloadFailed");
            }

            @Override // com.ss.android.download.api.download.a.a
            public void a(DownloadInfo downloadInfo) {
                com.bytedance.sdk.openadsdk.api.a.b("TTDownloadVisitor", "completeListener: onCanceled");
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) {
        com.ss.android.downloadad.api.a.b a4;
        JSONObject g4;
        if (TextUtils.isEmpty(str) || (a4 = f.a().a(str)) == null || (g4 = a4.g()) == null || e() == null) {
            return;
        }
        e().checkAutoControl(g4, str);
    }

    static /* synthetic */ ITTDownloadVisitor d() {
        return e();
    }

    private static ITTDownloadVisitor e() {
        ITTDownloadVisitor iTTDownloadVisitor = f10642c;
        if (iTTDownloadVisitor == null) {
            TTAdManager adManager = TTAdSdk.getAdManager();
            if (adManager == null) {
                return null;
            }
            return (ITTDownloadVisitor) adManager.getExtra(ITTDownloadVisitor.class, com.bytedance.sdk.openadsdk.downloadnew.b.a(1));
        }
        return iTTDownloadVisitor;
    }

    private static Context getContext() {
        Context context = f10644e;
        return context == null ? TTAppContextHolder.getContext() : context;
    }

    /* compiled from: TTDownloadVisitor.java */
    /* loaded from: classes2.dex */
    public static class a implements com.ss.android.download.api.config.f {
        private void c(com.ss.android.download.api.model.c cVar) {
            if (cVar == null) {
                return;
            }
            Object l4 = cVar.l();
            TTDownloadEventModel label = TTDownloadEventModel.builder().setTag(cVar.b()).setExtJson(cVar.h()).setMaterialMeta(l4 instanceof JSONObject ? (JSONObject) l4 : null).setLabel(cVar.c());
            boolean z3 = "download_notification".equals(cVar.b()) || "landing_h5_download_ad_button".equals(cVar.b());
            if (d.d() != null) {
                d.d().executeLogUpload(label, z3);
            }
        }

        @Override // com.ss.android.download.api.config.f
        public void a(com.ss.android.download.api.model.c cVar) {
            com.bytedance.sdk.openadsdk.api.a.b("LibEventLogger", "onV3Event");
            a(cVar, true);
        }

        @Override // com.ss.android.download.api.config.f
        public void b(com.ss.android.download.api.model.c cVar) {
            com.bytedance.sdk.openadsdk.api.a.b("LibEventLogger", "onEvent called");
            a(cVar, false);
            c(cVar);
        }

        private void a(com.ss.android.download.api.model.c cVar, boolean z3) {
            TTDownloadEventLogger tTDownloadEventLogger;
            if (d.d() == null || (tTDownloadEventLogger = d.d().getTTDownloadEventLogger()) == null || cVar == null) {
                return;
            }
            if (tTDownloadEventLogger.shouldFilterOpenSdkLog() && d.d().isOpenSdkEvent(cVar.toString())) {
                return;
            }
            if (z3) {
                tTDownloadEventLogger.onV3Event(d.b(cVar));
            } else {
                tTDownloadEventLogger.onEvent(d.b(cVar));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTDownloadVisitor.java */
    /* loaded from: classes2.dex */
    public static class c implements h {
        @Override // com.ss.android.download.api.config.h
        public void a(Activity activity, int i2, String[] strArr, int[] iArr) {
        }

        @Override // com.ss.android.download.api.config.h
        public void a(Activity activity, String[] strArr, final s sVar) {
            if (d.d() != null) {
                d.d().requestPermission(activity, strArr, new ITTPermissionCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.c.1
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback
                    public void onDenied(String str) {
                        s sVar2 = sVar;
                        if (sVar2 != null) {
                            sVar2.a(str);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback
                    public void onGranted() {
                        s sVar2 = sVar;
                        if (sVar2 != null) {
                            sVar2.a();
                        }
                    }
                });
            }
        }

        @Override // com.ss.android.download.api.config.h
        public boolean a(Context context, String str) {
            if (d.d() != null) {
                return d.d().hasPermission(context, str);
            }
            return false;
        }
    }

    public static void a(Context context) {
        if (context == null) {
            context = TTAppContextHolder.getContext();
        }
        if (context == null) {
            return;
        }
        AtomicBoolean atomicBoolean = f10643d;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (d.class) {
            if (!atomicBoolean.get()) {
                f10644e = context.getApplicationContext();
                if (e() != null) {
                    String initPath = e().initPath(f10641b);
                    if (!TextUtils.isEmpty(initPath)) {
                        f10640a = initPath;
                    }
                }
                atomicBoolean.set(b(f10644e));
            }
        }
    }

    public static void b() {
        a().g();
        if (e() != null) {
            e().clearAllData(f10640a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTDownloadVisitor.java */
    /* loaded from: classes2.dex */
    public static class b implements g {
        private b() {
        }

        @Override // com.ss.android.download.api.config.g
        public void a(String str, String str2, Map<String, Object> map, final q qVar) {
            str.hashCode();
            int i2 = 0;
            if (!str.equals("GET") && str.equals("POST")) {
                i2 = 1;
            }
            if (d.d() != null) {
                d.d().execute(i2, str2, map, new ITTHttpCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.b.1
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onError(Throwable th) {
                        q qVar2 = qVar;
                        if (qVar2 != null) {
                            qVar2.a(th);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onResponse(String str3) {
                        q qVar2 = qVar;
                        if (qVar2 != null) {
                            qVar2.a(str3);
                        }
                    }
                });
            }
        }

        @Override // com.ss.android.download.api.config.g
        public void a(String str, byte[] bArr, String str2, int i2, final q qVar) {
            if (d.d() != null) {
                d.d().postBody(str, bArr, str2, new ITTHttpCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.b.2
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onError(Throwable th) {
                        q qVar2 = qVar;
                        if (qVar2 != null) {
                            qVar2.a(th);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onResponse(String str3) {
                        q qVar2 = qVar;
                        if (qVar2 != null) {
                            qVar2.a(str3);
                        }
                    }
                });
            }
        }
    }

    /* compiled from: TTDownloadVisitor.java */
    /* renamed from: com.bytedance.sdk.openadsdk.downloadnew.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0046d implements k {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<Context> f10654a;

        public C0046d(Context context) {
            this.f10654a = new WeakReference<>(context);
        }

        private DialogBuilder c(final com.ss.android.download.api.model.b bVar) {
            return DialogBuilder.builder().setTitle(bVar.f56927b).setMessage(bVar.f56928c).setNegativeBtnText(bVar.f56930e).setPositiveBtnText(bVar.f56929d).setIcon(bVar.f56932g).setDialogStatusChangedListener(new IDialogStatusChangedListener() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.d.1
                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onCancel(DialogInterface dialogInterface) {
                    b.InterfaceC0290b interfaceC0290b = bVar.f56933h;
                    if (interfaceC0290b != null) {
                        interfaceC0290b.c(dialogInterface);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onNegativeBtnClick(DialogInterface dialogInterface) {
                    b.InterfaceC0290b interfaceC0290b = bVar.f56933h;
                    if (interfaceC0290b != null) {
                        try {
                            interfaceC0290b.b(dialogInterface);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onPositiveBtnClick(DialogInterface dialogInterface) {
                    b.InterfaceC0290b interfaceC0290b = bVar.f56933h;
                    if (interfaceC0290b != null) {
                        interfaceC0290b.a(dialogInterface);
                    }
                }
            });
        }

        @Override // com.ss.android.download.api.config.k
        public void a(int i2, Context context, DownloadModel downloadModel, String str, Drawable drawable, int i4) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                Toast.makeText(context, str, 0).show();
            } catch (Exception e4) {
                com.ss.android.socialbase.downloader.c.a.e("LibUIFactory", "showToastWithDuration e " + e4.getMessage());
            }
        }

        @Override // com.ss.android.download.api.config.k
        /* renamed from: a */
        public AlertDialog b(com.ss.android.download.api.model.b bVar) {
            if (bVar != null && d.d() != null) {
                Context context = bVar.f56926a;
                if (context != null && (context instanceof Activity)) {
                    return d.d().showDialogBySelf((Activity) bVar.f56926a, bVar.f56935j == 1, c(bVar));
                }
                d.d().showDialogByDelegate(this.f10654a, bVar.f56935j == 1, c(bVar));
            }
            return null;
        }
    }

    private static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            packageName = "";
        }
        com.ss.android.download.api.a a4 = com.ss.android.downloadlib.g.a(applicationContext).a();
        if (a4 == null) {
            return false;
        }
        com.ss.android.download.api.a a5 = a4.a(new c()).a(new a()).a(new C0046d(applicationContext)).a(new b()).a(new com.ss.android.download.api.config.i() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.3
            @Override // com.ss.android.download.api.config.i
            public JSONObject a() {
                if (d.d() != null) {
                    return d.d().getDownloadSettings();
                }
                return new JSONObject();
            }
        }).a(new com.ss.android.download.api.config.b() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.2
            @Override // com.ss.android.download.api.config.b
            public boolean a() {
                if (d.d() != null) {
                    return d.d().getAppIsBackground();
                }
                return false;
            }
        }).a(new a.C0289a().b("143").a(TTAdConstant.APP_NAME).c("4.6.0.2").d(String.valueOf(4602)).a()).a(new p() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.1
            @Override // com.ss.android.download.api.config.p
            public byte[] a(byte[] bArr, int i2) {
                return new byte[0];
            }
        });
        a5.a(packageName + ".TTFileProvider").a(a(applicationContext, e() != null ? e().getDownloadSettings() : new JSONObject())).a();
        com.ss.android.downloadlib.g.a.a();
        com.ss.android.downloadlib.g.a(applicationContext).d().a(1);
        com.ss.android.downloadlib.g.a(applicationContext).a(f10646g);
        com.ss.android.socialbase.appdownloader.d.j().a(new ad() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.4
            @Override // com.ss.android.socialbase.downloader.depend.ad
            public boolean a(Intent intent) {
                return false;
            }
        });
        return true;
    }

    public static Map<Integer, ITTDownloadAdapter.OnEventLogHandler> c() {
        return f10645f;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f10640a = str;
    }

    public static com.ss.android.downloadlib.g a() {
        a(getContext());
        return com.ss.android.downloadlib.g.a(getContext());
    }

    public static boolean a(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return a().e().a(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener);
    }

    public static boolean a(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return a().e().a(context, uri, downloadModel, downloadEventConfig, downloadController);
    }

    public static boolean a(Uri uri) {
        return j.a(uri);
    }

    public static void a(int i2) {
        Map<Integer, ITTDownloadAdapter.OnEventLogHandler> map = f10645f;
        if (map != null) {
            map.remove(Integer.valueOf(i2));
        }
    }

    public static void a(int i2, ITTDownloadAdapter.OnEventLogHandler onEventLogHandler) {
        if (onEventLogHandler != null) {
            if (f10645f == null) {
                f10645f = Collections.synchronizedMap(new WeakHashMap());
            }
            f10645f.put(Integer.valueOf(i2), onEventLogHandler);
        }
    }

    public static boolean a(String str, String str2, JSONObject jSONObject, Object obj) {
        Map<Integer, ITTDownloadAdapter.OnEventLogHandler> c4;
        boolean z3 = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && jSONObject != null && (c4 = c()) != null) {
            for (Map.Entry<Integer, ITTDownloadAdapter.OnEventLogHandler> entry : c4.entrySet()) {
                int intValue = entry.getKey().intValue();
                ITTDownloadAdapter.OnEventLogHandler value = entry.getValue();
                if (value != null) {
                    boolean onEventLog = value.onEventLog(intValue, jSONObject.toString(), str, str2, obj);
                    if (!z3 && !onEventLog) {
                        z3 = true;
                    }
                }
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject b(com.ss.android.download.api.model.c cVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("category", cVar.a());
            jSONObject.put(TagGameListActivity_.f35885q0, cVar.b());
            jSONObject.put("label", cVar.c());
            jSONObject.put("isAd", cVar.d());
            jSONObject.put("adId", cVar.e());
            jSONObject.put(TTDownloadField.TT_LOG_EXTRA, cVar.f());
            jSONObject.put("extValue", cVar.g());
            jSONObject.put("extJson", cVar.h());
            jSONObject.put("paramsJson", cVar.i());
            jSONObject.put("eventSource", cVar.k());
            jSONObject.put("extraObject", cVar.l());
            jSONObject.put("clickTrackUrl", cVar.j());
            jSONObject.put("isV3", cVar.m());
            jSONObject.put("V3EventName", cVar.n());
            jSONObject.put("V3EventParams", cVar.o());
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    private static DownloaderBuilder a(Context context, JSONObject jSONObject) {
        return new DownloaderBuilder(context).downloadSetting(new aa() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.5
            @Override // com.ss.android.socialbase.downloader.depend.aa
            public JSONObject a() {
                if (d.d() != null) {
                    return d.d().getDownloadSettings();
                }
                return new JSONObject();
            }
        }).downloadExpSwitch(jSONObject.optInt("download_exp_switch_temp", 1040187391)).httpService(new e());
    }

    public static boolean a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            List<DownloadInfo> b4 = com.ss.android.socialbase.appdownloader.d.j().b(context);
            if (!b4.isEmpty()) {
                for (DownloadInfo downloadInfo : b4) {
                    if (downloadInfo != null && str.equals(downloadInfo.getUrl())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean a(Activity activity, final ExitInstallListener exitInstallListener) {
        return com.ss.android.downloadlib.addownload.a.a.a().a(activity, false, new a.InterfaceC0295a() { // from class: com.bytedance.sdk.openadsdk.downloadnew.d.7
            @Override // com.ss.android.downloadlib.addownload.a.a.InterfaceC0295a
            public void a() {
                ExitInstallListener exitInstallListener2 = ExitInstallListener.this;
                if (exitInstallListener2 != null) {
                    exitInstallListener2.onExitInstall();
                }
            }
        });
    }
}
