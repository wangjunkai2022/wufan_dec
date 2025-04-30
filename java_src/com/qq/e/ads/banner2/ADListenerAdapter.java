package com.qq.e.ads.banner2;

import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.util.AdErrorConvertor;
/* loaded from: classes4.dex */
class ADListenerAdapter implements ADListener {

    /* renamed from: a  reason: collision with root package name */
    private final UnifiedBannerADListener f56275a;

    /* renamed from: b  reason: collision with root package name */
    private NegativeFeedbackListener f56276b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ADListenerAdapter(UnifiedBannerADListener unifiedBannerADListener) {
        this.f56275a = unifiedBannerADListener;
    }

    @Override // com.qq.e.comm.adevent.ADListener
    public void onADEvent(ADEvent aDEvent) {
        UnifiedBannerADListener unifiedBannerADListener;
        NegativeFeedbackListener negativeFeedbackListener;
        if (aDEvent == null) {
            return;
        }
        int type = aDEvent.getType();
        if (type == 100) {
            UnifiedBannerADListener unifiedBannerADListener2 = this.f56275a;
            if (unifiedBannerADListener2 != null) {
                unifiedBannerADListener2.onADReceive();
            }
        } else if (type == 101) {
            Integer num = (Integer) aDEvent.getParam(Integer.class);
            if (num == null || (unifiedBannerADListener = this.f56275a) == null) {
                return;
            }
            unifiedBannerADListener.onNoAD(AdErrorConvertor.formatErrorCode(num.intValue()));
        } else if (type == 103) {
            UnifiedBannerADListener unifiedBannerADListener3 = this.f56275a;
            if (unifiedBannerADListener3 != null) {
                unifiedBannerADListener3.onADExposure();
            }
        } else if (type == 105) {
            UnifiedBannerADListener unifiedBannerADListener4 = this.f56275a;
            if (unifiedBannerADListener4 != null) {
                unifiedBannerADListener4.onADClicked();
            }
        } else if (type == 106) {
            UnifiedBannerADListener unifiedBannerADListener5 = this.f56275a;
            if (unifiedBannerADListener5 != null) {
                unifiedBannerADListener5.onADClosed();
            }
        } else if (type != 303) {
            if (type == 304 && (negativeFeedbackListener = this.f56276b) != null) {
                negativeFeedbackListener.onComplainSuccess();
            }
        } else {
            UnifiedBannerADListener unifiedBannerADListener6 = this.f56275a;
            if (unifiedBannerADListener6 != null) {
                unifiedBannerADListener6.onADLeftApplication();
            }
        }
    }

    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f56276b = negativeFeedbackListener;
    }
}
