package com.ss.android.downloadlib;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.b;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.h;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.e.b;
import com.ss.android.downloadlib.g.i;
import com.ss.android.downloadlib.g.k;
import com.ss.android.downloadlib.g.l;
import org.json.JSONObject;
/* compiled from: AdWebViewDownloadManagerImpl.java */
/* loaded from: classes4.dex */
public class b implements com.ss.android.downloadad.api.b {

    /* renamed from: a  reason: collision with root package name */
    private static String f57331a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f57332b;

    /* renamed from: c  reason: collision with root package name */
    private g f57333c = g.a(j.getContext());

    private b() {
    }

    public static DownloadEventConfig c() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag("landing_h5_download_ad_button").setClickItemTag("landing_h5_download_ad_button").setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setClickOpenLabel("click_open_detail").setStorageDenyLabel("storage_deny_detail").setDownloadScene(1).setIsEnableClickEvent(false).setIsEnableNoChargeClickEvent(true).setIsEnableV3Event(false).build();
    }

    public Dialog b(Context context, String str, boolean z3, final DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, boolean z4, IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (b(downloadModel.getId())) {
            if (z4) {
                a(downloadModel.getId(), downloadEventConfig, downloadController);
            } else {
                a(downloadModel.getId());
            }
            return null;
        } else if (context == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return null;
        } else {
            this.f57333c.a(context, i2, downloadStatusChangeListener, downloadModel);
            boolean z5 = true;
            final DownloadEventConfig downloadEventConfig2 = (DownloadEventConfig) l.a(downloadEventConfig, c());
            final DownloadController downloadController2 = (DownloadController) l.a(downloadController, b());
            downloadEventConfig2.setDownloadScene(1);
            boolean z6 = (j.i().optInt("disable_lp_dialog", 0) == 1) | z3;
            if (!downloadController2.enableShowComplianceDialog() || !com.ss.android.downloadlib.addownload.compliance.b.a().a(downloadModel)) {
                z5 = z6;
            }
            if (z5) {
                this.f57333c.a(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2, iDownloadButtonClickListener);
                return null;
            }
            String str2 = f57331a;
            k.a(str2, "tryStartDownload show dialog appName:" + downloadModel.getDownloadUrl(), null);
            Dialog b4 = j.c().b(new b.a(context).a(downloadModel.getName()).b("确认要下载此应用吗？").c("确认").d("取消").a(new b.InterfaceC0290b() { // from class: com.ss.android.downloadlib.b.2
                @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                public void a(DialogInterface dialogInterface) {
                    b.this.f57333c.a(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2);
                    com.ss.android.downloadlib.d.a.a().a("landing_download_dialog_confirm", downloadModel, downloadEventConfig2, downloadController2);
                    dialogInterface.dismiss();
                }

                @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                public void b(DialogInterface dialogInterface) {
                    com.ss.android.downloadlib.d.a.a().a("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
                    dialogInterface.dismiss();
                }

                @Override // com.ss.android.download.api.model.b.InterfaceC0290b
                public void c(DialogInterface dialogInterface) {
                    com.ss.android.downloadlib.d.a.a().a("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
                }
            }).a(0).a());
            com.ss.android.downloadlib.d.a.a().a("landing_download_dialog_show", downloadModel, downloadEventConfig2, downloadController2);
            return b4;
        }
    }

    public static b a() {
        if (f57332b == null) {
            synchronized (b.class) {
                if (f57332b == null) {
                    f57332b = new b();
                }
            }
        }
        return f57332b;
    }

    @Override // com.ss.android.downloadad.api.b
    public Dialog a(Context context, String str, boolean z3, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2) {
        return a(context, str, z3, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, false);
    }

    @Override // com.ss.android.downloadad.api.b
    public Dialog a(Context context, String str, boolean z3, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return a(context, str, z3, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, false, iDownloadButtonClickListener);
    }

    public Dialog a(Context context, String str, boolean z3, @NonNull DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i2, boolean z4) {
        return a(context, str, z3, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, z4, null);
    }

    public Dialog a(final Context context, final String str, final boolean z3, @NonNull final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final DownloadStatusChangeListener downloadStatusChangeListener, final int i2, final boolean z4, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return (Dialog) com.ss.android.downloadlib.e.b.a(new b.a<Dialog>() { // from class: com.ss.android.downloadlib.b.1
            @Override // com.ss.android.downloadlib.e.b.a
            /* renamed from: a */
            public Dialog b() {
                return b.this.b(context, str, z3, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i2, z4, iDownloadButtonClickListener);
            }
        });
    }

    @Override // com.ss.android.downloadad.api.b
    public boolean a(Context context, long j4, String str, DownloadStatusChangeListener downloadStatusChangeListener, int i2) {
        com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(j4);
        if (d4 != null) {
            this.f57333c.a(context, i2, downloadStatusChangeListener, d4.af());
            return true;
        }
        DownloadModel a4 = com.ss.android.downloadlib.addownload.b.f.a().a(j4);
        if (a4 != null) {
            this.f57333c.a(context, i2, downloadStatusChangeListener, a4);
            return true;
        }
        return false;
    }

    public void a(long j4, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        DownloadModel a4 = com.ss.android.downloadlib.addownload.b.f.a().a(j4);
        com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(j4);
        if (a4 == null && d4 != null) {
            a4 = d4.af();
        }
        if (a4 == null) {
            return;
        }
        if (downloadEventConfig != null && downloadController != null && !(downloadEventConfig instanceof com.ss.android.download.api.download.c) && !(downloadController instanceof com.ss.android.download.api.download.b)) {
            downloadEventConfig.setDownloadScene(1);
            this.f57333c.a(a4.getDownloadUrl(), j4, 2, downloadEventConfig, downloadController);
            return;
        }
        a(j4);
    }

    public void a(long j4) {
        DownloadModel a4 = com.ss.android.downloadlib.addownload.b.f.a().a(j4);
        com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(j4);
        if (a4 == null && d4 != null) {
            a4 = d4.af();
        }
        if (a4 == null) {
            return;
        }
        DownloadEventConfig b4 = com.ss.android.downloadlib.addownload.b.f.a().b(j4);
        DownloadController c4 = com.ss.android.downloadlib.addownload.b.f.a().c(j4);
        if (b4 instanceof com.ss.android.download.api.download.c) {
            b4 = null;
        }
        if (c4 instanceof com.ss.android.download.api.download.b) {
            c4 = null;
        }
        if (d4 == null) {
            if (b4 == null) {
                b4 = c();
            }
            if (c4 == null) {
                c4 = b();
            }
        } else {
            if (b4 == null) {
                b4 = new AdDownloadEventConfig.Builder().setClickButtonTag(d4.j()).setRefer(d4.i()).setIsEnableV3Event(d4.m()).setIsEnableClickEvent(false).setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setStorageDenyLabel("storage_deny_detail").build();
            }
            if (c4 == null) {
                c4 = d4.ah();
            }
        }
        DownloadEventConfig downloadEventConfig = b4;
        downloadEventConfig.setDownloadScene(1);
        this.f57333c.a(a4.getDownloadUrl(), j4, 2, downloadEventConfig, c4);
    }

    public boolean b(long j4) {
        return (com.ss.android.downloadlib.addownload.b.f.a().a(j4) == null && com.ss.android.downloadlib.addownload.b.f.a().d(j4) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        DownloadController downloadController2 = downloadController;
        if (com.ss.android.download.api.c.a.a(uri) && j.i().optInt("disable_market") != 1) {
            Context context2 = context == null ? j.getContext() : context;
            String b4 = com.ss.android.download.api.c.a.b(uri);
            if (downloadModel == null) {
                return i.a(context2, b4).getType() == 5;
            }
            if (!TextUtils.isEmpty(b4) && (downloadModel instanceof AdDownloadModel)) {
                ((AdDownloadModel) downloadModel).setPackageName(b4);
            }
            if (downloadController2 != null) {
                downloadController2.setDownloadMode(2);
            } else if ((downloadModel instanceof AdDownloadModel) && TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
                ((AdDownloadModel) downloadModel).setDownloadUrl(uri.toString());
                downloadController2 = a(true);
            } else if (downloadModel.getDownloadUrl().startsWith(BaseConstants.SCHEME_MARKET)) {
                downloadController2 = a(true);
            } else {
                downloadController2 = b();
            }
            com.ss.android.downloadlib.addownload.b.e eVar = new com.ss.android.downloadlib.addownload.b.e(downloadModel.getId(), downloadModel, (DownloadEventConfig) l.a(downloadEventConfig, c()), downloadController2);
            com.ss.android.downloadlib.addownload.b.f.a().a(eVar.f57140b);
            com.ss.android.downloadlib.addownload.b.f.a().a(eVar.f57139a, eVar.f57141c);
            com.ss.android.downloadlib.addownload.b.f.a().a(eVar.f57139a, eVar.f57142d);
            if (l.a(downloadModel) && com.ss.android.socialbase.downloader.g.a.c().b("app_link_opt") == 1 && com.ss.android.downloadlib.b.a.a(eVar)) {
                return true;
            }
            JSONObject jSONObject = new JSONObject();
            l.a(jSONObject, "market_url", uri.toString());
            l.a(jSONObject, "download_scene", (Object) 1);
            com.ss.android.downloadlib.d.a.a().b("market_click_open", jSONObject, eVar);
            com.ss.android.downloadlib.addownload.b.g a4 = i.a(context2, eVar, b4);
            String a5 = l.a(a4.b(), "open_market");
            if (a4.getType() == 5) {
                com.ss.android.downloadlib.b.a.a(a5, jSONObject, eVar, true);
                return true;
            } else if (a4.getType() == 6) {
                l.a(jSONObject, "error_code", Integer.valueOf(a4.a()));
                com.ss.android.downloadlib.d.a.a().b("market_open_failed", jSONObject, eVar);
                if (h.a(downloadModel, iDownloadButtonClickListener)) {
                    iDownloadButtonClickListener.handleMarketFailedComplianceDialog();
                }
                return false;
            } else {
                return true;
            }
        }
        return false;
    }

    @Override // com.ss.android.downloadad.api.b
    public boolean a(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return a(context, uri, downloadModel, downloadEventConfig, downloadController, null);
    }

    @Override // com.ss.android.downloadad.api.b
    public boolean a(final Context context, final Uri uri, final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return ((Boolean) com.ss.android.downloadlib.e.b.a(new b.a<Boolean>() { // from class: com.ss.android.downloadlib.b.3
            @Override // com.ss.android.downloadlib.e.b.a
            /* renamed from: a */
            public Boolean b() {
                return Boolean.valueOf(b.this.b(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener));
            }
        })).booleanValue();
    }

    public static DownloadController a(boolean z3) {
        AdDownloadController.Builder shouldUseNewWebView = new AdDownloadController.Builder().setLinkMode(0).setIsEnableBackDialog(true).setIsEnableMultipleDownload(false).setShouldUseNewWebView(false);
        if (z3) {
            shouldUseNewWebView.setDownloadMode(2);
        } else {
            shouldUseNewWebView.setDownloadMode(0);
        }
        return shouldUseNewWebView.build();
    }

    public static DownloadController b() {
        return a(false);
    }
}
