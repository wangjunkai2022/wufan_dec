package com.squareup.wire.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
/* compiled from: Util.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0015\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0080\f¨\u0006\u0005"}, d2 = {"", "", "other", "a", "b", "wire-runtime"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "RuntimeUtils")
/* loaded from: classes4.dex */
public final class n {
    public static final int a(byte b4, int i2) {
        return b4 & i2;
    }

    public static final int b(byte b4, int i2) {
        return b4 << i2;
    }
}
