package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Parcelable;
import com.join.mgps.socket.entity.b;
import org.greenrobot.eventbus.c;
/* loaded from: classes4.dex */
public class NetWorkConnectedReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f51459a = NetWorkConnectedReceiver.class.getSimpleName();

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51460a;

        static {
            int[] iArr = new int[NetworkInfo.State.values().length];
            f51460a = iArr;
            try {
                iArr[NetworkInfo.State.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51460a[NetworkInfo.State.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51460a[NetworkInfo.State.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51460a[NetworkInfo.State.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51460a[NetworkInfo.State.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f51460a[NetworkInfo.State.SUSPENDED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Parcelable parcelableExtra;
        String action = intent.getAction();
        if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
            intent.getIntExtra("wifi_state", 0);
        }
        if (!"android.net.wifi.STATE_CHANGE".equals(action) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
            return;
        }
        if (a.f51460a[((NetworkInfo) parcelableExtra).getState().ordinal()] != 4) {
            return;
        }
        c.f().o(b.f52088h);
    }
}
