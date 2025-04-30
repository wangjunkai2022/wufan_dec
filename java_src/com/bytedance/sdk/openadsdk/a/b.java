package com.bytedance.sdk.openadsdk.a;

import android.app.Application;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTAdBridge;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.a.a;
import java.util.Map;
/* compiled from: CommonBridge.java */
/* loaded from: classes2.dex */
public class b implements TTAdBridge {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f10500a;

    /* renamed from: b  reason: collision with root package name */
    private a f10501b = new a();

    private b() {
    }

    public static final b a() {
        if (f10500a == null) {
            synchronized (b.class) {
                if (f10500a == null) {
                    f10500a = new b();
                }
            }
        }
        return f10500a;
    }

    public Application.ActivityLifecycleCallbacks b() {
        return this.f10501b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public String call(int i2, Bundle bundle) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T callMethod(Class<T> cls, int i2, Map<String, Object> map) {
        if (i2 != 2) {
            return null;
        }
        return (T) this.f10501b.a();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls, int i2, Map<String, Object> map) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void init(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void removeObj(Object obj) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void setObj(Object obj) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void subscribe(final TTAdEvent tTAdEvent) {
        this.f10501b.a(new a.InterfaceC0042a() { // from class: com.bytedance.sdk.openadsdk.a.b.1
            @Override // com.bytedance.sdk.openadsdk.a.a.InterfaceC0042a
            public void a() {
                tTAdEvent.onEvent(0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.a.a.InterfaceC0042a
            public void b() {
                tTAdEvent.onEvent(1, null);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void unsubscribe(TTAdEvent tTAdEvent) {
    }
}
