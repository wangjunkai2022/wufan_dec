package com.bytedance.sdk.openadsdk.live.core;

import com.bytedance.android.live.base.api.ILiveHostActionParam;
import java.util.Map;
/* compiled from: TTLiveHostActionInner.java */
/* loaded from: classes2.dex */
public class a implements ILiveHostActionParam {

    /* renamed from: a  reason: collision with root package name */
    private ITTLiveHostAction f10681a;

    public a(ITTLiveHostAction iTTLiveHostAction) {
        this.f10681a = iTTLiveHostAction;
    }

    public void logEvent(boolean z3, String str, String str2, Map<String, String> map) {
        ITTLiveHostAction iTTLiveHostAction = this.f10681a;
        if (iTTLiveHostAction != null) {
            iTTLiveHostAction.logEvent(z3, str, str2, map);
        }
    }
}
