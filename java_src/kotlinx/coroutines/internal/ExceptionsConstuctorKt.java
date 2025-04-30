package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExceptionsConstuctor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a#\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a*\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u0007j\u0004\u0018\u0001`\b2\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0002\u001a1\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b2\u0014\b\u0004\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\u0007H\u0082\b\u001a\u0018\u0010\u000f\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u001a\u001b\u0010\u0011\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\f2\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0082\u0010\"\u0016\u0010\u0013\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0012\"<\u0010\u0017\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00000\f\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007j\u0002`\b0\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\"\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0019*(\b\u0002\u0010\u001b\"\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u00072\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0007¨\u0006\u001c"}, d2 = {"", "E", "exception", "f", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Ljava/lang/reflect/Constructor;", "constructor", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "a", "block", "e", "Ljava/lang/Class;", "", "defaultValue", com.xinzhu.overmind.utils.helpers.d.f64708a, "accumulator", "b", "I", "throwableFields", "Ljava/util/WeakHashMap;", ai.aD, "Ljava/util/WeakHashMap;", "exceptionCtors", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "cacheLock", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ExceptionsConstuctorKt {

    /* renamed from: a  reason: collision with root package name */
    private static final int f72137a = d(Throwable.class, -1);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ReentrantReadWriteLock f72138b = new ReentrantReadWriteLock();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f72139c = new WeakHashMap<>();

    /* compiled from: Comparisons.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0010\b\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00018\u00008\u00002\u000e\u0010\u0003\u001a\n \u0001*\u0004\u0018\u00018\u00008\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", "kotlin.jvm.PlatformType", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t3, T t4) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((Constructor) t4).getParameterTypes().length), Integer.valueOf(((Constructor) t3).getParameterTypes().length));
            return compareValues;
        }
    }

    private static final Function1<Throwable, Throwable> a(final Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length != 0) {
            if (length != 1) {
                if (length == 2 && Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                    return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        /* renamed from: a */
                        public final Throwable invoke(@NotNull Throwable th) {
                            Object m24constructorimpl;
                            Object newInstance;
                            try {
                                Result.Companion companion = Result.Companion;
                                newInstance = constructor.newInstance(th.getMessage(), th);
                            } catch (Throwable th2) {
                                Result.Companion companion2 = Result.Companion;
                                m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th2));
                            }
                            if (newInstance != null) {
                                m24constructorimpl = Result.m24constructorimpl((Throwable) newInstance);
                                if (Result.m30isFailureimpl(m24constructorimpl)) {
                                    m24constructorimpl = null;
                                }
                                return (Throwable) m24constructorimpl;
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                        }
                    };
                }
                return null;
            }
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.areEqual(cls, Throwable.class)) {
                return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    /* renamed from: a */
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object m24constructorimpl;
                        Object newInstance;
                        try {
                            Result.Companion companion = Result.Companion;
                            newInstance = constructor.newInstance(th);
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.Companion;
                            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th2));
                        }
                        if (newInstance != null) {
                            m24constructorimpl = Result.m24constructorimpl((Throwable) newInstance);
                            if (Result.m30isFailureimpl(m24constructorimpl)) {
                                m24constructorimpl = null;
                            }
                            return (Throwable) m24constructorimpl;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                    }
                };
            }
            if (Intrinsics.areEqual(cls, String.class)) {
                return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    /* renamed from: a */
                    public final Throwable invoke(@NotNull Throwable th) {
                        Object m24constructorimpl;
                        Object newInstance;
                        try {
                            Result.Companion companion = Result.Companion;
                            newInstance = constructor.newInstance(th.getMessage());
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.Companion;
                            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th2));
                        }
                        if (newInstance != null) {
                            Throwable th3 = (Throwable) newInstance;
                            th3.initCause(th);
                            m24constructorimpl = Result.m24constructorimpl(th3);
                            if (Result.m30isFailureimpl(m24constructorimpl)) {
                                m24constructorimpl = null;
                            }
                            return (Throwable) m24constructorimpl;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
                    }
                };
            }
            return null;
        }
        return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* renamed from: a */
            public final Throwable invoke(@NotNull Throwable th) {
                Object m24constructorimpl;
                Object newInstance;
                try {
                    Result.Companion companion = Result.Companion;
                    newInstance = constructor.newInstance(new Object[0]);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th2));
                }
                if (newInstance != null) {
                    Throwable th3 = (Throwable) newInstance;
                    th3.initCause(th);
                    m24constructorimpl = Result.m24constructorimpl(th3);
                    if (Result.m30isFailureimpl(m24constructorimpl)) {
                        m24constructorimpl = null;
                    }
                    return (Throwable) m24constructorimpl;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
            }
        };
    }

    private static final int b(Class<?> cls, int i2) {
        do {
            int i4 = 0;
            for (Field field : cls.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i4++;
                }
            }
            i2 += i4;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i2;
    }

    static /* synthetic */ int c(Class cls, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        return b(cls, i2);
    }

    private static final int d(Class<?> cls, int i2) {
        Integer m24constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(Integer.valueOf(c(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i2);
        if (Result.m30isFailureimpl(m24constructorimpl)) {
            m24constructorimpl = valueOf;
        }
        return ((Number) m24constructorimpl).intValue();
    }

    private static final Function1<Throwable, Throwable> e(final Function1<? super Throwable, ? extends Throwable> function1) {
        return new Function1<Throwable, Throwable>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$safeCtor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* renamed from: a */
            public final Throwable invoke(@NotNull Throwable th) {
                Object m24constructorimpl;
                Function1<Throwable, Throwable> function12 = function1;
                try {
                    Result.Companion companion = Result.Companion;
                    m24constructorimpl = Result.m24constructorimpl(function12.invoke(th));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m30isFailureimpl(m24constructorimpl)) {
                    m24constructorimpl = null;
                }
                return (Throwable) m24constructorimpl;
            }
        };
    }

    @Nullable
    public static final <E extends Throwable> E f(@NotNull E e4) {
        Object m24constructorimpl;
        List sortedWith;
        ReentrantReadWriteLock.ReadLock readLock;
        int readHoldCount;
        ReentrantReadWriteLock.WriteLock writeLock;
        if (e4 instanceof kotlinx.coroutines.n0) {
            try {
                Result.Companion companion = Result.Companion;
                m24constructorimpl = Result.m24constructorimpl(((kotlinx.coroutines.n0) e4).a());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
            }
            return (E) (Result.m30isFailureimpl(m24constructorimpl) ? null : m24constructorimpl);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f72138b;
        ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
        readLock2.lock();
        try {
            Function1<Throwable, Throwable> function1 = f72139c.get(e4.getClass());
            if (function1 == null) {
                int i2 = 0;
                if (f72137a != d(e4.getClass(), 0)) {
                    readLock = reentrantReadWriteLock.readLock();
                    readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                    for (int i4 = 0; i4 < readHoldCount; i4++) {
                        readLock.unlock();
                    }
                    writeLock = reentrantReadWriteLock.writeLock();
                    writeLock.lock();
                    try {
                        f72139c.put(e4.getClass(), new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$4$1
                            @Override // kotlin.jvm.functions.Function1
                            @Nullable
                            /* renamed from: a */
                            public final Void invoke(@NotNull Throwable th2) {
                                return null;
                            }
                        });
                        Unit unit = Unit.INSTANCE;
                        return null;
                    } finally {
                        while (i2 < readHoldCount) {
                            readLock.lock();
                            i2++;
                        }
                        writeLock.unlock();
                    }
                }
                sortedWith = ArraysKt___ArraysKt.sortedWith(e4.getClass().getConstructors(), new a());
                Iterator it2 = sortedWith.iterator();
                Function1<Throwable, Throwable> function12 = null;
                while (it2.hasNext() && (function12 = a((Constructor) it2.next())) == null) {
                }
                ReentrantReadWriteLock reentrantReadWriteLock2 = f72138b;
                readLock = reentrantReadWriteLock2.readLock();
                readHoldCount = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i5 = 0; i5 < readHoldCount; i5++) {
                    readLock.unlock();
                }
                writeLock = reentrantReadWriteLock2.writeLock();
                writeLock.lock();
                try {
                    f72139c.put(e4.getClass(), function12 == null ? new Function1() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$5$1
                        @Override // kotlin.jvm.functions.Function1
                        @Nullable
                        /* renamed from: a */
                        public final Void invoke(@NotNull Throwable th2) {
                            return null;
                        }
                    } : function12);
                    Unit unit2 = Unit.INSTANCE;
                    while (i2 < readHoldCount) {
                        readLock.lock();
                        i2++;
                    }
                    writeLock.unlock();
                    if (function12 == null) {
                        return null;
                    }
                    return (E) function12.invoke(e4);
                } finally {
                    while (i2 < readHoldCount) {
                        readLock.lock();
                        i2++;
                    }
                    writeLock.unlock();
                }
            }
            return (E) function1.invoke(e4);
        } finally {
            readLock2.unlock();
        }
    }
}
