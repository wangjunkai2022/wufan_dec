package com.qq.e.ads.hybrid;

import android.content.Context;
import com.qq.e.ads.AbstractAD;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.pi.HADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class HybridAD extends AbstractAD<HADI> implements HADI {

    /* renamed from: f  reason: collision with root package name */
    private HybridADListener f56317f;

    /* renamed from: g  reason: collision with root package name */
    private CountDownLatch f56318g = new CountDownLatch(1);

    /* renamed from: h  reason: collision with root package name */
    private HybridADSetting f56319h;

    public HybridAD(Context context, HybridADSetting hybridADSetting, HybridADListener hybridADListener) {
        this.f56319h = hybridADSetting;
        this.f56317f = hybridADListener;
        a(context, "NO_POS_ID");
    }

    protected HADI a(POFactory pOFactory) {
        return pOFactory.getHybridAD(this.f56319h, this.f56317f);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected /* bridge */ /* synthetic */ HADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return a(pOFactory);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected /* bridge */ /* synthetic */ void a(HADI hadi) {
        c();
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        HybridADListener hybridADListener = this.f56317f;
        if (hybridADListener != null) {
            hybridADListener.onError(AdErrorConvertor.formatErrorCode(i2));
        }
        this.f56318g.countDown();
    }

    protected void c() {
        this.f56318g.countDown();
    }

    @Override // com.qq.e.comm.pi.HADI
    public void loadUrl(final String str) {
        if (a()) {
            if (!b()) {
                new Thread(new Runnable() { // from class: com.qq.e.ads.hybrid.HybridAD.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HybridAD.this.f56318g.await(30L, TimeUnit.SECONDS);
                            if (!HybridAD.this.b() || ((AbstractAD) HybridAD.this).f56259a == null) {
                                GDTLogger.e("初始化错误：广告实例未被初始化");
                                HybridAD.this.a((int) ErrorCode.INIT_ERROR);
                            } else {
                                ((HADI) ((AbstractAD) HybridAD.this).f56259a).loadUrl(str);
                            }
                        } catch (InterruptedException unused) {
                            GDTLogger.e("初始化错误：广告实例未被初始化");
                            HybridAD.this.a((int) ErrorCode.INIT_ERROR);
                        }
                    }
                }).start();
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((HADI) t3).loadUrl(str);
            } else {
                a("loadUrl");
            }
        }
    }
}
