package com.wufun.union.ad;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.wufun.union.ad.AdChannel;
/* compiled from: AdCallback.java */
/* loaded from: classes3.dex */
public class a implements AdChannel.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f62280a;

    /* renamed from: b  reason: collision with root package name */
    private AdChannel f62281b;

    /* renamed from: c  reason: collision with root package name */
    private Messenger f62282c;

    public a(Context context, AdChannel adChannel) {
        this.f62280a = context;
        this.f62281b = adChannel;
    }

    @Override // com.wufun.union.ad.AdChannel.a
    public void a(int i2, String str) {
        AdChannel adChannel = this.f62281b;
        if (adChannel != null) {
            AdChannel.Type type = adChannel.f62264c;
            if (type == AdChannel.Type.TT) {
                if (i2 == 6) {
                    c(adChannel.c());
                    this.f62281b.k(0);
                }
            } else if (type == AdChannel.Type.GDT && i2 == 6) {
                c(adChannel.c());
                this.f62281b.k(0);
            }
        }
        if (this.f62282c == null) {
            return;
        }
        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putString("action", "onAdChannelCallback");
        bundle.putInt(NotificationCompat.CATEGORY_EVENT, i2);
        bundle.putString("message", str);
        message.setData(bundle);
        message.what = 0;
        try {
            this.f62282c.send(message);
        } catch (RemoteException e4) {
            e4.printStackTrace();
        }
    }

    public Messenger b() {
        return this.f62282c;
    }

    void c(String str) {
        if (TextUtils.isEmpty(str) || this.f62280a == null) {
            return;
        }
        Intent intent = new Intent(this.f62280a.getPackageName() + ".action.commonService");
        intent.setPackage(this.f62280a.getPackageName());
        intent.putExtra("action", "launchVGame");
        intent.putExtra("packageName", str);
        this.f62280a.startService(intent);
    }

    public void d(Messenger messenger) {
        this.f62282c = messenger;
    }
}
