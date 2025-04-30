package com.join.mgps.receiver;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.Util.d2;
import f1.a;
import org.androidannotations.annotations.EReceiver;
import org.androidannotations.annotations.ReceiverAction;
@EReceiver
/* loaded from: classes4.dex */
public class BootReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51451a})
    public void a(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (d2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(a.f65492o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f51451a);
            context.sendBroadcast(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51455e})
    public void b(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (d2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(a.f65492o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f51454d);
            context.sendBroadcast(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51456f})
    public void c(Context context, Intent intent) {
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        if (context.getSharedPreferences("downloadplato", 0).getLong("plato", 0L) == longExtra) {
            com.join.android.app.common.utils.a.g0(context).w(context, ((DownloadManager) context.getSystemService("download")).getUriForDownloadedFile(longExtra));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51454d})
    public void d(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (d2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(a.f65492o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f51454d);
            context.sendBroadcast(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51452b})
    public void e(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (d2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(a.f65492o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f51452b);
            context.sendBroadcast(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ReceiverAction(actions = {BootReceiver_.f51453c})
    public void f(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (d2.i(schemeSpecificPart)) {
            Intent intent2 = new Intent();
            intent2.setAction(a.f65492o);
            intent2.putExtra("packageName", schemeSpecificPart);
            intent2.putExtra("actionFrom", BootReceiver_.f51453c);
            context.sendBroadcast(intent2);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }
}
