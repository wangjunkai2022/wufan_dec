package com.qq.e.ads.nativ;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.widget.NativeAdContainer;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADEventListener;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class NativeUnifiedADDataAdapter implements NativeUnifiedADData, DownloadConfirmListener {

    /* renamed from: a  reason: collision with root package name */
    private NativeUnifiedADData f56372a;

    /* renamed from: b  reason: collision with root package name */
    private NativeADEventListener f56373b;

    /* renamed from: c  reason: collision with root package name */
    private NativeADMediaListener f56374c;

    /* renamed from: d  reason: collision with root package name */
    private DownloadConfirmListener f56375d;

    /* renamed from: e  reason: collision with root package name */
    private VideoPreloadListener f56376e;

    /* renamed from: f  reason: collision with root package name */
    private NegativeFeedbackListener f56377f;

    /* loaded from: classes4.dex */
    private class UnifiedAdListener implements ADListener {
        private UnifiedAdListener() {
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (NativeUnifiedADDataAdapter.a(NativeUnifiedADDataAdapter.this, aDEvent) || NativeUnifiedADDataAdapter.b(NativeUnifiedADDataAdapter.this, aDEvent) || NativeUnifiedADDataAdapter.c(NativeUnifiedADDataAdapter.this, aDEvent)) {
                return;
            }
            NativeUnifiedADDataAdapter.d(NativeUnifiedADDataAdapter.this, aDEvent);
        }
    }

    public NativeUnifiedADDataAdapter(NativeUnifiedADData nativeUnifiedADData) {
        this.f56372a = nativeUnifiedADData;
        if (nativeUnifiedADData instanceof ADEventListener) {
            ((ADEventListener) nativeUnifiedADData).setAdListener(new UnifiedAdListener());
        }
    }

    static boolean a(NativeUnifiedADDataAdapter nativeUnifiedADDataAdapter, ADEvent aDEvent) {
        if (nativeUnifiedADDataAdapter.f56373b != null) {
            int type = aDEvent.getType();
            if (type == 103) {
                nativeUnifiedADDataAdapter.f56373b.onADExposed();
            } else if (type == 105) {
                NativeADEventListener nativeADEventListener = nativeUnifiedADDataAdapter.f56373b;
                if (nativeADEventListener instanceof NativeADEventListenerWithClickInfo) {
                    ((NativeADEventListenerWithClickInfo) nativeUnifiedADDataAdapter.f56373b).onADClicked((View) aDEvent.getParam(View.class));
                } else {
                    nativeADEventListener.onADClicked();
                }
            } else if (type == 107) {
                Integer num = (Integer) aDEvent.getParam(Integer.class);
                if (num != null) {
                    nativeUnifiedADDataAdapter.f56373b.onADError(AdErrorConvertor.formatErrorCode(num.intValue()));
                }
            } else if (type == 111) {
                nativeUnifiedADDataAdapter.f56373b.onADStatusChanged();
            }
            return true;
        }
        return false;
    }

    static boolean b(NativeUnifiedADDataAdapter nativeUnifiedADDataAdapter, ADEvent aDEvent) {
        if (nativeUnifiedADDataAdapter.f56374c != null) {
            switch (aDEvent.getType()) {
                case 201:
                    Integer num = (Integer) aDEvent.getParam(Integer.class);
                    if (num != null) {
                        nativeUnifiedADDataAdapter.f56374c.onVideoLoaded(num.intValue());
                    }
                    return true;
                case 202:
                    nativeUnifiedADDataAdapter.f56374c.onVideoStart();
                    return true;
                case 203:
                    nativeUnifiedADDataAdapter.f56374c.onVideoResume();
                    return true;
                case 204:
                    nativeUnifiedADDataAdapter.f56374c.onVideoPause();
                    return true;
                case 205:
                    nativeUnifiedADDataAdapter.f56374c.onVideoStop();
                    return true;
                case 206:
                    nativeUnifiedADDataAdapter.f56374c.onVideoCompleted();
                    return true;
                case 207:
                    Integer num2 = (Integer) aDEvent.getParam(Integer.class);
                    if (num2 != null) {
                        nativeUnifiedADDataAdapter.f56374c.onVideoError(AdErrorConvertor.formatErrorCode(num2.intValue()));
                    }
                    return true;
                case 208:
                    nativeUnifiedADDataAdapter.f56374c.onVideoClicked();
                    return true;
                case 209:
                    nativeUnifiedADDataAdapter.f56374c.onVideoInit();
                    return true;
                case 210:
                    nativeUnifiedADDataAdapter.f56374c.onVideoReady();
                    return true;
                case 211:
                    nativeUnifiedADDataAdapter.f56374c.onVideoLoading();
                    return true;
            }
        }
        return false;
    }

    static boolean c(NativeUnifiedADDataAdapter nativeUnifiedADDataAdapter, ADEvent aDEvent) {
        if (nativeUnifiedADDataAdapter.f56376e != null) {
            int type = aDEvent.getType();
            if (type == 212) {
                nativeUnifiedADDataAdapter.f56376e.onVideoCached();
            } else if (type == 213) {
                if (((Integer) aDEvent.getParam(Integer.class)) != null) {
                    nativeUnifiedADDataAdapter.f56376e.onVideoCacheFailed(5002, "视频下载失败");
                }
            }
            return true;
        }
        return false;
    }

    static boolean d(NativeUnifiedADDataAdapter nativeUnifiedADDataAdapter, ADEvent aDEvent) {
        if (nativeUnifiedADDataAdapter.f56377f != null && aDEvent.getType() == 304) {
            nativeUnifiedADDataAdapter.f56377f.onComplainSuccess();
            return true;
        }
        return false;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindAdToView(Context context, NativeAdContainer nativeAdContainer, FrameLayout.LayoutParams layoutParams, List<View> list) {
        this.f56372a.bindAdToView(context, nativeAdContainer, layoutParams, list);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindAdToView(Context context, NativeAdContainer nativeAdContainer, FrameLayout.LayoutParams layoutParams, List<View> list, List<View> list2) {
        this.f56372a.bindAdToView(context, nativeAdContainer, layoutParams, list, list2);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindCTAViews(List<View> list) {
        this.f56372a.bindCTAViews(list);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindImageViews(List<ImageView> list, int i2) {
        this.f56372a.bindImageViews(list, i2);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindImageViews(List<ImageView> list, byte[] bArr) {
        this.f56372a.bindImageViews(list, bArr);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void bindMediaView(MediaView mediaView, VideoOption videoOption, NativeADMediaListener nativeADMediaListener) {
        this.f56374c = nativeADMediaListener;
        this.f56372a.bindMediaView(mediaView, videoOption, null);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void destroy() {
        this.f56372a.destroy();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean equalsAdData(NativeUnifiedADData nativeUnifiedADData) {
        return this.f56372a.equalsAdData(nativeUnifiedADData);
    }

    public NativeUnifiedADData getAdData() {
        return this.f56372a;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAdPatternType() {
        return this.f56372a.getAdPatternType();
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        return this.f56372a.getApkInfoUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public NativeUnifiedADAppMiitInfo getAppMiitInfo() {
        return this.f56372a.getAppMiitInfo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public double getAppPrice() {
        return this.f56372a.getAppPrice();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAppScore() {
        return this.f56372a.getAppScore();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getAppStatus() {
        return this.f56372a.getAppStatus();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getButtonText() {
        return this.f56372a.getButtonText();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getCTAText() {
        return this.f56372a.getCTAText();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getDesc() {
        return this.f56372a.getDesc();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public long getDownloadCount() {
        return this.f56372a.getDownloadCount();
    }

    @Override // com.qq.e.comm.pi.LADI
    public int getECPM() {
        return this.f56372a.getECPM();
    }

    @Override // com.qq.e.comm.pi.LADI
    public String getECPMLevel() {
        return this.f56372a.getECPMLevel();
    }

    @Override // com.qq.e.comm.pi.LADI
    public Map<String, Object> getExtraInfo() {
        return this.f56372a.getExtraInfo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getIconUrl() {
        return this.f56372a.getIconUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public List<String> getImgList() {
        return this.f56372a.getImgList();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getImgUrl() {
        return this.f56372a.getImgUrl();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getPictureHeight() {
        return this.f56372a.getPictureHeight();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getPictureWidth() {
        return this.f56372a.getPictureWidth();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getProgress() {
        return this.f56372a.getProgress();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public String getTitle() {
        return this.f56372a.getTitle();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getVideoCurrentPosition() {
        return this.f56372a.getVideoCurrentPosition();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public int getVideoDuration() {
        return this.f56372a.getVideoDuration();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean isAppAd() {
        return this.f56372a.isAppAd();
    }

    @Override // com.qq.e.comm.pi.LADI
    public boolean isValid() {
        return this.f56372a.isValid();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public boolean isWeChatCanvasAd() {
        return this.f56372a.isWeChatCanvasAd();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void negativeFeedback() {
        this.f56372a.negativeFeedback();
    }

    @Override // com.qq.e.comm.compliance.DownloadConfirmListener
    public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
        DownloadConfirmListener downloadConfirmListener = this.f56375d;
        if (downloadConfirmListener != null) {
            downloadConfirmListener.onDownloadConfirm(activity, i2, str, downloadConfirmCallBack);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void pauseAppDownload() {
        this.f56372a.pauseAppDownload();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void pauseVideo() {
        this.f56372a.pauseVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void preloadVideo(VideoPreloadListener videoPreloadListener) {
        this.f56376e = videoPreloadListener;
        this.f56372a.preloadVideo(null);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resume() {
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resumeAppDownload() {
        this.f56372a.resumeAppDownload();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void resumeVideo() {
        this.f56372a.resumeVideo();
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i2, int i4, String str) {
        this.f56372a.sendLossNotification(i2, i4, str);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i2) {
        this.f56372a.sendWinNotification(i2);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i2) {
        this.f56372a.setBidECPM(i2);
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f56375d = downloadConfirmListener;
        NativeUnifiedADData nativeUnifiedADData = this.f56372a;
        if (nativeUnifiedADData != null) {
            nativeUnifiedADData.setDownloadConfirmListener(this);
        }
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void setNativeAdEventListener(NativeADEventListener nativeADEventListener) {
        this.f56373b = nativeADEventListener;
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f56377f = negativeFeedbackListener;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void setVideoMute(boolean z3) {
        this.f56372a.setVideoMute(z3);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void startVideo() {
        this.f56372a.startVideo();
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADData
    public void stopVideo() {
        this.f56372a.stopVideo();
    }
}
