package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.join.mgps.receiver.BootReceiver_;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.appdownloader.c.j;
import com.ss.android.socialbase.appdownloader.c.m;
import com.ss.android.socialbase.downloader.depend.ad;
import com.ss.android.socialbase.downloader.depend.ag;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.impls.r;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AppDownloader.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57596a = "d";

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f57597b;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f57598f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f57599g;

    /* renamed from: c  reason: collision with root package name */
    private String f57600c;

    /* renamed from: d  reason: collision with root package name */
    private String f57601d;

    /* renamed from: e  reason: collision with root package name */
    private DownloadReceiver f57602e;

    /* renamed from: h  reason: collision with root package name */
    private boolean f57603h = false;

    /* renamed from: i  reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.c.c f57604i;

    /* renamed from: j  reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.c.d f57605j;

    /* renamed from: k  reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.c.h f57606k;

    /* renamed from: l  reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.c.g f57607l;

    /* renamed from: m  reason: collision with root package name */
    private m f57608m;

    /* renamed from: n  reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.c.f f57609n;

    /* renamed from: o  reason: collision with root package name */
    private j f57610o;

    /* renamed from: p  reason: collision with root package name */
    private ad f57611p;

    /* renamed from: q  reason: collision with root package name */
    private ag f57612q;

    private d() {
    }

    public static d j() {
        if (f57597b == null) {
            synchronized (d.class) {
                if (f57597b == null) {
                    f57597b = new d();
                }
            }
        }
        return f57597b;
    }

    private void q() {
        if (f57599g) {
            return;
        }
        if (this.f57602e == null) {
            this.f57602e = new DownloadReceiver();
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
            intentFilter.addAction("android.ss.intent.action.DOWNLOAD_COMPLETE");
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(BootReceiver_.f51451a);
            intentFilter2.addAction(BootReceiver_.f51454d);
            intentFilter2.addDataScheme("package");
            IntentFilter intentFilter3 = new IntentFilter();
            intentFilter3.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter3.addDataScheme(com.facebook.common.util.f.f11767c);
            com.ss.android.socialbase.downloader.downloader.c.N().registerReceiver(this.f57602e, intentFilter);
            com.ss.android.socialbase.downloader.downloader.c.N().registerReceiver(this.f57602e, intentFilter2);
            com.ss.android.socialbase.downloader.downloader.c.N().registerReceiver(this.f57602e, intentFilter3);
            f57599g = true;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void r() {
        if (Build.VERSION.SDK_INT >= 21) {
            r.a(new r.b() { // from class: com.ss.android.socialbase.appdownloader.d.1
                @Override // com.ss.android.socialbase.downloader.impls.r.b
                public void a(DownloadInfo downloadInfo, long j4, boolean z3, int i2) {
                    RetryJobSchedulerService.a(downloadInfo, j4, z3, i2);
                }
            });
        }
    }

    public com.ss.android.socialbase.appdownloader.c.d b() {
        return this.f57605j;
    }

    public com.ss.android.socialbase.appdownloader.c.h c() {
        return this.f57606k;
    }

    public String d() {
        return this.f57601d;
    }

    public com.ss.android.socialbase.appdownloader.c.f e() {
        return this.f57609n;
    }

    public boolean f() {
        return com.ss.android.socialbase.downloader.g.a.b().optInt("package_flag_config", 1) == 1;
    }

    public j g() {
        return this.f57610o;
    }

    public File h() {
        return Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getGlobalSaveDir();
    }

    public String i() {
        return this.f57600c;
    }

    public m k() {
        return this.f57608m;
    }

    public com.ss.android.socialbase.appdownloader.c.g l() {
        return this.f57607l;
    }

    public com.ss.android.socialbase.downloader.downloader.r m() {
        return Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getReserveWifiStatusListener();
    }

    public ad n() {
        return this.f57611p;
    }

    public ag o() {
        return this.f57612q;
    }

    private void c(Context context) {
        if (context == null || f57598f) {
            return;
        }
        com.ss.android.socialbase.downloader.constants.e.a(AdBaseConstants.MIME_APK);
        com.ss.android.socialbase.downloader.downloader.c.a(context);
        com.ss.android.socialbase.downloader.downloader.c.a(new com.ss.android.socialbase.appdownloader.d.b());
        q();
        r();
        f57598f = true;
    }

    public void b(String str) {
        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).setDefaultSavePath(str);
    }

    private DownloadInfo b(Context context, String str) {
        List<DownloadInfo> downloadInfoList = Downloader.getInstance(context).getDownloadInfoList(str);
        if (downloadInfoList != null) {
            for (DownloadInfo downloadInfo : downloadInfoList) {
                if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                    return downloadInfo;
                }
            }
            return null;
        }
        return null;
    }

    public com.ss.android.socialbase.appdownloader.c.c a() {
        return this.f57604i;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f57601d = str;
    }

    public void a(j jVar) {
        this.f57610o = jVar;
    }

    public List<DownloadInfo> b(Context context) {
        return Downloader.getInstance(context).getDownloadingDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    @Deprecated
    public void a(Context context, String str, com.ss.android.socialbase.appdownloader.c.c cVar, com.ss.android.socialbase.appdownloader.c.d dVar, com.ss.android.socialbase.appdownloader.c.h hVar) {
        if (cVar != null) {
            this.f57604i = cVar;
        }
        if (dVar != null) {
            this.f57605j = dVar;
        }
        if (hVar != null) {
            this.f57606k = hVar;
        }
        c(context);
    }

    public static boolean a(Context context, int i2) {
        return c.a(context, i2, true) == 1;
    }

    public void a(Context context, int i2, int i4) {
        try {
            switch (i4) {
                case -4:
                case -1:
                    Downloader.getInstance(context).restart(i2);
                    break;
                case -3:
                    c.a(context, i2, true);
                    break;
                case -2:
                    Downloader.getInstance(context).resume(i2);
                    break;
                case 0:
                case 6:
                default:
                    return;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 7:
                case 8:
                    Downloader.getInstance(context).pause(i2);
                    break;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:37|(2:41|42)|45|(1:113)(1:52)|53|(2:59|(1:61)(19:62|63|(1:65)|66|(3:68|(2:71|69)|72)|73|74|75|(1:77)(1:110)|78|79|(6:84|(1:107)(1:88)|89|(1:93)|(1:(1:105)(1:104))|106)|108|(1:86)|107|89|(2:91|93)|(0)|106))|112|63|(0)|66|(0)|73|74|75|(0)(0)|78|79|(8:81|84|(0)|107|89|(0)|(0)|106)|108|(0)|107|89|(0)|(0)|106) */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0137 A[Catch: all -> 0x0388, TryCatch #2 {all -> 0x0388, blocks: (B:8:0x0010, B:11:0x0023, B:15:0x002c, B:17:0x003a, B:18:0x0042, B:20:0x004a, B:21:0x0053, B:24:0x005a, B:26:0x0066, B:29:0x0072, B:31:0x0080, B:32:0x0084, B:34:0x008b, B:37:0x0093, B:39:0x00a7, B:42:0x00c1, B:45:0x00da, B:47:0x00e0, B:51:0x00f1, B:53:0x00f7, B:55:0x00fd, B:57:0x0103, B:59:0x0109, B:61:0x0117, B:62:0x0131, B:64:0x0137, B:65:0x013c, B:67:0x0146, B:68:0x014a, B:70:0x0150, B:71:0x015a, B:77:0x0185, B:79:0x018b, B:85:0x0197, B:87:0x01a4, B:89:0x01b4, B:91:0x0328, B:93:0x0332, B:96:0x033d, B:98:0x0343, B:100:0x0349, B:102:0x0353, B:104:0x0359, B:105:0x0369), top: B:120:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0146 A[Catch: all -> 0x0388, TryCatch #2 {all -> 0x0388, blocks: (B:8:0x0010, B:11:0x0023, B:15:0x002c, B:17:0x003a, B:18:0x0042, B:20:0x004a, B:21:0x0053, B:24:0x005a, B:26:0x0066, B:29:0x0072, B:31:0x0080, B:32:0x0084, B:34:0x008b, B:37:0x0093, B:39:0x00a7, B:42:0x00c1, B:45:0x00da, B:47:0x00e0, B:51:0x00f1, B:53:0x00f7, B:55:0x00fd, B:57:0x0103, B:59:0x0109, B:61:0x0117, B:62:0x0131, B:64:0x0137, B:65:0x013c, B:67:0x0146, B:68:0x014a, B:70:0x0150, B:71:0x015a, B:77:0x0185, B:79:0x018b, B:85:0x0197, B:87:0x01a4, B:89:0x01b4, B:91:0x0328, B:93:0x0332, B:96:0x033d, B:98:0x0343, B:100:0x0349, B:102:0x0353, B:104:0x0359, B:105:0x0369), top: B:120:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0164 A[Catch: all -> 0x0185, TryCatch #1 {all -> 0x0185, blocks: (B:72:0x015e, B:74:0x0164, B:76:0x016f, B:75:0x016a), top: B:118:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016a A[Catch: all -> 0x0185, TryCatch #1 {all -> 0x0185, blocks: (B:72:0x015e, B:74:0x0164, B:76:0x016f, B:75:0x016a), top: B:118:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0197 A[Catch: all -> 0x0388, TryCatch #2 {all -> 0x0388, blocks: (B:8:0x0010, B:11:0x0023, B:15:0x002c, B:17:0x003a, B:18:0x0042, B:20:0x004a, B:21:0x0053, B:24:0x005a, B:26:0x0066, B:29:0x0072, B:31:0x0080, B:32:0x0084, B:34:0x008b, B:37:0x0093, B:39:0x00a7, B:42:0x00c1, B:45:0x00da, B:47:0x00e0, B:51:0x00f1, B:53:0x00f7, B:55:0x00fd, B:57:0x0103, B:59:0x0109, B:61:0x0117, B:62:0x0131, B:64:0x0137, B:65:0x013c, B:67:0x0146, B:68:0x014a, B:70:0x0150, B:71:0x015a, B:77:0x0185, B:79:0x018b, B:85:0x0197, B:87:0x01a4, B:89:0x01b4, B:91:0x0328, B:93:0x0332, B:96:0x033d, B:98:0x0343, B:100:0x0349, B:102:0x0353, B:104:0x0359, B:105:0x0369), top: B:120:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0328 A[Catch: all -> 0x0388, TryCatch #2 {all -> 0x0388, blocks: (B:8:0x0010, B:11:0x0023, B:15:0x002c, B:17:0x003a, B:18:0x0042, B:20:0x004a, B:21:0x0053, B:24:0x005a, B:26:0x0066, B:29:0x0072, B:31:0x0080, B:32:0x0084, B:34:0x008b, B:37:0x0093, B:39:0x00a7, B:42:0x00c1, B:45:0x00da, B:47:0x00e0, B:51:0x00f1, B:53:0x00f7, B:55:0x00fd, B:57:0x0103, B:59:0x0109, B:61:0x0117, B:62:0x0131, B:64:0x0137, B:65:0x013c, B:67:0x0146, B:68:0x014a, B:70:0x0150, B:71:0x015a, B:77:0x0185, B:79:0x018b, B:85:0x0197, B:87:0x01a4, B:89:0x01b4, B:91:0x0328, B:93:0x0332, B:96:0x033d, B:98:0x0343, B:100:0x0349, B:102:0x0353, B:104:0x0359, B:105:0x0369), top: B:120:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x033b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.ss.android.socialbase.appdownloader.f r23) {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.d.a(com.ss.android.socialbase.appdownloader.f):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DownloadTask downloadTask, int i2, boolean z3) {
        if (downloadTask == null) {
            return;
        }
        downloadTask.download();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            downloadInfo.setAntiHijackErrorCode(i2);
        }
        if (downloadInfo == null || !z3) {
            return;
        }
        downloadInfo.setSavePathRedirected(z3);
    }

    private List<com.ss.android.socialbase.downloader.model.c> a(List<com.ss.android.socialbase.downloader.model.c> list) {
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        if (list != null && list.size() > 0) {
            for (com.ss.android.socialbase.downloader.model.c cVar : list) {
                if (cVar != null && !TextUtils.isEmpty(cVar.a()) && !TextUtils.isEmpty(cVar.b())) {
                    if (cVar.a().equals("User-Agent")) {
                        z3 = true;
                    }
                    arrayList.add(new com.ss.android.socialbase.downloader.model.c(cVar.a(), cVar.b()));
                }
            }
        }
        if (!z3) {
            arrayList.add(new com.ss.android.socialbase.downloader.model.c("User-Agent", com.ss.android.socialbase.appdownloader.b.a.f57572a));
        }
        return arrayList;
    }

    public String a(String str, String str2) {
        return (TextUtils.isEmpty(str) || !str.endsWith(".apk") || c.c(str2)) ? str2 : AdBaseConstants.MIME_APK;
    }

    private z a(final com.ss.android.socialbase.appdownloader.c.e eVar) {
        if (eVar == null) {
            return null;
        }
        return new z() { // from class: com.ss.android.socialbase.appdownloader.d.4
            @Override // com.ss.android.socialbase.downloader.depend.z
            public void a(int i2, DownloadInfo downloadInfo, String str, String str2) {
                if (i2 != 1 && i2 != 3) {
                    switch (i2) {
                        case 5:
                        case 6:
                        case 7:
                            break;
                        case 8:
                            eVar.a(i2, downloadInfo.getPackageName(), str, str2);
                            return;
                        case 9:
                            eVar.a(com.ss.android.socialbase.downloader.downloader.c.N(), str);
                            return;
                        case 10:
                            eVar.a(downloadInfo);
                            return;
                        default:
                            return;
                    }
                }
                eVar.a(i2, str, downloadInfo.getStatus(), downloadInfo.getDownloadTime());
            }

            @Override // com.ss.android.socialbase.downloader.depend.z
            public boolean a(boolean z3) {
                return eVar.a(z3);
            }

            @Override // com.ss.android.socialbase.downloader.depend.z
            public String a() {
                return eVar.a();
            }
        };
    }

    public DownloadInfo a(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                DownloadInfo a4 = a(context, str, h());
                if (a4 == null) {
                    a4 = a(context, str, context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS));
                }
                if (a4 == null) {
                    a4 = a(context, str, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
                }
                if (a4 == null) {
                    a4 = a(context, str, context.getFilesDir());
                }
                return (a4 == null && com.ss.android.socialbase.downloader.g.a.c().a("get_download_info_by_list")) ? b(context, str) : a4;
            } catch (Throwable th) {
                com.ss.android.socialbase.downloader.c.a.b(f57596a, String.format("getAppDownloadInfo error:%s", th.getMessage()));
            }
        }
        return null;
    }

    private DownloadInfo a(Context context, String str, File file) {
        if (context == null || TextUtils.isEmpty(str) || file == null) {
            return null;
        }
        return Downloader.getInstance(context).getDownloadInfo(str, file.getAbsolutePath());
    }

    public List<DownloadInfo> a(Context context) {
        return Downloader.getInstance(context).getUnCompletedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK);
    }

    public void a(com.ss.android.socialbase.appdownloader.c.g gVar) {
        this.f57607l = gVar;
    }

    public void a(com.ss.android.socialbase.downloader.downloader.r rVar) {
        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).setReserveWifiStatusListener(rVar);
    }

    public void a(ad adVar) {
        this.f57611p = adVar;
    }

    public void a(ag agVar) {
        this.f57612q = agVar;
    }
}
