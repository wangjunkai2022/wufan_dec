package kotlin.text;

import com.alipay.security.mobile.module.commonutils.crypto.a;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Charsets.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0013\u0010\b\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0013\u0010\u000b\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u0007R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0016\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0016\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0013\u0010\u0013\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0007¨\u0006\u0016"}, d2 = {"Lkotlin/text/Charsets;", "", "Ljava/nio/charset/Charset;", "UTF_16LE", "Ljava/nio/charset/Charset;", "utf_32", "UTF32_LE", "()Ljava/nio/charset/Charset;", "UTF_32LE", "UTF_16", "UTF32_BE", "UTF_32BE", "utf_32be", "US_ASCII", "UTF_8", "utf_32le", "UTF_16BE", "ISO_8859_1", "UTF32", "UTF_32", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class Charsets {
    @NotNull
    public static final Charsets INSTANCE = new Charsets();
    @JvmField
    @NotNull
    public static final Charset ISO_8859_1;
    @JvmField
    @NotNull
    public static final Charset US_ASCII;
    @JvmField
    @NotNull
    public static final Charset UTF_16;
    @JvmField
    @NotNull
    public static final Charset UTF_16BE;
    @JvmField
    @NotNull
    public static final Charset UTF_16LE;
    @JvmField
    @NotNull
    public static final Charset UTF_8;
    private static Charset utf_32;
    private static Charset utf_32be;
    private static Charset utf_32le;

    static {
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(\"UTF-8\")");
        UTF_8 = forName;
        Charset forName2 = Charset.forName("UTF-16");
        Intrinsics.checkNotNullExpressionValue(forName2, "Charset.forName(\"UTF-16\")");
        UTF_16 = forName2;
        Charset forName3 = Charset.forName("UTF-16BE");
        Intrinsics.checkNotNullExpressionValue(forName3, "Charset.forName(\"UTF-16BE\")");
        UTF_16BE = forName3;
        Charset forName4 = Charset.forName("UTF-16LE");
        Intrinsics.checkNotNullExpressionValue(forName4, "Charset.forName(\"UTF-16LE\")");
        UTF_16LE = forName4;
        Charset forName5 = Charset.forName(a.f9882b);
        Intrinsics.checkNotNullExpressionValue(forName5, "Charset.forName(\"US-ASCII\")");
        US_ASCII = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        Intrinsics.checkNotNullExpressionValue(forName6, "Charset.forName(\"ISO-8859-1\")");
        ISO_8859_1 = forName6;
    }

    private Charsets() {
    }

    @JvmName(name = "UTF32")
    @NotNull
    public final Charset UTF32() {
        Charset charset = utf_32;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32");
        Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(\"UTF-32\")");
        utf_32 = forName;
        return forName;
    }

    @JvmName(name = "UTF32_BE")
    @NotNull
    public final Charset UTF32_BE() {
        Charset charset = utf_32be;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32BE");
        Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(\"UTF-32BE\")");
        utf_32be = forName;
        return forName;
    }

    @JvmName(name = "UTF32_LE")
    @NotNull
    public final Charset UTF32_LE() {
        Charset charset = utf_32le;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32LE");
        Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(\"UTF-32LE\")");
        utf_32le = forName;
        return forName;
    }
}
