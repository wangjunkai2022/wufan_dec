package com.qq.e.ads.banner2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.compliance.ApkDownloadComplianceInterface;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IBidding;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public class UnifiedBannerView extends FrameLayout implements ApkDownloadComplianceInterface, IBidding, NFBI {

    /* renamed from: a  reason: collision with root package name */
    final UnifiedBannerAD f56284a;

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener) {
        this(activity, str, unifiedBannerADListener, null);
    }

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener, Map map) {
        super(activity);
        this.f56284a = new UnifiedBannerAD(activity, this, str, unifiedBannerADListener);
        a();
    }

    public UnifiedBannerView(Activity activity, String str, UnifiedBannerADListener unifiedBannerADListener, Map map, String str2) {
        super(activity);
        if (TextUtils.isEmpty(str2)) {
            GDTLogger.e(UnifiedBannerView.class.getSimpleName() + "构造函数中 token 参数不可为空");
        }
        this.f56284a = new UnifiedBannerAD(activity, this, str, str2, unifiedBannerADListener);
        a();
    }

    private void a() {
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    }

    public void destroy() {
        this.f56284a.destroy();
    }

    public String getAdNetWorkName() {
        return this.f56284a.getAdNetWorkName();
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        return this.f56284a.getApkInfoUrl();
    }

    public int getECPM() {
        return this.f56284a.getECPM();
    }

    public String getECPMLevel() {
        return this.f56284a.getECPMLevel();
    }

    public Map<String, Object> getExtraInfo() {
        return this.f56284a.getExtraInfo();
    }

    public boolean isValid() {
        return this.f56284a.isValid();
    }

    public void loadAD() {
        this.f56284a.loadAD();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        this.f56284a.onWindowFocusChanged(z3);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i2, int i4, String str) {
        this.f56284a.sendLossNotification(i2, i4, str);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i2) {
        this.f56284a.sendWinNotification(i2);
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i2) {
        this.f56284a.setBidECPM(i2);
    }

    public void setDownConfirmPolicy(DownAPPConfirmPolicy downAPPConfirmPolicy) {
        this.f56284a.d(downAPPConfirmPolicy);
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f56284a.setDownloadConfirmListener(downloadConfirmListener);
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f56284a.setLoadAdParams(loadAdParams);
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f56284a.setNegativeFeedbackListener(negativeFeedbackListener);
    }

    public void setRefresh(int i2) {
        this.f56284a.e(i2);
    }
}
