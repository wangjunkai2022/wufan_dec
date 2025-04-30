package com.qq.e.ads;

import android.app.Activity;
import com.qq.e.comm.compliance.DownloadConfirmCallBack;
import com.qq.e.comm.compliance.DownloadConfirmListener;
import com.qq.e.comm.pi.LADI;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class LiteAbstractAD<T extends LADI> extends AbstractAD<T> implements LADI, DownloadConfirmListener {

    /* renamed from: f  reason: collision with root package name */
    private DownloadConfirmListener f56273f;

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public String getApkInfoUrl() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((LADI) t3).getApkInfoUrl();
        }
        a("getApkInfoUrl");
        return null;
    }

    @Override // com.qq.e.comm.pi.LADI
    public int getECPM() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((LADI) t3).getECPM();
        }
        a("getECPM");
        return -1;
    }

    @Override // com.qq.e.comm.pi.LADI
    public String getECPMLevel() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((LADI) t3).getECPMLevel();
        }
        a("getECPMLevel");
        return null;
    }

    @Override // com.qq.e.comm.pi.LADI
    public Map<String, Object> getExtraInfo() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((LADI) t3).getExtraInfo();
        }
        a("getExtraInfo");
        return new HashMap();
    }

    @Override // com.qq.e.comm.pi.LADI
    public boolean isValid() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((LADI) t3).isValid();
        }
        a("isValid");
        return false;
    }

    @Override // com.qq.e.comm.compliance.DownloadConfirmListener
    public void onDownloadConfirm(Activity activity, int i2, String str, DownloadConfirmCallBack downloadConfirmCallBack) {
        DownloadConfirmListener downloadConfirmListener = this.f56273f;
        if (downloadConfirmListener != null) {
            downloadConfirmListener.onDownloadConfirm(activity, i2, str, downloadConfirmCallBack);
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendLossNotification(int i2, int i4, String str) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((LADI) t3).sendLossNotification(i2, i4, str);
        } else {
            a("sendLossNotification");
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void sendWinNotification(int i2) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((LADI) t3).sendWinNotification(i2);
        } else {
            a("sendWinNotification");
        }
    }

    @Override // com.qq.e.comm.pi.IBidding
    public void setBidECPM(int i2) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((LADI) t3).setBidECPM(i2);
        } else {
            a("setBidECPM");
        }
    }

    @Override // com.qq.e.comm.compliance.ApkDownloadComplianceInterface
    public void setDownloadConfirmListener(DownloadConfirmListener downloadConfirmListener) {
        this.f56273f = downloadConfirmListener;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((LADI) t3).setDownloadConfirmListener(this);
        }
    }
}
