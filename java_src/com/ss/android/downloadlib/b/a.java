package com.ss.android.downloadlib.b;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.g.l;
import org.json.JSONObject;
/* compiled from: AdAppLinkUtils.java */
/* loaded from: classes4.dex */
public class a {
    public static boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar) {
        boolean z3;
        DeepLink deepLink = eVar.f57140b.getDeepLink();
        String openUrl = deepLink == null ? null : deepLink.getOpenUrl();
        JSONObject a4 = com.ss.android.downloadlib.g.f.a(new JSONObject(), eVar);
        l.a(a4, "applink_source", "click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a4, eVar);
        com.ss.android.downloadlib.addownload.b.g a5 = com.ss.android.downloadlib.g.i.a(openUrl, eVar);
        if (a5.getType() == 2) {
            if (!TextUtils.isEmpty(openUrl)) {
                b("by_url", a5, a4, eVar);
            }
            a5 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), eVar.f57140b.getPackageName(), eVar);
        }
        boolean z4 = false;
        if (a(eVar.f57139a) && com.ss.android.downloadlib.addownload.j.i().optInt("link_ad_click_event") == 1) {
            DownloadModel downloadModel = eVar.f57140b;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(4);
            }
            com.ss.android.downloadlib.d.a.a().a(eVar.f57139a, 0);
            z3 = true;
        } else {
            z3 = false;
        }
        int type = a5.getType();
        if (type == 1) {
            b("by_url", a4, eVar);
        } else if (type == 3) {
            a("by_package", a4, eVar);
        } else {
            if (type != 4) {
                com.ss.android.downloadlib.e.c.a().b("AppLinkClick default");
            } else {
                a("by_package", a5, a4, eVar);
            }
            if (z4 && !z3 && ((com.ss.android.downloadlib.d.c.a().b() && !com.ss.android.downloadlib.d.c.a().b(eVar.f57139a, eVar.f57140b.getLogExtra())) || com.ss.android.downloadlib.d.c.a().c())) {
                com.ss.android.downloadlib.d.a.a().a(eVar.f57139a, 2);
            }
            return z4;
        }
        z4 = true;
        if (z4) {
            com.ss.android.downloadlib.d.a.a().a(eVar.f57139a, 2);
        }
        return z4;
    }

    public static void b(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return;
        }
        String f4 = com.ss.android.socialbase.downloader.g.a.c().b("app_link_opt") == 1 ? bVar.f() : null;
        JSONObject a4 = com.ss.android.downloadlib.g.f.a(new JSONObject(), bVar);
        l.a(a4, "applink_source", "dialog_click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a4, bVar);
        com.ss.android.downloadlib.addownload.b.g a5 = com.ss.android.downloadlib.g.i.a(f4, bVar);
        if (a5.getType() == 2) {
            if (!TextUtils.isEmpty(f4)) {
                b("dialog_by_url", a5, a4, bVar);
            }
            a5 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), bVar.e(), bVar);
        }
        int type = a5.getType();
        if (type == 1) {
            b("dialog_by_url", a4, bVar);
        } else if (type == 3) {
            a("dialog_by_package", a4, bVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.e.c.a().b("AppLinkClickDialog default");
        } else {
            a("dialog_by_package", a5, a4, bVar);
        }
    }

    public static void b(String str, @NonNull final JSONObject jSONObject, @NonNull final com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_url_open", jSONObject, aVar);
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1721882089:
                if (str.equals("auto_by_url")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1374618233:
                if (str.equals("by_url")) {
                    c4 = 1;
                    break;
                }
                break;
            case -129544387:
                if (str.equals("notify_by_url")) {
                    c4 = 2;
                    break;
                }
                break;
            case 829750366:
                if (str.equals("dialog_by_url")) {
                    c4 = 3;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
            case 1:
            case 2:
            case 3:
                if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 1) != 0) {
                    l.a(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    e.a().a(new d() { // from class: com.ss.android.downloadlib.b.a.2
                        @Override // com.ss.android.downloadlib.b.d
                        public void a(boolean z3) {
                            com.ss.android.downloadlib.d.a.a().b(z3 ? "deeplink_success" : "deeplink_failed", jSONObject, aVar);
                            if (z3) {
                                com.ss.android.downloadlib.addownload.j.t().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), 0);
                            }
                        }
                    });
                    return;
                }
                com.ss.android.downloadlib.addownload.j.b().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), str);
                return;
            default:
                return;
        }
    }

    public static void a(@NonNull com.ss.android.downloadad.api.a.b bVar) {
        String f4 = bVar.f();
        JSONObject a4 = com.ss.android.downloadlib.g.f.a(new JSONObject(), bVar);
        l.a(a4, "applink_source", "notify_click_by_sdk");
        com.ss.android.downloadlib.d.a.a().b("applink_click", a4, bVar);
        com.ss.android.downloadlib.addownload.b.g a5 = com.ss.android.downloadlib.g.i.a(f4, bVar);
        if (a5.getType() == 2) {
            if (!TextUtils.isEmpty(f4)) {
                b("notify_by_url", a5, a4, bVar);
            }
            a5 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), bVar.e(), bVar);
        }
        int type = a5.getType();
        if (type == 1) {
            b("notify_by_url", a4, bVar);
        } else if (type == 3) {
            a("notify_by_package", a4, bVar);
        } else if (type != 4) {
            com.ss.android.downloadlib.e.c.a().b("AppLinkClickNotification default");
        } else {
            a("notify_by_package", a5, a4, bVar);
        }
    }

    public static void b(String str, @NonNull com.ss.android.downloadlib.addownload.b.g gVar, @NonNull JSONObject jSONObject, @NonNull com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_url_open_fail", jSONObject, aVar);
    }

    public static boolean a(String str, @NonNull com.ss.android.downloadad.api.a.b bVar) {
        if (com.ss.android.downloadlib.addownload.h.b(bVar.O())) {
            if (TextUtils.isEmpty(bVar.f()) && TextUtils.isEmpty(str)) {
                return false;
            }
            com.ss.android.socialbase.downloader.notification.b.a().f(bVar.s());
            JSONObject jSONObject = new JSONObject();
            com.ss.android.downloadlib.g.f.a(jSONObject, bVar);
            l.a(jSONObject, "applink_source", "auto_click");
            com.ss.android.downloadlib.d.a.a().b("applink_click", bVar);
            com.ss.android.downloadlib.addownload.b.g a4 = com.ss.android.downloadlib.g.i.a(bVar, bVar.f(), bVar.e());
            int type = a4.getType();
            if (type == 1) {
                b("auto_by_url", jSONObject, bVar);
                return true;
            } else if (type == 2) {
                b("auto_by_url", a4, jSONObject, bVar);
                return false;
            } else if (type == 3) {
                a("auto_by_package", jSONObject, bVar);
                return true;
            } else if (type != 4) {
                return false;
            } else {
                a("auto_by_package", a4, jSONObject, bVar);
                return false;
            }
        }
        return false;
    }

    public static void a(String str, @NonNull final JSONObject jSONObject, @NonNull final com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_app_open", jSONObject, aVar);
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1282070764:
                if (str.equals("notify_by_package")) {
                    c4 = 0;
                    break;
                }
                break;
            case -441514770:
                if (str.equals("auto_by_package")) {
                    c4 = 1;
                    break;
                }
                break;
            case -185950114:
                if (str.equals("by_package")) {
                    c4 = 2;
                    break;
                }
                break;
            case 368401333:
                if (str.equals("dialog_by_package")) {
                    c4 = 3;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
            case 1:
            case 2:
            case 3:
                if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 1) != 0) {
                    l.a(jSONObject, "check_applink_result_by_sdk", (Object) 1);
                    e.a().a(new d() { // from class: com.ss.android.downloadlib.b.a.1
                        @Override // com.ss.android.downloadlib.b.d
                        public void a(boolean z3) {
                            com.ss.android.downloadlib.d.a.a().b(z3 ? "deeplink_success" : "deeplink_failed", jSONObject, aVar);
                            if (z3) {
                                com.ss.android.downloadlib.addownload.j.t().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), 0);
                            }
                        }
                    });
                    return;
                }
                com.ss.android.downloadlib.addownload.j.b().a(com.ss.android.downloadlib.addownload.j.getContext(), aVar.u(), aVar.w(), aVar.v(), aVar.e(), str);
                return;
            default:
                return;
        }
    }

    public static void a(String str, @NonNull com.ss.android.downloadlib.addownload.b.g gVar, @NonNull JSONObject jSONObject, @NonNull com.ss.android.downloadad.api.a.a aVar) {
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
        l.a(jSONObject, "download_scene", Integer.valueOf(aVar.t()));
        com.ss.android.downloadlib.d.a.a().b("deeplink_app_open_fail", jSONObject, aVar);
    }

    public static boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar, int i2) {
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
        com.ss.android.downloadlib.d.a.a().b("market_click_open", jSONObject, eVar);
        com.ss.android.downloadlib.addownload.b.g a4 = com.ss.android.downloadlib.g.i.a(com.ss.android.downloadlib.addownload.j.getContext(), eVar, eVar.f57140b.getPackageName());
        String a5 = l.a(a4.b(), "open_market");
        int type = a4.getType();
        if (type == 5) {
            a(a5, jSONObject, eVar, true);
        } else if (type == 6) {
            l.a(jSONObject, "error_code", Integer.valueOf(a4.a()));
            l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
            com.ss.android.downloadlib.d.a.a().b("market_open_failed", jSONObject, eVar);
            return false;
        } else if (type != 7) {
            return false;
        }
        com.ss.android.downloadlib.d.a.a().a(eVar.f57139a, i2);
        return true;
    }

    public static void a(final String str, @Nullable final JSONObject jSONObject, final com.ss.android.downloadlib.addownload.b.e eVar, boolean z3) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception e4) {
                com.ss.android.downloadlib.e.c.a().a(e4, "onMarketSuccess");
                return;
            }
        }
        l.a(jSONObject, "applink_source", str);
        l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
        if (z3) {
            com.ss.android.downloadlib.d.a.a().b("market_open_success", jSONObject, eVar);
        }
        if ((com.ss.android.downloadlib.addownload.j.i().optInt("check_applink_mode") & 4) != 0) {
            e.a().b(new d() { // from class: com.ss.android.downloadlib.b.a.3
                @Override // com.ss.android.downloadlib.b.d
                public void a(boolean z4) {
                    if (!z4 && !"open_market".equals(str)) {
                        Context context = com.ss.android.downloadlib.addownload.j.getContext();
                        a.a(com.ss.android.downloadlib.g.i.a(context, Uri.parse(BaseConstants.MARKET_PREFIX + eVar.e())), eVar, false);
                    }
                    com.ss.android.downloadlib.d.a.a().a(z4 ? "market_delay_success" : "market_delay_failed", jSONObject, eVar);
                    if (z4) {
                        r t3 = com.ss.android.downloadlib.addownload.j.t();
                        Context context2 = com.ss.android.downloadlib.addownload.j.getContext();
                        com.ss.android.downloadlib.addownload.b.e eVar2 = eVar;
                        DownloadModel downloadModel = eVar2.f57140b;
                        t3.a(context2, downloadModel, eVar2.f57142d, eVar2.f57141c, downloadModel.getPackageName(), 2);
                    }
                }
            });
        } else {
            com.ss.android.download.api.config.c b4 = com.ss.android.downloadlib.addownload.j.b();
            Context context = com.ss.android.downloadlib.addownload.j.getContext();
            DownloadModel downloadModel = eVar.f57140b;
            b4.a(context, downloadModel, eVar.f57142d, eVar.f57141c, downloadModel.getPackageName(), str);
        }
        com.ss.android.downloadad.api.a.b bVar = new com.ss.android.downloadad.api.a.b(eVar.f57140b, eVar.f57141c, eVar.f57142d);
        bVar.e(2);
        bVar.f(System.currentTimeMillis());
        bVar.h(4);
        bVar.i(2);
        com.ss.android.downloadlib.addownload.b.f.a().a(bVar);
    }

    public static void a(com.ss.android.downloadlib.addownload.b.g gVar, com.ss.android.downloadlib.addownload.b.e eVar, boolean z3) {
        String a4 = l.a(gVar.b(), "open_market");
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "ttdownloader_type", "backup");
        int type = gVar.getType();
        if (type == 5) {
            a(a4, jSONObject, eVar, z3);
        } else if (type != 6) {
        } else {
            l.a(jSONObject, "error_code", Integer.valueOf(gVar.a()));
            l.a(jSONObject, "download_scene", Integer.valueOf(eVar.t()));
            com.ss.android.downloadlib.d.a.a().b("market_open_failed", jSONObject, eVar);
        }
    }

    public static boolean a(long j4) {
        return com.ss.android.downloadlib.addownload.b.f.a().d(j4) == null;
    }
}
