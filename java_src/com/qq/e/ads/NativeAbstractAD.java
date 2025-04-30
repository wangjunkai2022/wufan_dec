package com.qq.e.ads;

import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.pi.ADI;
import com.qq.e.comm.util.AdError;
/* loaded from: classes4.dex */
public abstract class NativeAbstractAD<T extends ADI> extends AbstractAD<T> {

    /* renamed from: f  reason: collision with root package name */
    private DownAPPConfirmPolicy f56274f;

    /* loaded from: classes4.dex */
    public interface BasicADListener {
        void onNoAD(AdError adError);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(T t3) {
        DownAPPConfirmPolicy downAPPConfirmPolicy = this.f56274f;
        if (downAPPConfirmPolicy != null) {
            setDownAPPConfirmPolicy(downAPPConfirmPolicy);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qq.e.ads.AbstractAD
    protected /* bridge */ /* synthetic */ void a(Object obj) {
        a((NativeAbstractAD<T>) ((ADI) obj));
    }

    public void setDownAPPConfirmPolicy(DownAPPConfirmPolicy downAPPConfirmPolicy) {
        this.f56274f = downAPPConfirmPolicy;
        T t3 = this.f56259a;
        if (t3 == 0 || downAPPConfirmPolicy == null) {
            return;
        }
        ((ADI) t3).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
    }
}
