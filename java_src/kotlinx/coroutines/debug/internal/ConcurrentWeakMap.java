package kotlinx.coroutines.debug.internal;

import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.ai;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003\u0017(\u000eB\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020%¢\u0006\u0004\b&\u0010'J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u00002\b\u0010\t\u001a\u0004\u0018\u00018\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\u00052\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0012\u0010\u000bJ\u0019\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0007J\r\u0010\u0015\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0007R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R(\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\"0\u001a8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u001c¨\u0006)"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "K", "V", "Lkotlin/collections/AbstractMutableMap;", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "()V", "key", "value", "e", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/f;", "w", ai.aD, "(Lkotlinx/coroutines/debug/internal/f;)V", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "remove", "clear", "f", "Ljava/lang/ref/ReferenceQueue;", "a", "Ljava/lang/ref/ReferenceQueue;", "weakRefQueue", "", "getKeys", "()Ljava/util/Set;", COSHttpResponseKey.Data.KEYS, "", "getSize", "()I", "size", "", "getEntries", "entries", "", "<init>", "(Z)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f71110b = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size");
    @NotNull
    private volatile /* synthetic */ int _size;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final ReferenceQueue<K> f71111a;
    @NotNull
    volatile /* synthetic */ Object core;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\n\b\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010!\u001a\u00020\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00028\u00002\b\u0010\r\u001a\u0004\u0018\u00018\u00012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00120\u0012R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u000e¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00020\u001c\"\u0004\b\u0002\u0010\u00192\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001a¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010 R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010 ¨\u0006&"}, d2 = {"kotlinx/coroutines/debug/internal/ConcurrentWeakMap$a", "", "", "hash", com.xinzhu.overmind.utils.helpers.d.f64708a, "(I)I", "index", "", ai.aA, "(I)V", "key", ai.aD, "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "Lkotlinx/coroutines/debug/internal/f;", "weakKey0", "f", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/f;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "h", "()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;", "weakRef", "b", "(Lkotlinx/coroutines/debug/internal/f;)V", "E", "Lkotlin/Function2;", "factory", "", "e", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", "a", "I", "allocated", "shift", "threshold", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class a {

        /* renamed from: g  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f71112g = AtomicIntegerFieldUpdater.newUpdater(a.class, "load");

        /* renamed from: a  reason: collision with root package name */
        private final int f71113a;

        /* renamed from: b  reason: collision with root package name */
        private final int f71114b;

        /* renamed from: c  reason: collision with root package name */
        private final int f71115c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ AtomicReferenceArray f71116d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ AtomicReferenceArray f71117e;
        @NotNull
        private volatile /* synthetic */ int load = 0;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ConcurrentWeakMap.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0006\u001a\u00020\u0005H\u0096\u0002J\u0010\u0010\u0007\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016R\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\fR\u0016\u0010\u0010\u001a\u00028\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR(\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R\u0016\u0010\u0015\u001a\u00028\u00008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u000f¨\u0006\u0018"}, d2 = {"kotlinx/coroutines/debug/internal/ConcurrentWeakMap$a$a", "E", "", "", "a", "", "hasNext", "next", "()Ljava/lang/Object;", "", "b", "", "I", "index", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "value", "Lkotlin/Function2;", "Lkotlin/jvm/functions/Function2;", "factory", ai.aD, "key", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$a;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public final class C0475a<E> implements Iterator<E>, KMutableIterator {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final Function2<K, V, E> f71119a;

            /* renamed from: b  reason: collision with root package name */
            private int f71120b = -1;

            /* renamed from: c  reason: collision with root package name */
            private K f71121c;

            /* renamed from: d  reason: collision with root package name */
            private V f71122d;

            /* JADX WARN: Multi-variable type inference failed */
            public C0475a(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
                this.f71119a = function2;
                a();
            }

            private final void a() {
                while (true) {
                    int i2 = this.f71120b + 1;
                    this.f71120b = i2;
                    if (i2 >= ((a) a.this).f71113a) {
                        return;
                    }
                    f fVar = (f) a.this.f71116d.get(this.f71120b);
                    K k4 = fVar == null ? null : (K) fVar.get();
                    if (k4 != null) {
                        this.f71121c = k4;
                        V v3 = (V) a.this.f71117e.get(this.f71120b);
                        if (v3 instanceof g) {
                            v3 = (V) ((g) v3).f71188a;
                        }
                        if (v3 != null) {
                            this.f71122d = v3;
                            return;
                        }
                    }
                }
            }

            @Override // java.util.Iterator
            @NotNull
            /* renamed from: b */
            public Void remove() {
                kotlinx.coroutines.debug.internal.a.e();
                throw new KotlinNothingValueException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f71120b < ((a) a.this).f71113a;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f71120b < ((a) a.this).f71113a) {
                    Function2<K, V, E> function2 = this.f71119a;
                    K k4 = this.f71121c;
                    if (k4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("key");
                        throw null;
                    }
                    V v3 = this.f71122d;
                    if (v3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("value");
                        throw null;
                    }
                    E invoke = function2.invoke(k4, v3);
                    a();
                    return invoke;
                }
                throw new NoSuchElementException();
            }
        }

        public a(int i2) {
            this.f71113a = i2;
            this.f71114b = Integer.numberOfLeadingZeros(i2) + 1;
            this.f71115c = (i2 * 2) / 3;
            this.f71116d = new AtomicReferenceArray(i2);
            this.f71117e = new AtomicReferenceArray(i2);
        }

        private final int d(int i2) {
            return (i2 * (-1640531527)) >>> this.f71114b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object g(a aVar, Object obj, Object obj2, f fVar, int i2, Object obj3) {
            if ((i2 & 4) != 0) {
                fVar = null;
            }
            return aVar.f(obj, obj2, fVar);
        }

        private final void i(int i2) {
            Object obj;
            do {
                obj = this.f71117e.get(i2);
                if (obj == null || (obj instanceof g)) {
                    return;
                }
            } while (!this.f71117e.compareAndSet(i2, obj, null));
            ConcurrentWeakMap.this.d();
        }

        public final void b(@NotNull f<?> fVar) {
            int d4 = d(fVar.f71187a);
            while (true) {
                f<?> fVar2 = (f) this.f71116d.get(d4);
                if (fVar2 == null) {
                    return;
                }
                if (fVar2 == fVar) {
                    i(d4);
                    return;
                }
                if (d4 == 0) {
                    d4 = this.f71113a;
                }
                d4--;
            }
        }

        @Nullable
        public final V c(@NotNull K k4) {
            int d4 = d(k4.hashCode());
            while (true) {
                f fVar = (f) this.f71116d.get(d4);
                if (fVar == null) {
                    return null;
                }
                T t3 = fVar.get();
                if (Intrinsics.areEqual(k4, t3)) {
                    V v3 = (V) this.f71117e.get(d4);
                    return v3 instanceof g ? (V) ((g) v3).f71188a : v3;
                }
                if (t3 == 0) {
                    i(d4);
                }
                if (d4 == 0) {
                    d4 = this.f71113a;
                }
                d4--;
            }
        }

        @NotNull
        public final <E> Iterator<E> e(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            return new C0475a(function2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
            r6 = r5.f71117e.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
            if ((r6 instanceof kotlinx.coroutines.debug.internal.g) == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
            r6 = kotlinx.coroutines.debug.internal.a.f71173c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
            if (r5.f71117e.compareAndSet(r0, r6, r7) == false) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
            return r6;
         */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object f(@org.jetbrains.annotations.NotNull K r6, @org.jetbrains.annotations.Nullable V r7, @org.jetbrains.annotations.Nullable kotlinx.coroutines.debug.internal.f<K> r8) {
            /*
                r5 = this;
                int r0 = r6.hashCode()
                int r0 = r5.d(r0)
                r1 = 0
            L9:
                java.util.concurrent.atomic.AtomicReferenceArray r2 = r5.f71116d
                java.lang.Object r2 = r2.get(r0)
                kotlinx.coroutines.debug.internal.f r2 = (kotlinx.coroutines.debug.internal.f) r2
                if (r2 != 0) goto L45
                r2 = 0
                if (r7 != 0) goto L17
                return r2
            L17:
                if (r1 != 0) goto L2f
            L19:
                int r1 = r5.load
                int r3 = r5.f71115c
                if (r1 < r3) goto L24
                kotlinx.coroutines.internal.i0 r6 = kotlinx.coroutines.debug.internal.a.a()
                return r6
            L24:
                int r3 = r1 + 1
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r4 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.a.f71112g
                boolean r1 = r4.compareAndSet(r5, r1, r3)
                if (r1 == 0) goto L19
                r1 = 1
            L2f:
                if (r8 != 0) goto L3c
                kotlinx.coroutines.debug.internal.f r8 = new kotlinx.coroutines.debug.internal.f
                kotlinx.coroutines.debug.internal.ConcurrentWeakMap<K, V> r3 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.this
                java.lang.ref.ReferenceQueue r3 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.b(r3)
                r8.<init>(r6, r3)
            L3c:
                java.util.concurrent.atomic.AtomicReferenceArray r3 = r5.f71116d
                boolean r2 = r3.compareAndSet(r0, r2, r8)
                if (r2 == 0) goto L9
                goto L56
            L45:
                java.lang.Object r2 = r2.get()
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
                if (r3 == 0) goto L6e
                if (r1 == 0) goto L56
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r6 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.a.f71112g
                r6.decrementAndGet(r5)
            L56:
                java.util.concurrent.atomic.AtomicReferenceArray r6 = r5.f71117e
                java.lang.Object r6 = r6.get(r0)
                boolean r8 = r6 instanceof kotlinx.coroutines.debug.internal.g
                if (r8 == 0) goto L65
                kotlinx.coroutines.internal.i0 r6 = kotlinx.coroutines.debug.internal.a.a()
                return r6
            L65:
                java.util.concurrent.atomic.AtomicReferenceArray r8 = r5.f71117e
                boolean r8 = r8.compareAndSet(r0, r6, r7)
                if (r8 == 0) goto L56
                return r6
            L6e:
                if (r2 != 0) goto L73
                r5.i(r0)
            L73:
                if (r0 != 0) goto L77
                int r0 = r5.f71113a
            L77:
                int r0 = r0 + (-1)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.ConcurrentWeakMap.a.f(java.lang.Object, java.lang.Object, kotlinx.coroutines.debug.internal.f):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final ConcurrentWeakMap<K, V>.a h() {
            int coerceAtLeast;
            ConcurrentWeakMap<K, V>.a aVar;
            Object obj;
            i0 i0Var;
            g d4;
            loop0: while (true) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(ConcurrentWeakMap.this.size(), 4);
                aVar = (ConcurrentWeakMap<K, V>.a) new a(Integer.highestOneBit(coerceAtLeast) * 4);
                int i2 = 0;
                int i4 = this.f71113a;
                if (i4 <= 0) {
                    break;
                }
                while (true) {
                    int i5 = i2 + 1;
                    f fVar = (f) this.f71116d.get(i2);
                    Object obj2 = fVar == null ? null : fVar.get();
                    if (fVar != null && obj2 == null) {
                        i(i2);
                    }
                    while (true) {
                        obj = this.f71117e.get(i2);
                        if (obj instanceof g) {
                            obj = ((g) obj).f71188a;
                            break;
                        }
                        AtomicReferenceArray atomicReferenceArray = this.f71117e;
                        d4 = kotlinx.coroutines.debug.internal.a.d(obj);
                        if (atomicReferenceArray.compareAndSet(i2, obj, d4)) {
                            break;
                        }
                    }
                    if (obj2 != null && obj != null) {
                        Object f4 = aVar.f(obj2, obj, fVar);
                        i0Var = kotlinx.coroutines.debug.internal.a.f71173c;
                        if (f4 == i0Var) {
                            break;
                        }
                    }
                    if (i5 >= i4) {
                        break loop0;
                    }
                    i2 = i5;
                }
            }
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u000e\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B\u0017\u0012\u0006\u0010\u000b\u001a\u00028\u0002\u0012\u0006\u0010\u000e\u001a\u00028\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00028\u00032\u0006\u0010\u0004\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u000b\u001a\u00028\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000e\u001a\u00028\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"kotlinx/coroutines/debug/internal/ConcurrentWeakMap$b", "K", "V", "", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "a", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", "key", "b", "getValue", "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: a  reason: collision with root package name */
        private final K f71124a;

        /* renamed from: b  reason: collision with root package name */
        private final V f71125b;

        public b(K k4, V v3) {
            this.f71124a = k4;
            this.f71125b = v3;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f71124a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f71125b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v3) {
            kotlinx.coroutines.debug.internal.a.e();
            throw new KotlinNothingValueException();
        }
    }

    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007H\u0096\u0002R\u0016\u0010\f\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR(\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"kotlinx/coroutines/debug/internal/ConcurrentWeakMap$c", "E", "Lkotlin/collections/AbstractMutableSet;", "element", "", "add", "(Ljava/lang/Object;)Z", "", "iterator", "", "getSize", "()I", "size", "Lkotlin/Function2;", "a", "Lkotlin/jvm/functions/Function2;", "factory", "<init>", "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private final class c<E> extends AbstractMutableSet<E> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Function2<K, V, E> f71126a;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@NotNull Function2<? super K, ? super V, ? extends E> function2) {
            this.f71126a = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e4) {
            kotlinx.coroutines.debug.internal.a.e();
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int getSize() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @NotNull
        public Iterator<E> iterator() {
            return ((a) ConcurrentWeakMap.this.core).e(this.f71126a);
        }
    }

    public ConcurrentWeakMap() {
        this(false, 1, null);
    }

    public /* synthetic */ ConcurrentWeakMap(boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z3);
    }

    private final void c(f<?> fVar) {
        ((a) this.core).b(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        f71110b.decrementAndGet(this);
    }

    private final synchronized V e(K k4, V v3) {
        V v4;
        i0 i0Var;
        a aVar = (a) this.core;
        while (true) {
            v4 = (V) a.g(aVar, k4, v3, null, 4, null);
            i0Var = kotlinx.coroutines.debug.internal.a.f71173c;
            if (v4 == i0Var) {
                aVar = aVar.h();
                this.core = aVar;
            }
        }
        return v4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (K k4 : keySet()) {
            remove(k4);
        }
    }

    public final void f() {
        if (!(this.f71111a != null)) {
            throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
        }
        while (true) {
            try {
                Reference<? extends K> remove = this.f71111a.remove();
                if (remove == null) {
                    break;
                }
                c((f) remove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return (V) ((a) this.core).c(obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<Map.Entry<K, V>> getEntries() {
        return new c(new Function2<K, V, Map.Entry<K, V>>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$entries$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            /* renamed from: a */
            public final Map.Entry<K, V> invoke(@NotNull K k4, @NotNull V v3) {
                return new ConcurrentWeakMap.b(k4, v3);
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    @NotNull
    public Set<K> getKeys() {
        return new c(new Function2<K, V, K>() { // from class: kotlinx.coroutines.debug.internal.ConcurrentWeakMap$keys$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final K invoke(@NotNull K k4, @NotNull V v3) {
                return k4;
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return this._size;
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(@NotNull K k4, @NotNull V v3) {
        i0 i0Var;
        V v4 = (V) a.g((a) this.core, k4, v3, null, 4, null);
        i0Var = kotlinx.coroutines.debug.internal.a.f71173c;
        if (v4 == i0Var) {
            v4 = e(k4, v3);
        }
        if (v4 == null) {
            f71110b.incrementAndGet(this);
        }
        return v4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(@Nullable Object obj) {
        i0 i0Var;
        if (obj == 0) {
            return null;
        }
        V v3 = (V) a.g((a) this.core, obj, null, null, 4, null);
        i0Var = kotlinx.coroutines.debug.internal.a.f71173c;
        if (v3 == i0Var) {
            v3 = e(obj, null);
        }
        if (v3 != null) {
            f71110b.decrementAndGet(this);
        }
        return v3;
    }

    public ConcurrentWeakMap(boolean z3) {
        this._size = 0;
        this.core = new a(16);
        this.f71111a = z3 ? new ReferenceQueue<>() : null;
    }
}
