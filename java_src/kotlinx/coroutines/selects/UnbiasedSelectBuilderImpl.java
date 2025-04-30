package kotlinx.coroutines.selects;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.selects.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectUnbiased.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b)\u0010*J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0001J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0001J5\u0010\f\u001a\u00020\u0005*\u00020\b2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tH\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJG\u0010\u0011\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u00028\u00010\u000f2\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0010H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J[\u0010\u0016\u001a\u00020\u0005\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\u000e*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u00012\"\u0010\u000b\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0010H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J8\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tH\u0016ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bR\u001f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R5\u0010'\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050#0\"j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050#`$8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010%\u001a\u0004\b\u001d\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;", "R", "Lkotlinx/coroutines/selects/a;", "", "e", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "b", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", ai.aE, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f9678l, "f", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "h", "(JLkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/selects/b;", "a", "Lkotlinx/coroutines/selects/b;", ai.aD, "()Lkotlinx/coroutines/selects/b;", "instance", "Ljava/util/ArrayList;", "Lkotlin/Function0;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "()Ljava/util/ArrayList;", "clauses", "uCont", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public final class UnbiasedSelectBuilderImpl<R> implements a<R> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b<R> f72401a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Function0<Unit>> f72402b = new ArrayList<>();

    public UnbiasedSelectBuilderImpl(@NotNull Continuation<? super R> continuation) {
        this.f72401a = new b<>(continuation);
    }

    @NotNull
    public final ArrayList<Function0<Unit>> a() {
        return this.f72402b;
    }

    @Override // kotlinx.coroutines.selects.a
    public void b(@NotNull final c cVar, @NotNull final Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f72402b.add(new Function0<Unit>() { // from class: kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$invoke$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                c.this.j(this.c(), function1);
            }
        });
    }

    @NotNull
    public final b<R> c() {
        return this.f72401a;
    }

    @PublishedApi
    public final void d(@NotNull Throwable th) {
        this.f72401a.m0(th);
    }

    @PublishedApi
    @Nullable
    public final Object e() {
        if (!this.f72401a.g()) {
            try {
                Collections.shuffle(this.f72402b);
                Iterator<T> it2 = this.f72402b.iterator();
                while (it2.hasNext()) {
                    ((Function0) it2.next()).invoke();
                }
            } catch (Throwable th) {
                this.f72401a.m0(th);
            }
        }
        return this.f72401a.l0();
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void f(@NotNull final e<? super P, ? extends Q> eVar, final P p3, @NotNull final Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f72402b.add(new Function0<Unit>() { // from class: kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$invoke$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                eVar.C(this.c(), p3, function2);
            }
        });
    }

    @Override // kotlinx.coroutines.selects.a
    public void h(final long j4, @NotNull final Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f72402b.add(new Function0<Unit>(this) { // from class: kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$onTimeout$1

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UnbiasedSelectBuilderImpl<R> f72413a;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.f72413a = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f72413a.c().h(j4, function1);
            }
        });
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void m(@NotNull e<? super P, ? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        a.C0476a.a(this, eVar, function2);
    }

    @Override // kotlinx.coroutines.selects.a
    public <Q> void u(@NotNull final d<? extends Q> dVar, @NotNull final Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        this.f72402b.add(new Function0<Unit>() { // from class: kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl$invoke$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                dVar.f(this.c(), function2);
            }
        });
    }
}
