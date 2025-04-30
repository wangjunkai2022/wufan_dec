package com.qq.e.ads.interstitial2;

import android.app.Activity;
import android.content.Context;
import com.join.mgps.service.CommonService_;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.UIADI;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class UnifiedInterstitialAD extends LiteAbstractAD<UIADI> implements NFBI {

    /* renamed from: g  reason: collision with root package name */
    private AtomicInteger f56336g;

    /* renamed from: h  reason: collision with root package name */
    private AtomicInteger f56337h;

    /* renamed from: i  reason: collision with root package name */
    private volatile VideoOption f56338i;

    /* renamed from: j  reason: collision with root package name */
    private volatile int f56339j;

    /* renamed from: k  reason: collision with root package name */
    private volatile int f56340k;

    /* renamed from: l  reason: collision with root package name */
    private volatile LoadAdParams f56341l;

    /* renamed from: m  reason: collision with root package name */
    private UnifiedInterstitialADListener f56342m;

    /* renamed from: n  reason: collision with root package name */
    private ServerSideVerificationOptions f56343n;

    /* renamed from: o  reason: collision with root package name */
    private final ADListenerAdapter f56344o;

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener) {
        this(activity, str, unifiedInterstitialADListener, null);
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map) {
        this.f56336g = new AtomicInteger(0);
        this.f56337h = new AtomicInteger(0);
        this.f56342m = unifiedInterstitialADListener;
        this.f56344o = new ADListenerAdapter(unifiedInterstitialADListener);
        a(activity, str);
    }

    public UnifiedInterstitialAD(Activity activity, String str, UnifiedInterstitialADListener unifiedInterstitialADListener, Map map, String str2) {
        this.f56336g = new AtomicInteger(0);
        this.f56337h = new AtomicInteger(0);
        this.f56342m = unifiedInterstitialADListener;
        this.f56344o = new ADListenerAdapter(unifiedInterstitialADListener);
        a(activity, str, str2);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getUnifiedInterstitialADDelegate((Activity) context, str, str2, str3, this.f56344o);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected /* bridge */ /* synthetic */ void a(Object obj) {
        UIADI uiadi = (UIADI) obj;
        c();
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        UnifiedInterstitialADListener unifiedInterstitialADListener = this.f56342m;
        if (unifiedInterstitialADListener != null) {
            unifiedInterstitialADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    protected void c() {
        setVideoOption(this.f56338i);
        setMinVideoDuration(this.f56339j);
        setMaxVideoDuration(this.f56340k);
        setLoadAdParams(this.f56341l);
        setServerSideVerificationOptions(this.f56343n);
        while (this.f56336g.getAndDecrement() > 0) {
            loadAD();
        }
        while (this.f56337h.getAndDecrement() > 0) {
            loadFullScreenAD();
        }
    }

    public void close() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).close();
        }
    }

    public void destroy() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).destroy();
        } else {
            a("destroy");
        }
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((UIADI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getAdPatternType() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((UIADI) t3).getAdPatternType();
        }
        a("getAdPatternType");
        return 0;
    }

    public int getVideoDuration() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((UIADI) t3).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f56336g.incrementAndGet();
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((UIADI) t3).loadAd();
            } else {
                a("loadAD");
            }
        }
    }

    public void loadFullScreenAD() {
        if (a()) {
            if (!b()) {
                this.f56337h.incrementAndGet();
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((UIADI) t3).loadFullScreenAD();
            } else {
                a("loadFullScreenAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f56341l = loadAdParams;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).setLoadAdParams(this.f56341l);
        }
    }

    public void setMaxVideoDuration(int i2) {
        this.f56340k = i2;
        if (this.f56340k > 0 && this.f56339j > this.f56340k) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).setMaxVideoDuration(i2);
        }
    }

    public void setMediaListener(UnifiedInterstitialMediaListener unifiedInterstitialMediaListener) {
        this.f56344o.setMediaListener(unifiedInterstitialMediaListener);
    }

    public void setMinVideoDuration(int i2) {
        this.f56339j = i2;
        if (this.f56340k > 0 && this.f56339j > this.f56340k) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).setMinVideoDuration(i2);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f56344o.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f56344o.setAdRewardListener(aDRewardListener);
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f56343n = serverSideVerificationOptions;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f56338i = videoOption;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).setVideoOption(videoOption);
        }
    }

    public void show() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).show();
        } else {
            a(CommonService_.f0.f51795c);
        }
    }

    public void show(Activity activity) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).show(activity);
        } else {
            a(CommonService_.f0.f51795c);
        }
    }

    public void showAsPopupWindow() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).showAsPopupWindow();
        } else {
            a("showAsPopupWindow");
        }
    }

    public void showAsPopupWindow(Activity activity) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).showAsPopupWindow(activity);
        } else {
            a("showAsPopupWindow");
        }
    }

    public void showFullScreenAD(Activity activity) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((UIADI) t3).showFullScreenAD(activity);
        } else {
            a("showFullScreenAD");
        }
    }
}
