package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveCompanionObjects.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0013\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002R\u001c\u0010\t\u001a\u00020\b8\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\t\u0010\n\u0012\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u000f\u0010\fR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0010\u0010\u000e\u0012\u0004\b\u0011\u0010\fR\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u0012\u0004\b\u0013\u0010\fR\u001c\u0010\u0014\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0014\u0010\u000e\u0012\u0004\b\u0015\u0010\fR\u001c\u0010\u0016\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0016\u0010\u000e\u0012\u0004\b\u0017\u0010\fR\u001c\u0010\u0018\u001a\u00020\b8\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0018\u0010\n\u0012\u0004\b\u0019\u0010\f¨\u0006\u001b"}, d2 = {"Lkotlin/jvm/internal/FloatCompanionObject;", "", "", "getMIN_VALUE", "getMAX_VALUE", "getPOSITIVE_INFINITY", "getNEGATIVE_INFINITY", "getNaN", "", "SIZE_BITS", "I", "getSIZE_BITS$annotations", "()V", "NaN", "F", "getNaN$annotations", "POSITIVE_INFINITY", "getPOSITIVE_INFINITY$annotations", "NEGATIVE_INFINITY", "getNEGATIVE_INFINITY$annotations", "MIN_VALUE", "getMIN_VALUE$annotations", "MAX_VALUE", "getMAX_VALUE$annotations", "SIZE_BYTES", "getSIZE_BYTES$annotations", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FloatCompanionObject {
    @NotNull
    public static final FloatCompanionObject INSTANCE = new FloatCompanionObject();
    public static final float MAX_VALUE = Float.MAX_VALUE;
    public static final float MIN_VALUE = Float.MIN_VALUE;
    public static final float NEGATIVE_INFINITY = Float.NEGATIVE_INFINITY;
    public static final float NaN = Float.NaN;
    public static final float POSITIVE_INFINITY = Float.POSITIVE_INFINITY;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;

    private FloatCompanionObject() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getMAX_VALUE$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getMIN_VALUE$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getNEGATIVE_INFINITY$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getNaN$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getPOSITIVE_INFINITY$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getSIZE_BITS$annotations() {
    }

    @SinceKotlin(version = "1.4")
    public static /* synthetic */ void getSIZE_BYTES$annotations() {
    }

    public final float getMAX_VALUE() {
        return Float.MAX_VALUE;
    }

    public final float getMIN_VALUE() {
        return Float.MIN_VALUE;
    }

    public final float getNEGATIVE_INFINITY() {
        return Float.NEGATIVE_INFINITY;
    }

    public final float getNaN() {
        return Float.NaN;
    }

    public final float getPOSITIVE_INFINITY() {
        return Float.POSITIVE_INFINITY;
    }
}
