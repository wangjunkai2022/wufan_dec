package com.facebook.imagepipeline.cache;
/* compiled from: DefaultEncodedMemoryCacheParamsSupplier.java */
/* loaded from: classes2.dex */
public class k implements com.facebook.common.internal.k<q> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12520a = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    private static final int f12521b = Integer.MAX_VALUE;

    private int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return 1048576;
        }
        return min < 33554432 ? 2097152 : 4194304;
    }

    @Override // com.facebook.common.internal.k
    /* renamed from: a */
    public q get() {
        int b4 = b();
        return new q(b4, Integer.MAX_VALUE, b4, Integer.MAX_VALUE, b4 / 8);
    }
}
