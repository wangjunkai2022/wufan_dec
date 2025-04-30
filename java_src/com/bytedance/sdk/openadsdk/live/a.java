package com.bytedance.sdk.openadsdk.live;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveRoomService;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
/* compiled from: TTLiveSDKPluginHelper.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static SharedPreferences f10661a;

    public static boolean a(final Context context, final String str, final ILiveHostContextParam.Builder builder, final ILiveInitCallback iLiveInitCallback) {
        try {
            com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.live.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LivePluginHelper.initLivePlugin((Application) context, str, builder, iLiveInitCallback);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void b(long j4) {
        if (f10661a == null) {
            f10661a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        try {
            SharedPreferences sharedPreferences = f10661a;
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putInt("live_init_" + j4, 0);
                edit.commit();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean c(long j4) {
        int i2;
        if (f10661a == null) {
            f10661a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        SharedPreferences sharedPreferences = f10661a;
        if (sharedPreferences != null) {
            i2 = sharedPreferences.getInt("live_init_" + j4, 0);
        } else {
            i2 = 0;
        }
        return i2 < 5;
    }

    public static void d(long j4) {
        try {
            Zeus.unInstallPlugin("com.byted.live.lite");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        b(j4);
    }

    public static boolean a() {
        try {
            com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.live.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LivePluginHelper.initLiveCommerce();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, Bundle bundle) {
        if (context != null && bundle != null && bundle.containsKey(TTLiveConstants.ROOMID_KEY)) {
            long j4 = bundle.getLong(TTLiveConstants.ROOMID_KEY);
            try {
                IOuterLiveRoomService liveRoomService = LivePluginHelper.getLiveRoomService();
                if (liveRoomService != null) {
                    liveRoomService.enterLiveRoom(context, j4, bundle);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static void a(long j4) {
        if (f10661a == null) {
            f10661a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        try {
            SharedPreferences sharedPreferences = f10661a;
            if (sharedPreferences != null) {
                int i2 = sharedPreferences.getInt("live_init_" + j4, 0);
                SharedPreferences.Editor edit = f10661a.edit();
                edit.putInt("live_init_" + j4, i2 + 1);
                edit.commit();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
