package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.a;
import com.join.android.app.common.utils.APKUtils;
import com.join.mgps.Util.a0;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.MyGameManagerActivity_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import g1.f;
/* loaded from: classes4.dex */
public class NotifcationReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f51461a = "_task_id";

    /* renamed from: b  reason: collision with root package name */
    public static final String f51462b = "_game_down_status";

    private void a(Context context) {
        Intent intent = new Intent(context, MGMainActivity_.class);
        intent.setFlags(335544320);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 2);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    private void b(Intent intent) {
        String stringExtra = intent.getStringExtra(f51461a);
        DownloadTask f4 = a.e().f(stringExtra);
        if (f4 == null) {
            f4 = f.G().B(stringExtra);
        }
        if (f4 != null) {
            f4.setHasDeleteNotify(true);
        }
    }

    private boolean c(Intent intent) {
        return APKUtils.E(f.G().B(intent.getStringExtra(f51461a)));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (f1.a.f65493o0.equals(intent.getAction())) {
            b(intent);
        } else if (f1.a.f65495p0.equals(intent.getAction())) {
            if (MApplication.f9240y0) {
                a(context);
            } else if (MApplication.f9223q.getActivity() != null) {
                a0.c0(context).G();
                Bundle extras = intent.getExtras();
                Intent intent2 = new Intent(context, ModGameIndexActivity_.class);
                intent2.putExtras(extras);
                intent2.setFlags(536870912);
                context.startActivity(intent2);
            } else {
                a(context);
            }
            p.l(context).K1(Event.onclickNotbarDownloaded, new Ext().setGameFlag(c(intent) ? 1 : 0));
        } else if (f1.a.f65497q0.equals(intent.getAction())) {
            if (MApplication.f9240y0) {
                a(context);
            } else if (MApplication.f9223q.getActivity() != null) {
                Intent intent3 = new Intent(MApplication.f9223q.getActivity(), MyGameManagerActivity_.class);
                intent3.setFlags(536870912);
                MApplication.f9223q.getActivity().startActivity(intent3);
            } else {
                a(context);
            }
            if (intent.getIntExtra(f51462b, 0) == 1) {
                p.l(context).K1(Event.onclickNotbarDownloaded, new Ext().setGameFlag(c(intent) ? 1 : 0));
            } else {
                p.l(context).K1(Event.onclickNotbarDownloading, new Ext().setGameFlag(c(intent) ? 1 : 0));
            }
        }
    }
}
