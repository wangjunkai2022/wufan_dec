package com.ss.android.downloadlib.addownload.a;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.ss.android.download.api.model.b;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.b.f;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g;
import com.ss.android.downloadlib.g.k;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: AdDownloadDialogManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57072a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static a f57073b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.b.a> f57074c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57075d = false;

    /* renamed from: e  reason: collision with root package name */
    private String f57076e;

    /* renamed from: f  reason: collision with root package name */
    private b f57077f;

    /* compiled from: AdDownloadDialogManager.java */
    /* renamed from: com.ss.android.downloadlib.addownload.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0295a {
        void a();
    }

    private a() {
        b bVar = new b();
        this.f57077f = bVar;
        this.f57074c = bVar.a("sp_ad_install_back_dialog", "key_uninstalled_list");
    }

    public static a a() {
        if (f57073b == null) {
            f57073b = new a();
        }
        return f57073b;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f57076e = "";
        } else if (TextUtils.equals(this.f57076e, str)) {
            this.f57076e = "";
        }
    }

    private boolean a(Activity activity, DownloadInfo downloadInfo, boolean z3, InterfaceC0295a interfaceC0295a) {
        if (downloadInfo == null) {
            try {
                if (this.f57074c.isEmpty()) {
                    return false;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (activity != null && !activity.isFinishing()) {
            boolean z4 = true;
            if (downloadInfo != null && this.f57074c.isEmpty()) {
                a(activity, new com.ss.android.downloadlib.addownload.b.a(downloadInfo.getId(), 0L, 0L, downloadInfo.getPackageName(), downloadInfo.getTitle(), null, downloadInfo.getTargetFilePath()), z3, interfaceC0295a);
                return true;
            }
            long lastModified = downloadInfo != null ? new File(downloadInfo.getTargetFilePath()).lastModified() : 0L;
            CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.b.a> copyOnWriteArrayList = this.f57074c;
            ListIterator<com.ss.android.downloadlib.addownload.b.a> listIterator = copyOnWriteArrayList.listIterator(copyOnWriteArrayList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    z4 = false;
                    break;
                }
                com.ss.android.downloadlib.addownload.b.a previous = listIterator.previous();
                if (previous != null && !l.d(j.getContext(), previous.f57107d) && l.a(previous.f57110g)) {
                    if (new File(previous.f57110g).lastModified() >= lastModified) {
                        a(activity, previous, z3, interfaceC0295a);
                    } else {
                        a(activity, new com.ss.android.downloadlib.addownload.b.a(downloadInfo.getId(), 0L, 0L, downloadInfo.getPackageName(), downloadInfo.getTitle(), null, downloadInfo.getTargetFilePath()), z3, interfaceC0295a);
                    }
                }
            }
            String str = f57072a;
            k.a(str, "tryShowInstallDialog isShow:" + z4, null);
            return z4;
        }
        return false;
    }

    @MainThread
    public boolean a(Activity activity, boolean z3, InterfaceC0295a interfaceC0295a) {
        if (j.i().optInt("disable_install_app_dialog") == 1 || this.f57075d) {
            return false;
        }
        return a(activity, a(activity), z3, interfaceC0295a);
    }

    public void a(Context context, com.ss.android.downloadlib.addownload.b.a aVar, boolean z3, InterfaceC0295a interfaceC0295a) {
        this.f57074c.clear();
        a(context, aVar, interfaceC0295a, z3);
        this.f57075d = true;
        g.a(context).c();
        this.f57077f.b("sp_ad_install_back_dialog", "key_uninstalled_list");
        k.a(f57072a, "tryShowInstallDialog isShow:true", null);
    }

    public DownloadInfo a(Context context) {
        long b4;
        List<DownloadInfo> successedDownloadInfosWithMimeType;
        DownloadInfo downloadInfo = null;
        try {
            b4 = g.a(context).b();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (j.i().optInt("enable_miniapp_dialog", 0) != 0 && (successedDownloadInfosWithMimeType = Downloader.getInstance(context).getSuccessedDownloadInfosWithMimeType(AdBaseConstants.MIME_APK)) != null && !successedDownloadInfosWithMimeType.isEmpty()) {
            long j4 = 0;
            for (DownloadInfo downloadInfo2 : successedDownloadInfosWithMimeType) {
                if (downloadInfo2 != null && !l.d(context, downloadInfo2.getPackageName()) && l.a(downloadInfo2.getTargetFilePath())) {
                    long lastModified = new File(downloadInfo2.getTargetFilePath()).lastModified();
                    if (lastModified >= b4 && downloadInfo2.getExtra() != null) {
                        try {
                            if (new JSONObject(downloadInfo2.getExtra()).has("isMiniApp") && (j4 == 0 || lastModified > j4)) {
                                downloadInfo = downloadInfo2;
                                j4 = lastModified;
                            }
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            }
            return downloadInfo;
        }
        return null;
    }

    public void a(long j4, long j5, long j6, String str, String str2, String str3, String str4) {
        for (int i2 = 0; i2 < this.f57074c.size(); i2++) {
            com.ss.android.downloadlib.addownload.b.a aVar = this.f57074c.get(i2);
            if (aVar != null && aVar.f57105b == j5) {
                this.f57074c.set(i2, new com.ss.android.downloadlib.addownload.b.a(j4, j5, j6, str, str2, str3, str4));
                this.f57077f.a("sp_ad_install_back_dialog", "key_uninstalled_list", this.f57074c);
                return;
            }
        }
        this.f57074c.add(new com.ss.android.downloadlib.addownload.b.a(j4, j5, j6, str, str2, str3, str4));
        this.f57077f.a("sp_ad_install_back_dialog", "key_uninstalled_list", this.f57074c);
    }

    private void a(final Context context, final com.ss.android.downloadlib.addownload.b.a aVar, final InterfaceC0295a interfaceC0295a, boolean z3) {
        final com.ss.android.downloadad.api.a.b d4 = f.a().d(aVar.f57105b);
        if (d4 == null) {
            com.ss.android.downloadlib.e.c.a().a("showBackInstallDialog nativeModel null");
            return;
        }
        com.ss.android.download.api.config.k c4 = j.c();
        b.a a4 = new b.a(context).a(z3 ? "应用安装确认" : "退出确认");
        Object[] objArr = new Object[1];
        objArr[0] = TextUtils.isEmpty(aVar.f57108e) ? "刚刚下载的应用" : aVar.f57108e;
        c4.b(a4.b(String.format("%1$s下载完成，是否立即安装？", objArr)).c("立即安装").d(z3 ? "暂不安装" : String.format("退出%1$s", context.getResources().getString(context.getApplicationContext().getApplicationInfo().labelRes))).a(false).a(l.a(context, aVar.f57110g)).a(new b.InterfaceC0290b() { // from class: com.ss.android.downloadlib.addownload.a.a.1
            @Override // com.ss.android.download.api.model.b.InterfaceC0290b
            public void a(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.d.a.a().b("backdialog_install", d4);
                com.ss.android.socialbase.appdownloader.d.a(context, (int) aVar.f57104a);
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.b.InterfaceC0290b
            public void b(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.d.a.a().b("backdialog_exit", d4);
                InterfaceC0295a interfaceC0295a2 = interfaceC0295a;
                if (interfaceC0295a2 != null) {
                    interfaceC0295a2.a();
                }
                a.this.b("");
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.b.InterfaceC0290b
            public void c(DialogInterface dialogInterface) {
                a.this.b("");
            }
        }).a(1).a());
        com.ss.android.downloadlib.d.a.a().b("backdialog_show", d4);
        this.f57076e = aVar.f57107d;
    }

    public boolean a(String str) {
        return TextUtils.equals(this.f57076e, str);
    }

    public void a(com.ss.android.downloadad.api.a.b bVar) {
        if (j.i().optInt("enable_open_app_dialog", 0) == 1 && !bVar.Z() && bVar.q()) {
            bVar.k(true);
            TTDelegateActivity.a(bVar);
        }
    }
}
