package com.join.mgps.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.Util.e1;
/* loaded from: classes3.dex */
public class NetBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public a f44783a = null;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i2);
    }

    public void a(a aVar) {
        this.f44783a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                int b4 = e1.b(context);
                a aVar = this.f44783a;
                if (aVar != null) {
                    aVar.a(b4);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
