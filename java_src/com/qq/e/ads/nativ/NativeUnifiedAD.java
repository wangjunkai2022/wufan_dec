package com.qq.e.ads.nativ;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.NUADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class NativeUnifiedAD extends NativeAbstractAD<NUADI> {

    /* renamed from: g  reason: collision with root package name */
    private AdListenerAdapter f56357g;

    /* renamed from: h  reason: collision with root package name */
    private NativeADUnifiedListener f56358h;

    /* renamed from: i  reason: collision with root package name */
    private List<Integer> f56359i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private List<String> f56360j;

    /* renamed from: k  reason: collision with root package name */
    private volatile int f56361k;

    /* renamed from: l  reason: collision with root package name */
    private volatile int f56362l;

    /* renamed from: m  reason: collision with root package name */
    private String f56363m;

    /* renamed from: n  reason: collision with root package name */
    private LoadAdParams f56364n;

    /* loaded from: classes4.dex */
    private static class AdListenerAdapter implements ADListener {

        /* renamed from: a  reason: collision with root package name */
        private NativeADUnifiedListener f56365a;

        public AdListenerAdapter(NativeADUnifiedListener nativeADUnifiedListener) {
            this.f56365a = nativeADUnifiedListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            Integer num;
            if (this.f56365a != null) {
                int type = aDEvent.getType();
                if (type != 100) {
                    if (type == 101 && (num = (Integer) aDEvent.getParam(Integer.class)) != null) {
                        this.f56365a.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
                        return;
                    }
                    return;
                }
                List<NativeUnifiedADData> list = (List) aDEvent.getParam(List.class);
                if (list == null || list.size() <= 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (NativeUnifiedADData nativeUnifiedADData : list) {
                    arrayList.add(new NativeUnifiedADDataAdapter(nativeUnifiedADData));
                }
                this.f56365a.onADLoaded(arrayList);
            }
        }
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener) {
        this.f56358h = nativeADUnifiedListener;
        this.f56357g = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str);
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener, String str2) {
        this.f56358h = nativeADUnifiedListener;
        this.f56357g = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str, str2);
    }

    private void d(int i2, boolean z3) {
        if (a()) {
            if (!b()) {
                if (z3) {
                    this.f56359i.add(Integer.valueOf(i2));
                    return;
                }
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                LoadAdParams loadAdParams = this.f56364n;
                NUADI nuadi = (NUADI) t3;
                if (loadAdParams != null) {
                    nuadi.loadData(i2, loadAdParams);
                } else {
                    nuadi.loadData(i2);
                }
            }
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeAdManagerDelegate(context, str, str2, str3, this.f56357g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NUADI nuadi) {
        super.a((NativeUnifiedAD) nuadi);
        nuadi.setMinVideoDuration(this.f56361k);
        nuadi.setMaxVideoDuration(this.f56362l);
        nuadi.setVastClassName(this.f56363m);
        List<String> list = this.f56360j;
        if (list != null) {
            setCategories(list);
        }
        for (Integer num : this.f56359i) {
            d(num.intValue(), false);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        NativeADUnifiedListener nativeADUnifiedListener = this.f56358h;
        if (nativeADUnifiedListener != null) {
            nativeADUnifiedListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((NUADI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadData(int i2) {
        d(i2, true);
    }

    public void loadData(int i2, LoadAdParams loadAdParams) {
        this.f56364n = loadAdParams;
        loadData(i2);
    }

    public void setCategories(List<String> list) {
        this.f56360j = list;
        T t3 = this.f56259a;
        if (t3 == 0 || list == null) {
            return;
        }
        ((NUADI) t3).setCategories(list);
    }

    public void setMaxVideoDuration(int i2) {
        this.f56362l = i2;
        if (this.f56362l > 0 && this.f56361k > this.f56362l) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NUADI) t3).setMaxVideoDuration(this.f56362l);
        }
    }

    public void setMinVideoDuration(int i2) {
        this.f56361k = i2;
        if (this.f56362l > 0 && this.f56361k > this.f56362l) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NUADI) t3).setMinVideoDuration(this.f56361k);
        }
    }

    public void setVastClassName(String str) {
        if (TextUtils.isEmpty(str)) {
            GDTLogger.e("Vast class name 不能为空");
            return;
        }
        this.f56363m = str;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((NUADI) t3).setVastClassName(str);
        }
    }
}
