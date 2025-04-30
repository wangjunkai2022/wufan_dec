package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aX\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\u0007\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\b\u0010\t\u001a\\\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\r\u0010\t\u001a^\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u000e\u0010\t\u001a^\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u000b0\u0002H\u0086\bø\u0001\u0000ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\u000f\u0010\t\u001a>\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\u0016\b\u0002\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0002\u001a\u001e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {"T", "Lkotlinx/coroutines/channels/n;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "exception", "onFailure", "e", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "value", "", "action", "h", com.sdk.a.g.f56552a, "f", "E", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "onUndeliveredElement", "Lkotlinx/coroutines/channels/k;", "b", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class m {
    @NotNull
    public static final <E> k<E> b(int i2, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        if (i2 == -2) {
            return new g(bufferOverflow == BufferOverflow.SUSPEND ? k.R.a() : 1, bufferOverflow, function1);
        } else if (i2 == -1) {
            if ((bufferOverflow != BufferOverflow.SUSPEND ? 0 : 1) != 0) {
                return new r(function1);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        } else if (i2 == 0) {
            if (bufferOverflow == BufferOverflow.SUSPEND) {
                return new z(function1);
            }
            return new g(1, bufferOverflow, function1);
        } else if (i2 != Integer.MAX_VALUE) {
            if (i2 == 1 && bufferOverflow == BufferOverflow.DROP_OLDEST) {
                return new r(function1);
            }
            return new g(i2, bufferOverflow, function1);
        } else {
            return new u(function1);
        }
    }

    public static /* synthetic */ k c(int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        return d(i2, null, null, 6, null);
    }

    public static /* synthetic */ k d(int i2, BufferOverflow bufferOverflow, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i4 & 4) != 0) {
            function1 = null;
        }
        return b(i2, bufferOverflow, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T e(@NotNull Object obj, @NotNull Function1<? super Throwable, ? extends T> function1) {
        return obj instanceof n.c ? function1.invoke(n.f(obj)) : obj;
    }

    @NotNull
    public static final <T> Object f(@NotNull Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        if (obj instanceof n.a) {
            function1.invoke(n.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object g(@NotNull Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        if (obj instanceof n.c) {
            function1.invoke(n.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object h(@NotNull Object obj, @NotNull Function1<? super T, Unit> function1) {
        if (!(obj instanceof n.c)) {
            function1.invoke(obj);
        }
        return obj;
    }
}
