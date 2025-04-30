package androidx.constraintlayout.core.state;

import java.util.HashMap;
import java.util.Set;
/* loaded from: classes.dex */
public class Registry {

    /* renamed from: b  reason: collision with root package name */
    private static final Registry f2358b = new Registry();

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, RegistryCallback> f2359a = new HashMap<>();

    public static Registry getInstance() {
        return f2358b;
    }

    public String currentContent(String str) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            return registryCallback.currentMotionScene();
        }
        return null;
    }

    public String currentLayoutInformation(String str) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            return registryCallback.currentLayoutInformation();
        }
        return null;
    }

    public long getLastModified(String str) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            return registryCallback.getLastModified();
        }
        return Long.MAX_VALUE;
    }

    public Set<String> getLayoutList() {
        return this.f2359a.keySet();
    }

    public void register(String str, RegistryCallback registryCallback) {
        this.f2359a.put(str, registryCallback);
    }

    public void setDrawDebug(String str, int i2) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            registryCallback.setDrawDebug(i2);
        }
    }

    public void setLayoutInformationMode(String str, int i2) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            registryCallback.setLayoutInformationMode(i2);
        }
    }

    public void unregister(String str, RegistryCallback registryCallback) {
        this.f2359a.remove(str);
    }

    public void updateContent(String str, String str2) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            registryCallback.onNewMotionScene(str2);
        }
    }

    public void updateDimensions(String str, int i2, int i4) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            registryCallback.onDimensions(i2, i4);
        }
    }

    public void updateProgress(String str, float f4) {
        RegistryCallback registryCallback = this.f2359a.get(str);
        if (registryCallback != null) {
            registryCallback.onProgress(f4);
        }
    }
}
