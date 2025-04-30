package com.wufun.union.ad;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.view.View;
import android.view.WindowInsets;
/* loaded from: classes3.dex */
public class AdStubActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private m2.a f62275a;

    /* renamed from: b  reason: collision with root package name */
    private View f62276b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f62277c;

    /* renamed from: d  reason: collision with root package name */
    private ServiceConnection f62278d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                AdStubActivity.this.finish();
                return;
            }
            Messenger messenger = new Messenger(iBinder);
            Message message = new Message();
            message.what = 3;
            AdStubActivity adStubActivity = AdStubActivity.this;
            message.obj = adStubActivity;
            message.setData(adStubActivity.f62277c);
            try {
                messenger.send(message);
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    void b() {
        ServiceConnection serviceConnection = this.f62278d;
        if (serviceConnection == null) {
            return;
        }
        unbindService(serviceConnection);
    }

    void bindService() {
        this.f62278d = new a();
        Intent intent = new Intent("com.wufun.union.ad.action.AdService");
        intent.setPackage(getPackageName());
        bindService(intent, this.f62278d, 1);
    }

    void c() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f62276b.getWindowInsetsController().hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
        } else {
            this.f62276b.setSystemUiVisibility(4871);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m2.a c4 = m2.a.c(getLayoutInflater());
        this.f62275a = c4;
        setContentView(c4.getRoot());
        this.f62276b = this.f62275a.f72589b;
        c();
        if (getIntent() != null && getIntent().getExtras() != null) {
            this.f62277c = getIntent().getExtras();
            bindService();
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        b();
    }
}
