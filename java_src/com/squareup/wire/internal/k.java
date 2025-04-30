package com.squareup.wire.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
/* compiled from: MathMethods.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000H\u0000\"\u0016\u0010\t\u001a\u00020\u00008\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\b¨\u0006\n"}, d2 = {"", "x", "y", "a", "dividend", "divisor", "b", ai.aD, "J", "NANOS_PER_SECOND", "wire-runtime"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final long f56834a = 1000000000;

    public static final long a(long j4, long j5) {
        long j6 = j4 + j5;
        if (((j5 ^ j4) < 0) || ((j4 ^ j6) >= 0)) {
            return j6;
        }
        throw new ArithmeticException();
    }

    public static final long b(long j4, long j5) {
        long j6 = j4 / j5;
        return (j4 - (j5 * j6) != 0 && (((j4 ^ j5) >> 63) | 1) < 0) ? j6 - 1 : j6;
    }

    public static final long c(long j4, long j5) {
        long j6 = j4 % j5;
        if (j6 == 0) {
            return 0L;
        }
        return (((j4 ^ j5) >> 63) | 1) > 0 ? j6 : j6 + j5;
    }
}
