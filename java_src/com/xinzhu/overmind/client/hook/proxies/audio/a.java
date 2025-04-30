package com.xinzhu.overmind.client.hook.proxies.audio;

import com.xinzhu.haunted.android.media.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.common.e;
/* compiled from: AudioManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {
    public a() {
        super(q.h("audio"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0378a.a(q.h("audio"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("audio");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("adjustSuggestedStreamVolume", d.f64084f, d.f64083e));
        d(new d("adjustStreamVolume", d.f64084f, d.f64083e));
        d(new d("setStreamVolume", d.f64084f, d.f64083e));
        d(new d("handleVolumeKey", d.f64084f, d.f64083e));
        d(new d("setMasterMute", d.f64084f, d.f64085g));
        d(new d("setVolumeIndexForAttributes", d.f64084f, d.f64083e));
        d(new d("setMicrophoneMute", d.f64084f, d.f64085g));
        d(new d("setMode", d.f64084f, d.f64083e));
        d(new d("requestAudioFocus", d.f64084f, d.f64083e));
        d(new d("abandonAudioFocus", d.f64084f, d.f64083e));
        d(new d("disableSafeMediaVolume", d.f64084f, d.f64083e));
        d(new e("setUidDeviceAffinity", 1));
        d(new e("removeUidDeviceAffinity", 1));
        d(new d("setUserIdDeviceAffinity", d.f64083e, 1));
        d(new d("removeUserIdDeviceAffinity", d.f64083e, 1));
    }
}
