package com.efs.sdk.base.core.b;

import androidx.annotation.Nullable;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<Byte, e> f11262a = new ConcurrentHashMap<>();

    @Nullable
    public final e a(byte b4) {
        if (!this.f11262a.containsKey(Byte.valueOf(b4))) {
            if (b4 == 1) {
                this.f11262a.putIfAbsent(Byte.valueOf(b4), new g());
            } else if (b4 != 2) {
                com.efs.sdk.base.core.util.d.a("efs.cache", "Cache module not support protocol ".concat(String.valueOf((int) b4)), null);
            } else {
                this.f11262a.putIfAbsent(Byte.valueOf(b4), new d());
            }
        }
        return this.f11262a.get(Byte.valueOf(b4));
    }
}
