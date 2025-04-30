package kotlinx.coroutines.channels;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087@\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0018 \u001fB\u0016\b\u0001\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0015\u001a\u00020\u00108F@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0017\u001a\u00020\u00108F@\u0006¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0014R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u0012\u0004\b\u001a\u0010\u001bR\u0013\u0010\u001e\u001a\u00020\u00108F@\u0006¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0014ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lkotlinx/coroutines/channels/n;", "T", "", "h", "(Ljava/lang/Object;)Ljava/lang/Object;", ai.aA, "", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "", "n", "(Ljava/lang/Object;)Ljava/lang/String;", "", "j", "(Ljava/lang/Object;)I", "other", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "k", "(Ljava/lang/Object;)Z", "isClosed", "l", "isFailure", "a", "Ljava/lang/Object;", "getHolder$annotations", "()V", "holder", "m", "isSuccess", ai.aD, "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes5.dex */
public final class n<T> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b f71081b = new b(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final c f71082c = new c();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Object f71083a;

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"kotlinx/coroutines/channels/n$a", "Lkotlinx/coroutines/channels/n$c;", "", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "", "a", "Ljava/lang/Throwable;", "cause", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends c {
        @JvmField
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f71084a;

        public a(@Nullable Throwable th) {
            this.f71084a = th;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof a) && Intrinsics.areEqual(this.f71084a, ((a) obj).f71084a);
        }

        public int hashCode() {
            Throwable th = this.f71084a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.n.c
        @NotNull
        public String toString() {
            return "Closed(" + this.f71084a + ')';
        }
    }

    /* compiled from: Channel.kt */
    @InternalCoroutinesApi
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J,\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0005\u0010\u0006J$\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u0002H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b\u0001\u0010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0012"}, d2 = {"kotlinx/coroutines/channels/n$b", "", "E", "value", "Lkotlinx/coroutines/channels/n;", ai.aD, "(Ljava/lang/Object;)Ljava/lang/Object;", "b", "()Ljava/lang/Object;", "", "cause", "a", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/n$c;", com.alipay.sdk.util.f.f9840h, "Lkotlinx/coroutines/channels/n$c;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object a(@Nullable Throwable th) {
            return n.c(new a(th));
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object b() {
            return n.c(n.f71082c);
        }

        @InternalCoroutinesApi
        @NotNull
        public final <E> Object c(E e4) {
            return n.c(e4);
        }
    }

    /* compiled from: Channel.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"kotlinx/coroutines/channels/n$c", "", "", "toString", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class c {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    @PublishedApi
    private /* synthetic */ n(Object obj) {
        this.f71083a = obj;
    }

    public static final /* synthetic */ n b(Object obj) {
        return new n(obj);
    }

    @PublishedApi
    @NotNull
    public static <T> Object c(@Nullable Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof n) && Intrinsics.areEqual(obj, ((n) obj2).o());
    }

    public static final boolean e(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @Nullable
    public static final Throwable f(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar == null) {
            return null;
        }
        return aVar.f71084a;
    }

    @PublishedApi
    public static /* synthetic */ void g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final T h(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T i(Object obj) {
        Throwable th;
        if (obj instanceof c) {
            if (!(obj instanceof a) || (th = ((a) obj).f71084a) == null) {
                throw new IllegalStateException(Intrinsics.stringPlus("Trying to call 'getOrThrow' on a failed channel result: ", obj).toString());
            }
            throw th;
        }
        return obj;
    }

    public static int j(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean k(Object obj) {
        return obj instanceof a;
    }

    public static final boolean l(Object obj) {
        return obj instanceof c;
    }

    public static final boolean m(Object obj) {
        return !(obj instanceof c);
    }

    @NotNull
    public static String n(Object obj) {
        if (obj instanceof a) {
            return obj.toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(o(), obj);
    }

    public int hashCode() {
        return j(o());
    }

    public final /* synthetic */ Object o() {
        return this.f71083a;
    }

    @NotNull
    public String toString() {
        return n(o());
    }
}
