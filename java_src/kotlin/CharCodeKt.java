package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.CharCompanionObject;
/* compiled from: CharCode.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0002\b\u0006\u001a\u0011\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\"!\u0010\u0001\u001a\u00020\u0000*\u00020\u00028Æ\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"", "code", "", "Char", "getCode", "(C)I", "getCode$annotations", "(C)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CharCodeKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final char Char(int i2) {
        if (i2 < getCode((char) 0) || i2 > getCode(CharCompanionObject.MAX_VALUE)) {
            throw new IllegalArgumentException("Invalid Char code: " + i2);
        }
        return (char) i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getCode(char c4) {
        return c4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    public static /* synthetic */ void getCode$annotations(char c4) {
    }
}
