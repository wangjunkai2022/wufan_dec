package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InlineList.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0081@\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0003\u001a\u00028\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\t\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006H\u0086\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/internal/n;", "E", "", "element", "h", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function1;", "", "action", "f", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "", ai.aA, "(Ljava/lang/Object;)Ljava/lang/String;", "", com.sdk.a.g.f56552a, "(Ljava/lang/Object;)I", "other", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "a", "Ljava/lang/Object;", "holder", "b", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes5.dex */
public final class n<E> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Object f72192a;

    private /* synthetic */ n(Object obj) {
        this.f72192a = obj;
    }

    public static final /* synthetic */ n a(Object obj) {
        return new n(obj);
    }

    @NotNull
    public static <E> Object b(@Nullable Object obj) {
        return obj;
    }

    public static /* synthetic */ Object c(Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            obj = null;
        }
        return b(obj);
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof n) && Intrinsics.areEqual(obj, ((n) obj2).j());
    }

    public static final boolean e(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    public static final void f(Object obj, @NotNull Function1<? super E, Unit> function1) {
        if (obj == null) {
            return;
        }
        if (!(obj instanceof ArrayList)) {
            function1.invoke(obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        int size = arrayList.size() - 1;
        if (size < 0) {
            return;
        }
        while (true) {
            int i2 = size - 1;
            function1.invoke((Object) arrayList.get(size));
            if (i2 < 0) {
                return;
            }
            size = i2;
        }
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @NotNull
    public static final Object h(Object obj, E e4) {
        if (!v0.b() || (!(e4 instanceof List))) {
            if (obj == null) {
                return b(e4);
            }
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(e4);
                return b(obj);
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(obj);
            arrayList.add(e4);
            return b(arrayList);
        }
        throw new AssertionError();
    }

    public static String i(Object obj) {
        return "InlineList(holder=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(j(), obj);
    }

    public int hashCode() {
        return g(j());
    }

    public final /* synthetic */ Object j() {
        return this.f72192a;
    }

    public String toString() {
        return i(j());
    }
}
