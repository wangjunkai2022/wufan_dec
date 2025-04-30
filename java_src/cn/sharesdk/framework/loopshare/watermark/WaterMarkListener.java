package cn.sharesdk.framework.loopshare.watermark;
@Deprecated
/* loaded from: classes2.dex */
public interface WaterMarkListener {
    void onCancel();

    void onEnd(int i2);

    void onFailed(String str, int i2);

    void onProgress(int i2);

    void onStart();
}
