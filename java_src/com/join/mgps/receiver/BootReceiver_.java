package com.join.mgps.receiver;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes4.dex */
public final class BootReceiver_ extends BootReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f51451a = "android.intent.action.PACKAGE_ADDED";

    /* renamed from: b  reason: collision with root package name */
    public static final String f51452b = "android.intent.action.PACKAGE_REMOVED";

    /* renamed from: c  reason: collision with root package name */
    public static final String f51453c = "android.intent.action.PACKAGE_FULLY_REMOVED";

    /* renamed from: d  reason: collision with root package name */
    public static final String f51454d = "android.intent.action.PACKAGE_REPLACED";

    /* renamed from: e  reason: collision with root package name */
    public static final String f51455e = "android.intent.action.INSTALL_FAILURE";

    /* renamed from: f  reason: collision with root package name */
    public static final String f51456f = "android.intent.action.DOWNLOAD_COMPLETE";

    private void g(Context context) {
    }

    @Override // com.join.mgps.receiver.BootReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        g(context);
        super.onReceive(context, intent);
        String action = intent.getAction();
        if (f51451a.equals(action)) {
            a(context, intent);
        } else if (f51452b.equals(action)) {
            e(context, intent);
        } else if (f51453c.equals(action)) {
            f(context, intent);
        } else if (f51454d.equals(action)) {
            d(context, intent);
        } else if (f51455e.equals(action)) {
            b(context, intent);
        } else if (f51456f.equals(action)) {
            c(context, intent);
        }
    }
}
