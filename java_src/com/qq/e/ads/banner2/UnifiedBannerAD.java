package com.qq.e.ads.banner2;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UBVI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class UnifiedBannerAD extends LiteAbstractAD<UBVI> implements NFBI {

    /* renamed from: g  reason: collision with root package name */
    private UnifiedBannerADListener f56277g;

    /* renamed from: h  reason: collision with root package name */
    private DownAPPConfirmPolicy f56278h;

    /* renamed from: i  reason: collision with root package name */
    private AtomicInteger f56279i;

    /* renamed from: j  reason: collision with root package name */
    private int f56280j;

    /* renamed from: k  reason: collision with root package name */
    private LoadAdParams f56281k;

    /* renamed from: l  reason: collision with root package name */
    private UnifiedBannerView f56282l;

    /* renamed from: m  reason: collision with root package name */
    private final ADListenerAdapter f56283m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnifiedBannerAD(Activity activity, UnifiedBannerView unifiedBannerView, String str, String str2, UnifiedBannerADListener unifiedBannerADListener) {
        this(unifiedBannerView, unifiedBannerADListener);
        a(activity, str, str2);
    }

    private UnifiedBannerAD(UnifiedBannerView unifiedBannerView, UnifiedBannerADListener unifiedBannerADListener) {
        this.f56279i = new AtomicInteger(0);
        this.f56280j = 30;
        this.f56281k = null;
        this.f56277g = unifiedBannerADListener;
        this.f56282l = unifiedBannerView;
        this.f56283m = new ADListenerAdapter(unifiedBannerADListener);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedBannerViewDelegate(this.f56282l, (Activity) context, str, str2, str3, this.f56283m);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected /* bridge */ /* synthetic */ void a(Object obj) {
        UBVI ubvi = (UBVI) obj;
        c();
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        UnifiedBannerADListener unifiedBannerADListener = this.f56277g;
        if (unifiedBannerADListener != null) {
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    protected void c() {
        DownAPPConfirmPolicy downAPPConfirmPolicy = this.f56278h;
        if (downAPPConfirmPolicy != null) {
            this.f56278h = downAPPConfirmPolicy;
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((UBVI) t3).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
            }
        }
        int i2 = this.f56280j;
        this.f56280j = i2;
        T t4 = this.f56259a;
        if (t4 != 0) {
            ((UBVI) t4).setRefresh(i2);
        }
        LoadAdParams loadAdParams = this.f56281k;
        this.f56281k = loadAdParams;
        T t5 = this.f56259a;
        if (t5 != 0) {
            ((UBVI) t5).setLoadAdParams(loadAdParams);
        }
        while (this.f56279i.getAndDecrement() > 0) {
            loadAD();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(DownAPPConfirmPolicy downAPPConfirmPolicy) {
        T t3;
        this.f56278h = downAPPConfirmPolicy;
        if (downAPPConfirmPolicy == null || (t3 = this.f56259a) == 0) {
            return;
        }
        ((UBVI) t3).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UBVI) t3).destroy();
        } else {
            a("destroy");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i2) {
        this.f56280j = i2;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UBVI) t3).setRefresh(i2);
        }
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((UBVI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f56279i.incrementAndGet();
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((UBVI) t3).fetchAd();
            } else {
                a("loadAD");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onWindowFocusChanged(boolean z3) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UBVI) t3).onWindowFocusChanged(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f56281k = loadAdParams;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UBVI) t3).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f56283m.setNegativeFeedbackListener(negativeFeedbackListener);
    }
}
