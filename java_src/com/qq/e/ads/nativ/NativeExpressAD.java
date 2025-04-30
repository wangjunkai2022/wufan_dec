package com.qq.e.ads.nativ;

import android.content.Context;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.NEADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class NativeExpressAD extends NativeAbstractAD<NEADI> {

    /* renamed from: g  reason: collision with root package name */
    private volatile int f56347g;

    /* renamed from: h  reason: collision with root package name */
    private volatile int f56348h;

    /* renamed from: i  reason: collision with root package name */
    private List<Integer> f56349i = Collections.synchronizedList(new ArrayList());

    /* renamed from: j  reason: collision with root package name */
    private VideoOption f56350j;

    /* renamed from: k  reason: collision with root package name */
    private ADSize f56351k;

    /* renamed from: l  reason: collision with root package name */
    private NativeExpressADListener f56352l;

    /* renamed from: m  reason: collision with root package name */
    private LoadAdParams f56353m;

    /* loaded from: classes4.dex */
    public static class ADListenerAdapter implements ADListener {

        /* renamed from: a  reason: collision with root package name */
        private NativeExpressADListener f56354a;

        /* renamed from: b  reason: collision with root package name */
        private NativeExpressMediaListener f56355b;

        /* renamed from: c  reason: collision with root package name */
        private NegativeFeedbackListener f56356c;

        public ADListenerAdapter(NativeExpressADListener nativeExpressADListener) {
            this.f56354a = nativeExpressADListener;
        }

        public ADListenerAdapter(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f56355b = nativeExpressMediaListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (NativeExpressAD.e(this.f56354a, aDEvent) || NativeExpressAD.f(this.f56355b, aDEvent)) {
                return;
            }
            NativeExpressAD.g(this.f56356c, aDEvent);
        }

        public void setMediaListener(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f56355b = nativeExpressMediaListener;
        }

        public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
            this.f56356c = negativeFeedbackListener;
        }
    }

    /* loaded from: classes4.dex */
    public interface NativeExpressADListener extends NativeAbstractAD.BasicADListener {
        void onADClicked(NativeExpressADView nativeExpressADView);

        void onADClosed(NativeExpressADView nativeExpressADView);

        void onADExposure(NativeExpressADView nativeExpressADView);

        void onADLeftApplication(NativeExpressADView nativeExpressADView);

        void onADLoaded(List<NativeExpressADView> list);

        void onRenderFail(NativeExpressADView nativeExpressADView);

        void onRenderSuccess(NativeExpressADView nativeExpressADView);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener) {
        this.f56352l = nativeExpressADListener;
        if (d(aDSize)) {
            return;
        }
        a(context, str);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener, String str2) {
        this.f56352l = nativeExpressADListener;
        if (d(aDSize)) {
            return;
        }
        a(context, str, str2);
    }

    private boolean d(ADSize aDSize) {
        if (aDSize != null) {
            this.f56351k = aDSize;
            return false;
        }
        GDTLogger.e("初始化错误：参数adSize不能为空");
        a(ErrorCode.INIT_ERROR);
        return true;
    }

    static boolean e(NativeExpressADListener nativeExpressADListener, ADEvent aDEvent) {
        if (nativeExpressADListener != null) {
            int type = aDEvent.getType();
            if (type == 100) {
                List<NativeExpressADView> list = (List) aDEvent.getParam(List.class);
                if (list != null) {
                    nativeExpressADListener.onADLoaded(list);
                }
            } else if (type == 101) {
                Integer num = (Integer) aDEvent.getParam(Integer.class);
                if (num != null) {
                    nativeExpressADListener.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
                }
            } else if (type == 103) {
                NativeExpressADView nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView != null) {
                    nativeExpressADListener.onADExposure(nativeExpressADView);
                }
            } else if (type == 303) {
                NativeExpressADView nativeExpressADView2 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView2 != null) {
                    nativeExpressADListener.onADLeftApplication(nativeExpressADView2);
                }
            } else if (type == 105) {
                NativeExpressADView nativeExpressADView3 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView3 != null) {
                    nativeExpressADListener.onADClicked(nativeExpressADView3);
                }
            } else if (type == 106) {
                NativeExpressADView nativeExpressADView4 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView4 != null) {
                    nativeExpressADListener.onADClosed(nativeExpressADView4);
                    nativeExpressADView4.negativeFeedback();
                }
            } else if (type == 109) {
                NativeExpressADView nativeExpressADView5 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView5 != null) {
                    nativeExpressADListener.onRenderSuccess(nativeExpressADView5);
                }
            } else if (type == 110) {
                NativeExpressADView nativeExpressADView6 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
                if (nativeExpressADView6 != null) {
                    nativeExpressADListener.onRenderFail(nativeExpressADView6);
                }
            }
            return true;
        }
        return false;
    }

    static boolean f(NativeExpressMediaListener nativeExpressMediaListener, ADEvent aDEvent) {
        NativeExpressADView nativeExpressADView;
        if (nativeExpressMediaListener != null && (nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class)) != null) {
            int type = aDEvent.getType();
            if (type == 201) {
                nativeExpressMediaListener.onVideoCached(nativeExpressADView);
                return true;
            } else if (type == 202) {
                nativeExpressMediaListener.onVideoStart(nativeExpressADView);
                return true;
            } else if (type == 204) {
                nativeExpressMediaListener.onVideoPause(nativeExpressADView);
                return true;
            } else if (type == 206) {
                nativeExpressMediaListener.onVideoComplete(nativeExpressADView);
                return true;
            } else if (type == 207) {
                Integer num = (Integer) aDEvent.getParam(1, Integer.class);
                if (num != null) {
                    nativeExpressMediaListener.onVideoError(nativeExpressADView, AdErrorConvertor.formatErrorCode(num.intValue()));
                    return true;
                }
                return true;
            } else if (type == 301) {
                nativeExpressMediaListener.onVideoPageOpen(nativeExpressADView);
                return true;
            } else if (type == 302) {
                nativeExpressMediaListener.onVideoPageClose(nativeExpressADView);
                return true;
            } else {
                switch (type) {
                    case 209:
                        nativeExpressMediaListener.onVideoInit(nativeExpressADView);
                        return true;
                    case 210:
                        Integer num2 = (Integer) aDEvent.getParam(1, Integer.class);
                        if (num2 != null) {
                            nativeExpressMediaListener.onVideoReady(nativeExpressADView, num2.intValue());
                            return true;
                        }
                        return true;
                    case 211:
                        nativeExpressMediaListener.onVideoLoading(nativeExpressADView);
                        return true;
                }
            }
        }
        return false;
    }

    static boolean g(NegativeFeedbackListener negativeFeedbackListener, ADEvent aDEvent) {
        if (negativeFeedbackListener != null && aDEvent.getType() == 304) {
            negativeFeedbackListener.onComplainSuccess();
            return true;
        }
        return false;
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeExpressADDelegate(context, this.f56351k, str, str2, str3, new ADListenerAdapter(this.f56352l));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NEADI neadi) {
        super.a((NativeExpressAD) neadi);
        neadi.setMinVideoDuration(this.f56347g);
        neadi.setMaxVideoDuration(this.f56348h);
        VideoOption videoOption = this.f56350j;
        if (videoOption != null) {
            setVideoOption(videoOption);
        }
        synchronized (this.f56349i) {
            Iterator<Integer> it2 = this.f56349i.iterator();
            while (it2.hasNext()) {
                T t3 = this.f56259a;
                if (t3 != 0) {
                    if (this.f56353m != null) {
                        ((NEADI) t3).loadAd(it2.next().intValue(), this.f56353m);
                    } else {
                        ((NEADI) t3).loadAd(it2.next().intValue());
                    }
                }
            }
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        NativeExpressADListener nativeExpressADListener = this.f56352l;
        if (nativeExpressADListener != null) {
            nativeExpressADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((NEADI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadAD(int i2) {
        loadAD(i2, null);
    }

    public void loadAD(int i2, LoadAdParams loadAdParams) {
        if (a()) {
            if (loadAdParams != null) {
                setAdParams(loadAdParams);
            }
            if (!b()) {
                synchronized (this.f56349i) {
                    this.f56349i.add(Integer.valueOf(i2));
                }
                return;
            }
            T t3 = this.f56259a;
            if (t3 == 0) {
                a("loadAD");
                return;
            }
            LoadAdParams loadAdParams2 = this.f56353m;
            NEADI neadi = (NEADI) t3;
            if (loadAdParams2 != null) {
                neadi.loadAd(i2, loadAdParams2);
            } else {
                neadi.loadAd(i2);
            }
        }
    }

    public void setAdParams(LoadAdParams loadAdParams) {
        this.f56353m = loadAdParams;
    }

    public void setMaxVideoDuration(int i2) {
        this.f56348h = i2;
        if (this.f56348h > 0 && this.f56347g > this.f56348h) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NEADI) t3).setMaxVideoDuration(this.f56348h);
        }
    }

    public void setMinVideoDuration(int i2) {
        this.f56347g = i2;
        if (this.f56348h > 0 && this.f56347g > this.f56348h) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NEADI) t3).setMinVideoDuration(this.f56347g);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f56350j = videoOption;
        T t3 = this.f56259a;
        if (t3 == 0 || videoOption == null) {
            return;
        }
        ((NEADI) t3).setVideoOption(videoOption);
    }
}
