package com.bytedance.sdk.openadsdk.downloadnew;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTDownloadVisitorBridge.java */
/* loaded from: classes2.dex */
public class e extends a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile e f10659a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f10660b;

    private e(Context context) {
        this.f10660b = context;
    }

    public static e a(Context context) {
        if (f10659a == null) {
            synchronized (e.class) {
                if (f10659a == null) {
                    f10659a = new e(context);
                }
            }
        }
        return f10659a;
    }

    private static boolean a(IDownloadButtonClickListener iDownloadButtonClickListener) {
        return iDownloadButtonClickListener != null;
    }

    private DownloadModel b(Object obj) {
        if (obj instanceof DownloadModel) {
            return (DownloadModel) obj;
        }
        return null;
    }

    private DownloadEventConfig c(Object obj) {
        if (obj instanceof DownloadEventConfig) {
            return (DownloadEventConfig) obj;
        }
        return null;
    }

    private DownloadController d(Object obj) {
        if (obj instanceof DownloadController) {
            return (DownloadController) obj;
        }
        return null;
    }

    private ExitInstallListener e(Object obj) {
        if (obj instanceof ExitInstallListener) {
            return (ExitInstallListener) obj;
        }
        return null;
    }

    private OnItemClickListener f(Object obj) {
        if (obj instanceof OnItemClickListener) {
            return (OnItemClickListener) obj;
        }
        return null;
    }

    private IDownloadButtonClickListener g(Object obj) {
        if (obj instanceof IDownloadButtonClickListener) {
            return (IDownloadButtonClickListener) obj;
        }
        return null;
    }

    private Activity getActivity(Object obj) {
        if (obj instanceof Activity) {
            return (Activity) obj;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T callMethod(Class<T> cls, int i2, Map<String, Object> map) {
        switch (i2) {
            case 0:
                return (T) Boolean.valueOf(d.a(getActivity(map.get(TTDownloadField.TT_ACTIVITY)), e(map.get(TTDownloadField.TT_EXIT_INSTALL_LISTENER))));
            case 1:
                return (T) d.a().f();
            case 2:
                try {
                    return (T) Boolean.valueOf(d.a((String) map.get(TTDownloadField.TT_TAG_INTERCEPT), (String) map.get("label"), new JSONObject((String) map.get(TTDownloadField.TT_META)), new HashMap()));
                } catch (JSONException unused) {
                    return (T) Boolean.FALSE;
                }
            case 3:
                d.a(((Integer) map.get(TTDownloadField.TT_HID)).intValue());
                return null;
            case 4:
                int intValue = ((Integer) map.get(TTDownloadField.TT_HASHCODE)).intValue();
                d.a().a((String) map.get(TTDownloadField.TT_DOWNLOAD_URL), intValue);
                return null;
            case 5:
                int intValue2 = ((Integer) map.get(TTDownloadField.TT_HASHCODE)).intValue();
                DownloadModel b4 = b(map.get(TTDownloadField.TT_DOWNLOAD_MODEL));
                d.a().a(this.f10660b, intValue2, a(map.get(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER)), b4);
                return null;
            case 6:
                return (T) Boolean.valueOf(d.a(this.f10660b, (String) map.get(TTDownloadField.TT_DOWNLOAD_URL)));
            case 7:
                d.b();
                return null;
            case 8:
                boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_FORCE)).booleanValue();
                d.a().a((String) map.get(TTDownloadField.TT_DOWNLOAD_URL), booleanValue);
                return null;
            case 9:
                d.a(((Integer) map.get("id")).intValue(), (ITTDownloadAdapter.OnEventLogHandler) map.get(TTDownloadField.TT_ONEVENT_LOG_HANDLER));
                return null;
            case 10:
                d.a((String) map.get(TTDownloadField.TT_DOWNLOAD_PATH));
                return null;
            case 11:
            default:
                return (T) super.callMethod(cls, i2, map);
            case 12:
                Uri uri = (Uri) map.get("uri");
                DownloadModel b5 = b(map.get(TTDownloadField.TT_DOWNLOAD_MODEL));
                DownloadEventConfig c4 = c(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                DownloadController d4 = d(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                IDownloadButtonClickListener g4 = g(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER));
                if (a(g4)) {
                    return (T) Boolean.valueOf(d.a(this.f10660b, uri, b5, c4, d4, g4));
                }
                return (T) Boolean.valueOf(d.a(this.f10660b, uri, b5, c4, d4));
            case 13:
                int intValue3 = ((Integer) map.get(TTDownloadField.TT_HASHCODE)).intValue();
                boolean booleanValue2 = ((Boolean) map.get(TTDownloadField.TT_IS_DISABLE_DIALOG)).booleanValue();
                String str = (String) map.get(TTDownloadField.TT_USERAGENT);
                DownloadModel b6 = b(map.get(TTDownloadField.TT_DOWNLOAD_MODEL));
                DownloadEventConfig c5 = c(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                DownloadController d5 = d(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                DownloadStatusChangeListener a4 = a(map.get(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER));
                IDownloadButtonClickListener g5 = g(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER));
                if (a(g5)) {
                    d.a().e().a(this.f10660b, str, booleanValue2, b6, c5, d5, a4, intValue3, g5);
                    return null;
                }
                d.a().e().a(this.f10660b, str, booleanValue2, b6, c5, d5, a4, intValue3);
                return null;
            case 14:
                int intValue4 = ((Integer) map.get(TTDownloadField.TT_HASHCODE)).intValue();
                return (T) Boolean.valueOf(d.a().e().a(this.f10660b, ((Long) map.get("id")).longValue(), (String) map.get(TTDownloadField.TT_LOG_EXTRA), (DownloadStatusChangeListener) null, intValue4));
            case 15:
                return (T) Boolean.valueOf(d.a((Uri) map.get("uri")));
            case 16:
                d.a().a((String) map.get(TTDownloadField.TT_DOWNLOAD_URL), ((Long) map.get("id")).longValue(), ((Integer) map.get(TTDownloadField.TT_ACTION_TYPE_BUTTON)).intValue(), c(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG)), d(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER)));
                return null;
            case 17:
                d.a().a((String) map.get(TTDownloadField.TT_DOWNLOAD_URL), ((Long) map.get("id")).longValue(), ((Integer) map.get(TTDownloadField.TT_ACTION_TYPE_BUTTON)).intValue(), c(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG)), d(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER)), f(map.get(TTDownloadField.TT_ITEM_CLICK_LISTENER)), g(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER)));
                return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls, int i2, Map<String, Object> map) {
        if (i2 != 0) {
            if (i2 != 1) {
                return (T) super.getObj(cls);
            }
            return (T) Boolean.valueOf(d.f10641b);
        }
        return (T) d.f10640a;
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public void init(Bundle bundle) {
        super.init(bundle);
        d.a(this.f10660b);
    }

    private DownloadStatusChangeListener a(Object obj) {
        if (obj instanceof DownloadStatusChangeListener) {
            return (DownloadStatusChangeListener) obj;
        }
        return null;
    }
}
