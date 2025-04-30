package kotlinx.coroutines.flow;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import kotlin.sequences.Sequence;
import kotlin.time.Duration;
import kotlin.time.ExperimentalTime;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt", "kotlinx/coroutines/flow/FlowKt__ChannelsKt", "kotlinx/coroutines/flow/FlowKt__CollectKt", "kotlinx/coroutines/flow/FlowKt__CollectionKt", "kotlinx/coroutines/flow/i", "kotlinx/coroutines/flow/FlowKt__CountKt", "kotlinx/coroutines/flow/FlowKt__DelayKt", "kotlinx/coroutines/flow/FlowKt__DistinctKt", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__ErrorsKt", "kotlinx/coroutines/flow/FlowKt__LimitKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__MigrationKt", "kotlinx/coroutines/flow/FlowKt__ReduceKt", "kotlinx/coroutines/flow/FlowKt__ShareKt", "kotlinx/coroutines/flow/FlowKt__TransformKt", "kotlinx/coroutines/flow/FlowKt__ZipKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f71937a = "kotlinx.coroutines.flow.defaultConcurrency";

    @Nullable
    public static final <T> Object A(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.b(fVar, function2, continuation);
    }

    @Nullable
    public static final <S, T extends S> Object A1(@NotNull f<? extends T> fVar, @NotNull Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, @NotNull Continuation<? super S> continuation) {
        return FlowKt__ReduceKt.i(fVar, function3, continuation);
    }

    @Nullable
    public static final <T> Object B(@NotNull f<? extends T> fVar, @NotNull Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.d(fVar, function3, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> f<R> B0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super f<? extends R>>, ? extends Object> function2) {
        return FlowKt__MigrationKt.l(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay()' is 'shareIn' with unlimited replay. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, Int.MAX_VALUE)", imports = {}))
    @NotNull
    public static final <T> f<T> B1(@NotNull f<? extends T> fVar) {
        return FlowKt__MigrationKt.z(fVar);
    }

    @Nullable
    public static final <T> Object C(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.f(fVar, function2, continuation);
    }

    @FlowPreview
    @NotNull
    public static final <T, R> f<R> C0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super f<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.a(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay(bufferSize)' is 'shareIn' with the specified replay parameter. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStared.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, bufferSize)", imports = {}))
    @NotNull
    public static final <T> f<T> C1(@NotNull f<? extends T> fVar, int i2) {
        return FlowKt__MigrationKt.A(fVar, i2);
    }

    @Nullable
    public static final <T> Object D(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__LimitKt.b(fVar, function2, continuation);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> D0(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super f<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.b(fVar, function2);
    }

    @FlowPreview
    @NotNull
    public static final <T, R> f<R> E0(@NotNull f<? extends T> fVar, int i2, @NotNull Function2<? super T, ? super Continuation<? super f<? extends R>>, ? extends Object> function2) {
        return FlowKt__MergeKt.c(fVar, i2, function2);
    }

    @NotNull
    public static final <T> f<T> E1(@NotNull f<? extends T> fVar, long j4, @NotNull Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__ErrorsKt.i(fVar, j4, function2);
    }

    @NotNull
    public static final <T1, T2, R> f<R> F(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.c(fVar, fVar2, function3);
    }

    @NotNull
    public static final <T1, T2, T3, R> f<R> G(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @BuilderInference @NotNull Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        return FlowKt__ZipKt.d(fVar, fVar2, fVar3, function4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'flatten' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> f<T> G0(@NotNull f<? extends f<? extends T>> fVar) {
        return FlowKt__MigrationKt.m(fVar);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> f<R> H(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        return FlowKt__ZipKt.e(fVar, fVar2, fVar3, fVar4, function5);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> H0(@NotNull f<? extends f<? extends T>> fVar) {
        return FlowKt__MergeKt.e(fVar);
    }

    @NotNull
    public static final <T> f<T> H1(@NotNull f<? extends T> fVar, @NotNull Function4<? super g<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return FlowKt__ErrorsKt.l(fVar, function4);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> f<R> I(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull f<? extends T5> fVar5, @NotNull Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        return FlowKt__ZipKt.f(fVar, fVar2, fVar3, fVar4, fVar5, function6);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> I0(@NotNull f<? extends f<? extends T>> fVar, int i2) {
        return FlowKt__MergeKt.f(fVar, i2);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> I1(@NotNull f<? extends T> fVar, R r3, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__TransformKt.h(fVar, r3, function3);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> f<T> J1(@NotNull f<? extends T> fVar, @NotNull Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return FlowKt__TransformKt.i(fVar, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "this.combine(other, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, R> f<R> K(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__MigrationKt.b(fVar, fVar2, function3);
    }

    @NotNull
    public static final <T> f<T> K0(@BuilderInference @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.n(function2);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> K1(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__DelayKt.h(fVar, j4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, R> f<R> L(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        return FlowKt__MigrationKt.c(fVar, fVar2, fVar3, function4);
    }

    @JvmName(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> f<R> L0(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.p(fVar, fVar2, function3);
    }

    @FlowPreview
    @ExperimentalTime
    @NotNull
    public static final <T> f<T> L1(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__DelayKt.i(fVar, j4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, R> f<R> M(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        return FlowKt__MigrationKt.d(fVar, fVar2, fVar3, fVar4, function5);
    }

    @JvmName(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> f<R> M0(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @BuilderInference @NotNull Function4<? super g<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return FlowKt__ZipKt.q(fVar, fVar2, function4);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> M1(@NotNull f<? extends T> fVar, R r3, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__TransformKt.j(fVar, r3, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, T5, R> f<R> N(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull f<? extends T5> fVar5, @NotNull Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        return FlowKt__MigrationKt.e(fVar, fVar2, fVar3, fVar4, fVar5, function6);
    }

    @NotNull
    public static final <T> f<T> N0(T t3) {
        return FlowKt__BuildersKt.o(t3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow has less verbose 'scan' shortcut", replaceWith = @ReplaceWith(expression = "scan(initial, operation)", imports = {}))
    @NotNull
    public static final <T, R> f<R> N1(@NotNull f<? extends T> fVar, R r3, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__MigrationKt.B(fVar, r3, function3);
    }

    @NotNull
    public static final <T> f<T> O0(@NotNull T... tArr) {
        return FlowKt__BuildersKt.p(tArr);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "'scanReduce' was renamed to 'runningReduce' to be consistent with Kotlin standard library", replaceWith = @ReplaceWith(expression = "runningReduce(operation)", imports = {}))
    @NotNull
    public static final <T> f<T> O1(@NotNull f<? extends T> fVar, @NotNull Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return FlowKt__MigrationKt.C(fVar, function3);
    }

    @NotNull
    public static final <T1, T2, R> f<R> P(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @BuilderInference @NotNull Function4<? super g<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return FlowKt__ZipKt.i(fVar, fVar2, function4);
    }

    @NotNull
    public static final <T> f<T> P0(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext) {
        return i.h(fVar, coroutineContext);
    }

    @NotNull
    public static final <T> o<T> P1(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull s sVar, int i2) {
        return FlowKt__ShareKt.g(fVar, t0Var, sVar, i2);
    }

    @NotNull
    public static final <T1, T2, T3, R> f<R> Q(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @BuilderInference @NotNull Function5<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super Continuation<? super Unit>, ? extends Object> function5) {
        return FlowKt__ZipKt.j(fVar, fVar2, fVar3, function5);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use channelFlow with awaitClose { } instead of flowViaChannel and invokeOnClose { }.")
    @FlowPreview
    @NotNull
    public static final <T> f<T> Q0(int i2, @BuilderInference @NotNull Function2<? super t0, ? super b0<? super T>, Unit> function2) {
        return FlowKt__BuildersKt.q(i2, function2);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> f<R> R(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @BuilderInference @NotNull Function6<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super Unit>, ? extends Object> function6) {
        return FlowKt__ZipKt.k(fVar, fVar2, fVar3, fVar4, function6);
    }

    @Nullable
    public static final <T> Object R1(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.j(fVar, continuation);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> f<R> S(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull f<? extends T3> fVar3, @NotNull f<? extends T4> fVar4, @NotNull f<? extends T5> fVar5, @BuilderInference @NotNull Function7<? super g<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super Unit>, ? extends Object> function7) {
        return FlowKt__ZipKt.l(fVar, fVar2, fVar3, fVar4, fVar5, function7);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "flowWith is deprecated without replacement, please refer to its KDoc for an explanation")
    @FlowPreview
    @NotNull
    public static final <T, R> f<R> S0(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull Function1<? super f<? extends T>, ? extends f<? extends R>> function1) {
        return i.i(fVar, coroutineContext, i2, function1);
    }

    @Nullable
    public static final <T> Object S1(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.k(fVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'skip' is 'drop'", replaceWith = @ReplaceWith(expression = "drop(count)", imports = {}))
    @NotNull
    public static final <T> f<T> T1(@NotNull f<? extends T> fVar, int i2) {
        return FlowKt__MigrationKt.D(fVar, i2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'compose' is 'let'", replaceWith = @ReplaceWith(expression = "let(transformer)", imports = {}))
    @NotNull
    public static final <T, R> f<R> U(@NotNull f<? extends T> fVar, @NotNull Function1<? super f<? extends T>, ? extends f<? extends R>> function1) {
        return FlowKt__MigrationKt.f(fVar, function1);
    }

    @Nullable
    public static final <T, R> Object U0(@NotNull f<? extends T> fVar, R r3, @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, @NotNull Continuation<? super R> continuation) {
        return FlowKt__ReduceKt.e(fVar, r3, function3, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emit(value) }'", replaceWith = @ReplaceWith(expression = "onStart { emit(value) }", imports = {}))
    @NotNull
    public static final <T> f<T> U1(@NotNull f<? extends T> fVar, T t3) {
        return FlowKt__MigrationKt.E(fVar, t3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatMap' is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> f<R> V(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, ? extends f<? extends R>> function1) {
        return FlowKt__MigrationKt.g(fVar, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'forEach' is 'collect'", replaceWith = @ReplaceWith(expression = "collect(block)", imports = {}))
    public static final <T> void V0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        FlowKt__MigrationKt.n(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onStart { emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> f<T> V1(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2) {
        return FlowKt__MigrationKt.F(fVar, fVar2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { emit(value) }'", replaceWith = @ReplaceWith(expression = "onCompletion { emit(value) }", imports = {}))
    @NotNull
    public static final <T> f<T> W(@NotNull f<? extends T> fVar, T t3) {
        return FlowKt__MigrationKt.h(fVar, t3);
    }

    public static final int W0() {
        return FlowKt__MergeKt.h();
    }

    @Nullable
    public static final <T> Object W1(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull Continuation<? super v<? extends T>> continuation) {
        return FlowKt__ShareKt.i(fVar, t0Var, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { if (it == null) emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onCompletion { if (it == null) emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> f<T> X(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2) {
        return FlowKt__MigrationKt.i(fVar, fVar2);
    }

    @NotNull
    public static final <T> v<T> X1(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull s sVar, T t3) {
        return FlowKt__ShareKt.j(fVar, t0Var, sVar, t3);
    }

    @NotNull
    public static final <T> f<T> Y(@NotNull f<? extends T> fVar) {
        return i.g(fVar);
    }

    @Nullable
    public static final <T> Object Y0(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.g(fVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void Y1(@NotNull f<? extends T> fVar) {
        FlowKt__MigrationKt.G(fVar);
    }

    @NotNull
    public static final <T> f<T> Z(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return FlowKt__ChannelsKt.e(receiveChannel);
    }

    @Nullable
    public static final <T> Object Z0(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.h(fVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void Z1(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        FlowKt__MigrationKt.H(fVar, function2);
    }

    @NotNull
    public static final <T> f<T> a(@NotNull Iterable<? extends T> iterable) {
        return FlowKt__BuildersKt.a(iterable);
    }

    @Nullable
    public static final <T> Object a0(@NotNull f<? extends T> fVar, @NotNull Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.a(fVar, continuation);
    }

    @NotNull
    public static final <T> c2 a1(@NotNull f<? extends T> fVar, @NotNull t0 t0Var) {
        return FlowKt__CollectKt.h(fVar, t0Var);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void a2(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Function2<? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function22) {
        FlowKt__MigrationKt.I(fVar, function2, function22);
    }

    @NotNull
    public static final <T> f<T> b(@NotNull Iterator<? extends T> it2) {
        return FlowKt__BuildersKt.b(it2);
    }

    @Nullable
    public static final <T> Object b0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.b(fVar, function2, continuation);
    }

    @NotNull
    public static final <T, R> f<R> b1(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__TransformKt.e(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'flowOn' instead")
    @NotNull
    public static final <T> f<T> b2(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.J(fVar, coroutineContext);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> c(@NotNull Function0<? extends T> function0) {
        return FlowKt__BuildersKt.c(function0);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> c0(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__DelayKt.a(fVar, j4);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> c1(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__MergeKt.k(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogues of 'switchMap' are 'transformLatest', 'flatMapLatest' and 'mapLatest'", replaceWith = @ReplaceWith(expression = "this.flatMapLatest(transform)", imports = {}))
    @NotNull
    public static final <T, R> f<R> c2(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super f<? extends R>>, ? extends Object> function2) {
        return FlowKt__MigrationKt.K(fVar, function2);
    }

    @FlowPreview
    @NotNull
    public static final <T> f<T> d(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1) {
        return FlowKt__BuildersKt.d(function1);
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    public static final <T> f<T> d0(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, Long> function1) {
        return FlowKt__DelayKt.b(fVar, function1);
    }

    @NotNull
    public static final <T, R> f<R> d1(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__TransformKt.f(fVar, function2);
    }

    @NotNull
    public static final <T> f<T> d2(@NotNull f<? extends T> fVar, int i2) {
        return FlowKt__LimitKt.g(fVar, i2);
    }

    @NotNull
    public static final f<Integer> e(@NotNull IntRange intRange) {
        return FlowKt__BuildersKt.e(intRange);
    }

    @FlowPreview
    @ExperimentalTime
    @NotNull
    public static final <T> f<T> e0(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__DelayKt.c(fVar, j4);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> f<T> e1(@NotNull Iterable<? extends f<? extends T>> iterable) {
        return FlowKt__MergeKt.l(iterable);
    }

    @NotNull
    public static final <T> f<T> e2(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.h(fVar, function2);
    }

    @NotNull
    public static final f<Long> f(@NotNull LongRange longRange) {
        return FlowKt__BuildersKt.f(longRange);
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    @ExperimentalTime
    public static final <T> f<T> f0(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, Duration> function1) {
        return FlowKt__DelayKt.d(fVar, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'merge' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> f<T> f1(@NotNull f<? extends f<? extends T>> fVar) {
        return FlowKt__MigrationKt.o(fVar);
    }

    @Nullable
    public static final <T, C extends Collection<? super T>> Object f2(@NotNull f<? extends T> fVar, @NotNull C c4, @NotNull Continuation<? super C> continuation) {
        return FlowKt__CollectionKt.a(fVar, c4, continuation);
    }

    @NotNull
    public static final <T> f<T> g(@NotNull Sequence<? extends T> sequence) {
        return FlowKt__BuildersKt.g(sequence);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onEach { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onEach { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> f<T> g0(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__MigrationKt.j(fVar, j4);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> f<T> g1(@NotNull f<? extends T>... fVarArr) {
        return FlowKt__MergeKt.m(fVarArr);
    }

    @Nullable
    public static final <T> Object g2(@NotNull f<? extends T> fVar, @NotNull List<T> list, @NotNull Continuation<? super List<? extends T>> continuation) {
        return FlowKt__CollectionKt.b(fVar, list, continuation);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "'BroadcastChannel' is obsolete and all coreresponding operators are deprecated in the favour of StateFlow and SharedFlow")
    @NotNull
    public static final <T> f<T> h(@NotNull kotlinx.coroutines.channels.h<T> hVar) {
        return FlowKt__ChannelsKt.b(hVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onStart { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onStart { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> f<T> h0(@NotNull f<? extends T> fVar, long j4) {
        return FlowKt__MigrationKt.k(fVar, j4);
    }

    @NotNull
    public static final Void h1() {
        return FlowKt__MigrationKt.p();
    }

    @NotNull
    public static final f<Integer> i(@NotNull int[] iArr) {
        return FlowKt__BuildersKt.h(iArr);
    }

    @NotNull
    public static final <T> f<T> i0(@NotNull f<? extends T> fVar) {
        return FlowKt__DistinctKt.a(fVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> f<T> i1(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.q(fVar, coroutineContext);
    }

    @Nullable
    public static final <T> Object i2(@NotNull f<? extends T> fVar, @NotNull Set<T> set, @NotNull Continuation<? super Set<? extends T>> continuation) {
        return FlowKt__CollectionKt.d(fVar, set, continuation);
    }

    @NotNull
    public static final f<Long> j(@NotNull long[] jArr) {
        return FlowKt__BuildersKt.i(jArr);
    }

    @NotNull
    public static final <T> f<T> j0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super T, Boolean> function2) {
        return FlowKt__DistinctKt.b(fVar, function2);
    }

    @NotNull
    public static final <T> f<T> j1(@NotNull f<? extends T> fVar, @NotNull Function3<? super g<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.d(fVar, function3);
    }

    @NotNull
    public static final <T> f<T> k(@NotNull T[] tArr) {
        return FlowKt__BuildersKt.j(tArr);
    }

    @NotNull
    public static final <T, K> f<T> k0(@NotNull f<? extends T> fVar, @NotNull Function1<? super T, ? extends K> function1) {
        return FlowKt__DistinctKt.c(fVar, function1);
    }

    @NotNull
    public static final <T> f<T> k1(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__TransformKt.g(fVar, function2);
    }

    @NotNull
    public static final <T, R> f<R> k2(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function3<? super g<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.g(fVar, function3);
    }

    @NotNull
    public static final <T> o<T> l(@NotNull j<T> jVar) {
        return FlowKt__ShareKt.a(jVar);
    }

    @NotNull
    public static final <T> f<T> l0(@NotNull f<? extends T> fVar, int i2) {
        return FlowKt__LimitKt.d(fVar, i2);
    }

    @NotNull
    public static final <T> f<T> l1(@NotNull f<? extends T> fVar, @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__EmittersKt.e(fVar, function2);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> l2(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function3<? super g<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__MergeKt.n(fVar, function3);
    }

    @NotNull
    public static final <T> v<T> m(@NotNull k<T> kVar) {
        return FlowKt__ShareKt.b(kVar);
    }

    @NotNull
    public static final <T> f<T> m0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__LimitKt.e(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use catch { e -> if (predicate(e)) emitAll(fallback) else throw e }", replaceWith = @ReplaceWith(expression = "catch { e -> if (predicate(e)) emitAll(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> f<T> m1(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2, @NotNull Function1<? super Throwable, Boolean> function1) {
        return FlowKt__ErrorsKt.f(fVar, fVar2, function1);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> f<R> m2(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function3<? super g<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return FlowKt__LimitKt.i(fVar, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use shareIn operator and the resulting SharedFlow as a replacement for BroadcastChannel", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, SharingStarted.Lazily, 0)", imports = {}))
    @NotNull
    public static final <T> kotlinx.coroutines.channels.h<T> n(@NotNull f<? extends T> fVar, @NotNull t0 t0Var, @NotNull CoroutineStart coroutineStart) {
        return FlowKt__ChannelsKt.c(fVar, t0Var, coroutineStart);
    }

    @Nullable
    public static final <T> Object n0(@NotNull g<? super T> gVar, @NotNull ReceiveChannel<? extends T> receiveChannel, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__ChannelsKt.f(gVar, receiveChannel, continuation);
    }

    @PublishedApi
    @NotNull
    public static final <T, R> f<R> n2(@NotNull f<? extends T> fVar, @BuilderInference @NotNull Function3<? super g<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__EmittersKt.h(fVar, function3);
    }

    @Nullable
    public static final <T> Object o0(@NotNull g<? super T> gVar, @NotNull f<? extends T> fVar, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.g(gVar, fVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> f<T> o1(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2) {
        return FlowKt__MigrationKt.r(fVar, fVar2);
    }

    @NotNull
    public static final <T> f<IndexedValue<T>> o2(@NotNull f<? extends T> fVar) {
        return FlowKt__TransformKt.k(fVar);
    }

    @NotNull
    public static final <T> f<T> p0() {
        return FlowKt__BuildersKt.m();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> f<T> p1(@NotNull f<? extends T> fVar, @NotNull f<? extends T> fVar2) {
        return FlowKt__MigrationKt.s(fVar, fVar2);
    }

    @NotNull
    public static final <T1, T2, R> f<R> p2(@NotNull f<? extends T1> fVar, @NotNull f<? extends T2> fVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return FlowKt__ZipKt.s(fVar, fVar2, function3);
    }

    @NotNull
    public static final <T> f<T> q(@NotNull f<? extends T> fVar, int i2, @NotNull BufferOverflow bufferOverflow) {
        return i.b(fVar, i2, bufferOverflow);
    }

    public static final void q0(@NotNull g<?> gVar) {
        FlowKt__EmittersKt.b(gVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emit(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emit(fallback) }", imports = {}))
    @NotNull
    public static final <T> f<T> q1(@NotNull f<? extends T> fVar, T t3) {
        return FlowKt__MigrationKt.t(fVar, t3);
    }

    @NotNull
    public static final <T> f<T> r0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__TransformKt.a(fVar, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { e -> if (predicate(e)) emit(fallback) else throw e }'", replaceWith = @ReplaceWith(expression = "catch { e -> if (predicate(e)) emit(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> f<T> r1(@NotNull f<? extends T> fVar, T t3, @NotNull Function1<? super Throwable, Boolean> function1) {
        return FlowKt__MigrationKt.u(fVar, t3, function1);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'cache()' is 'shareIn' with unlimited replay and 'started = SharingStared.Lazily' argument'", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, Int.MAX_VALUE, started = SharingStared.Lazily)", imports = {}))
    @NotNull
    public static final <T> f<T> t(@NotNull f<? extends T> fVar) {
        return FlowKt__MigrationKt.a(fVar);
    }

    @NotNull
    public static final <T> f<T> t0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__TransformKt.c(fVar, function2);
    }

    @NotNull
    public static final <T> f<T> t1(@NotNull f<? extends T> fVar, @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__EmittersKt.f(fVar, function2);
    }

    @NotNull
    public static final <T> f<T> u(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.channels.w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.k(function2);
    }

    @NotNull
    public static final <T> f<T> u0(@NotNull f<? extends T> fVar) {
        return FlowKt__TransformKt.d(fVar);
    }

    @NotNull
    public static final <T> o<T> u1(@NotNull o<? extends T> oVar, @NotNull Function2<? super g<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__ShareKt.f(oVar, function2);
    }

    @NotNull
    public static final <T> f<T> v(@NotNull f<? extends T> fVar) {
        return i.e(fVar);
    }

    @Nullable
    public static final <T> Object v0(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.a(fVar, continuation);
    }

    @FlowPreview
    @NotNull
    public static final <T> ReceiveChannel<T> v1(@NotNull f<? extends T> fVar, @NotNull t0 t0Var) {
        return FlowKt__ChannelsKt.h(fVar, t0Var);
    }

    @NotNull
    public static final <T> f<T> w(@NotNull f<? extends T> fVar, @NotNull Function3<? super g<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return FlowKt__ErrorsKt.b(fVar, function3);
    }

    @Nullable
    public static final <T> Object w0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.b(fVar, function2, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish()' is 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> f<T> w1(@NotNull f<? extends T> fVar) {
        return FlowKt__MigrationKt.w(fVar);
    }

    @Nullable
    public static final <T> Object x(@NotNull f<? extends T> fVar, @NotNull g<? super T> gVar, @NotNull Continuation<? super Throwable> continuation) {
        return FlowKt__ErrorsKt.c(fVar, gVar, continuation);
    }

    @Nullable
    public static final <T> Object x0(@NotNull f<? extends T> fVar, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.c(fVar, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish(bufferSize)' is 'buffer' followed by 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStared.Lazily' argument, \npublish().refCount() translates to 'started = SharingStared.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.buffer(bufferSize).shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> f<T> x1(@NotNull f<? extends T> fVar, int i2) {
        return FlowKt__MigrationKt.x(fVar, i2);
    }

    @NotNull
    public static final <T> f<T> y(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.channels.w<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return FlowKt__BuildersKt.l(function2);
    }

    @Nullable
    public static final <T> Object y0(@NotNull f<? extends T> fVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.d(fVar, function2, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> f<T> y1(@NotNull f<? extends T> fVar, @NotNull CoroutineContext coroutineContext) {
        return FlowKt__MigrationKt.y(fVar, coroutineContext);
    }

    @Nullable
    public static final Object z(@NotNull f<?> fVar, @NotNull Continuation<? super Unit> continuation) {
        return FlowKt__CollectKt.a(fVar, continuation);
    }

    @NotNull
    public static final ReceiveChannel<Unit> z0(@NotNull t0 t0Var, long j4, long j5) {
        return FlowKt__DelayKt.f(t0Var, j4, j5);
    }

    @NotNull
    public static final <T> f<T> z1(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return FlowKt__ChannelsKt.i(receiveChannel);
    }
}
