package test;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AA.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a1\u0010\t\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002\u001a1\u0010\n\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002¨\u0006\u000b"}, d2 = {"", TypedValues.Custom.S_STRING, "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "type", "", "function", "a", "b", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5.dex */
public final class a {
    public static final void a(@NotNull String string, @NotNull Function1<? super Integer, Unit> function) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(function, "function");
        function.invoke(2);
        b(string, function);
    }

    public static final void b(@NotNull String string, @NotNull Function1<? super Integer, Unit> function) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(function, "function");
        function.invoke(1);
    }
}
