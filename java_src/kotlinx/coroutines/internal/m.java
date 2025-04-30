package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
/* compiled from: FastServiceLoader.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u001c\u0010\u0004\u001a\u00020\u00008\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0001\u0010\u0003¨\u0006\u0005"}, d2 = {"", "a", "Z", "()Z", "ANDROID_DETECTED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f72191a;

    static {
        Object m24constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        f72191a = Result.m31isSuccessimpl(m24constructorimpl);
    }

    public static final boolean a() {
        return f72191a;
    }
}
