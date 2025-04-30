package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveCompanionObjects.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\r\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0006R\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u0012\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u001c\u0010\n\u001a\u00020\t8\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\n\u0010\u000b\u0012\u0004\b\f\u0010\u0006R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u0012\u0004\b\u000f\u0010\u0006R\u0016\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\t8\u0006@\u0007X\u0087T¢\u0006\f\n\u0004\b\u0011\u0010\u000b\u0012\u0004\b\u0012\u0010\u0006R\u0016\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0016\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004¨\u0006\u0016"}, d2 = {"Lkotlin/jvm/internal/CharCompanionObject;", "", "", "MAX_VALUE", "C", "getMAX_VALUE$annotations", "()V", "MIN_HIGH_SURROGATE", "MIN_LOW_SURROGATE", "", "SIZE_BITS", "I", "getSIZE_BITS$annotations", "MAX_SURROGATE", "MIN_VALUE", "getMIN_VALUE$annotations", "MAX_LOW_SURROGATE", "SIZE_BYTES", "getSIZE_BYTES$annotations", "MAX_HIGH_SURROGATE", "MIN_SURROGATE", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CharCompanionObject {
    @NotNull
    public static final CharCompanionObject INSTANCE = new CharCompanionObject();
    public static final char MAX_HIGH_SURROGATE = 56319;
    public static final char MAX_LOW_SURROGATE = 57343;
    public static final char MAX_SURROGATE = 57343;
    public static final char MAX_VALUE = 65535;
    public static final char MIN_HIGH_SURROGATE = 55296;
    public static final char MIN_LOW_SURROGATE = 56320;
    public static final char MIN_SURROGATE = 55296;
    public static final char MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;

    private CharCompanionObject() {
    }

    @SinceKotlin(version = "1.3")
    public static /* synthetic */ void getMAX_VALUE$annotations() {
    }

    @SinceKotlin(version = "1.3")
    public static /* synthetic */ void getMIN_VALUE$annotations() {
    }

    @SinceKotlin(version = "1.3")
    public static /* synthetic */ void getSIZE_BITS$annotations() {
    }

    @SinceKotlin(version = "1.3")
    public static /* synthetic */ void getSIZE_BYTES$annotations() {
    }
}
