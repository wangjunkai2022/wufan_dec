package com.qq.e.ads.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.NSPVI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes4.dex */
public final class SplashAD extends LiteAbstractAD<NSPVI> {

    /* renamed from: g  reason: collision with root package name */
    private volatile ViewGroup f56395g;

    /* renamed from: h  reason: collision with root package name */
    private volatile SplashADListener f56396h;

    /* renamed from: i  reason: collision with root package name */
    private volatile LoadAdParams f56397i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f56398j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f56399k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f56400l;

    /* renamed from: m  reason: collision with root package name */
    private volatile int f56401m;

    /* renamed from: n  reason: collision with root package name */
    private volatile byte[] f56402n;

    /* renamed from: o  reason: collision with root package name */
    private int f56403o;

    /* loaded from: classes4.dex */
    private class ADListenerAdapter implements ADListener {
        private ADListenerAdapter() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (SplashAD.this.f56396h == null) {
                GDTLogger.d("SplashADListener == null");
                return;
            }
            switch (aDEvent.getType()) {
                case 100:
                    Long l4 = (Long) aDEvent.getParam(Long.class);
                    if (l4 != null) {
                        SplashAD.this.f56396h.onADLoaded(l4.longValue());
                        return;
                    }
                    return;
                case 101:
                    Integer num = (Integer) aDEvent.getParam(Integer.class);
                    if (num != null) {
                        SplashAD.this.f56396h.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
                        return;
                    }
                    return;
                case 102:
                    SplashAD.this.f56396h.onADPresent();
                    return;
                case 103:
                    SplashAD.this.f56396h.onADExposure();
                    return;
                case 104:
                case 107:
                case 108:
                case 109:
                case 110:
                case 111:
                default:
                    return;
                case 105:
                    SplashAD.this.f56396h.onADClicked();
                    return;
                case 106:
                    SplashAD.this.f56396h.onADDismissed();
                    return;
                case 112:
                    Long l5 = (Long) aDEvent.getParam(Long.class);
                    if (l5 != null) {
                        SplashAD.this.f56396h.onADTick(l5.longValue());
                        return;
                    }
                    return;
                case 113:
                    if (SplashAD.this.f56396h instanceof SplashADZoomOutListener) {
                        ((SplashADZoomOutListener) SplashAD.this.f56396h).onZoomOut();
                        return;
                    }
                    return;
                case 114:
                    if (SplashAD.this.f56396h instanceof SplashADZoomOutListener) {
                        ((SplashADZoomOutListener) SplashAD.this.f56396h).onZoomOutPlayFinish();
                        return;
                    }
                    return;
            }
        }
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener) {
        this(context, str, splashADListener, 0);
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i2) {
        this.f56398j = false;
        this.f56396h = splashADListener;
        this.f56403o = i2;
        a(context, str);
    }

    public SplashAD(Context context, String str, SplashADListener splashADListener, int i2, String str2) {
        this.f56398j = false;
        this.f56396h = splashADListener;
        this.f56403o = i2;
        a(context, str, str2);
    }

    private void e(ViewGroup viewGroup, boolean z3) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数有误：传入container参数为空");
            a(ErrorCode.CONSTRUCTOR_PARAM_ERROR);
            return;
        }
        T t3 = this.f56259a;
        if (t3 == 0) {
            this.f56400l = z3;
            this.f56395g = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t3;
        if (z3) {
            nspvi.fetchFullScreenAndShowIn(viewGroup);
        } else {
            nspvi.fetchAndShowIn(viewGroup);
        }
    }

    private void f(boolean z3) {
        if (a()) {
            if (!b()) {
                this.f56400l = z3;
                this.f56399k = true;
                return;
            }
            T t3 = this.f56259a;
            if (t3 == 0) {
                a("fetchAdInner");
                return;
            }
            NSPVI nspvi = (NSPVI) t3;
            if (z3) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
        }
    }

    private void g(ViewGroup viewGroup, boolean z3) {
        if (viewGroup == null) {
            GDTLogger.e("传入参数错误，container参数为空");
            a(ErrorCode.CONSTRUCTOR_PARAM_ERROR);
            return;
        }
        T t3 = this.f56259a;
        if (t3 == 0) {
            this.f56395g = viewGroup;
            return;
        }
        NSPVI nspvi = (NSPVI) t3;
        if (z3) {
            nspvi.showFullScreenAd(viewGroup);
        } else {
            nspvi.showAd(viewGroup);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeSplashAdView(context, str, str2, str3);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        if (this.f56396h != null) {
            this.f56396h.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public void fetchAdOnly() {
        f(false);
    }

    public void fetchAndShowIn(ViewGroup viewGroup) {
        e(viewGroup, false);
    }

    public void fetchFullScreenAdOnly() {
        f(true);
    }

    public void fetchFullScreenAndShowIn(ViewGroup viewGroup) {
        e(viewGroup, true);
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((NSPVI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public Bitmap getZoomOutBitmap() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((NSPVI) t3).getZoomOutBitmap();
        }
        a("getZoomOutBitmap");
        return null;
    }

    public void preLoad() {
        if (a()) {
            if (!b()) {
                this.f56398j = true;
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((NSPVI) t3).preload();
            } else {
                a("preLoad");
            }
        }
    }

    @Deprecated
    public void setAdLogoMargin(int i2, int i4) {
    }

    public void setDeveloperLogo(int i2) {
        T t3 = this.f56259a;
        if (t3 == 0) {
            this.f56401m = i2;
        } else {
            ((NSPVI) t3).setDeveloperLogo(i2);
        }
    }

    public void setDeveloperLogo(byte[] bArr) {
        T t3 = this.f56259a;
        if (t3 == 0) {
            this.f56402n = bArr;
        } else {
            ((NSPVI) t3).setDeveloperLogo(bArr);
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NSPVI) t3).setLoadAdParams(loadAdParams);
        } else {
            this.f56397i = loadAdParams;
        }
    }

    @Deprecated
    public void setPreloadView(View view) {
    }

    public void showAd(ViewGroup viewGroup) {
        g(viewGroup, false);
    }

    public void showFullScreenAd(ViewGroup viewGroup) {
        g(viewGroup, true);
    }

    public void zoomOutAnimationFinish() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NSPVI) t3).zoomOutAnimationFinish();
        } else {
            a("zoomOutAnimationFinish");
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void a(Object obj) {
        NSPVI nspvi = (NSPVI) obj;
        if (this.f56397i != null) {
            nspvi.setLoadAdParams(this.f56397i);
        }
        if (this.f56401m != 0) {
            nspvi.setDeveloperLogo(this.f56401m);
        }
        if (this.f56402n != null) {
            nspvi.setDeveloperLogo(this.f56402n);
        }
        nspvi.setFetchDelay(this.f56403o);
        nspvi.setAdListener(new ADListenerAdapter());
        if ((this.f56396h instanceof SplashADZoomOutListener) && ((SplashADZoomOutListener) this.f56396h).isSupportZoomOut()) {
            nspvi.setSupportZoomOut(true);
        }
        if (this.f56395g != null) {
            if (this.f56400l) {
                fetchFullScreenAndShowIn(this.f56395g);
            } else {
                fetchAndShowIn(this.f56395g);
            }
        }
        if (this.f56398j) {
            nspvi.preload();
            this.f56398j = false;
        }
        if (this.f56399k) {
            if (this.f56400l) {
                nspvi.fetchFullScreenAdOnly();
            } else {
                nspvi.fetchAdOnly();
            }
            this.f56399k = false;
        }
    }
}
