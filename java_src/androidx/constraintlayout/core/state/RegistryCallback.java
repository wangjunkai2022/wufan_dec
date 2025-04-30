package androidx.constraintlayout.core.state;
/* loaded from: classes.dex */
public interface RegistryCallback {
    String currentLayoutInformation();

    String currentMotionScene();

    long getLastModified();

    void onDimensions(int i2, int i4);

    void onNewMotionScene(String str);

    void onProgress(float f4);

    void setDrawDebug(int i2);

    void setLayoutInformationMode(int i2);
}
