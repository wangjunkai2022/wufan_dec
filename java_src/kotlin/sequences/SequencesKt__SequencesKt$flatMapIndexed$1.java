package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Sequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"T", "C", "R", "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1", f = "Sequences.kt", i = {}, l = {332}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes5.dex */
public final class SequencesKt__SequencesKt$flatMapIndexed$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1 $iterator;
    final /* synthetic */ Sequence $source;
    final /* synthetic */ Function2 $transform;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt__SequencesKt$flatMapIndexed$1(Sequence sequence, Function2 function2, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$source = sequence;
        this.$transform = function2;
        this.$iterator = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        SequencesKt__SequencesKt$flatMapIndexed$1 sequencesKt__SequencesKt$flatMapIndexed$1 = new SequencesKt__SequencesKt$flatMapIndexed$1(this.$source, this.$transform, this.$iterator, completion);
        sequencesKt__SequencesKt$flatMapIndexed$1.L$0 = obj;
        return sequencesKt__SequencesKt$flatMapIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt__SequencesKt$flatMapIndexed$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        int i2;
        Iterator it2;
        SequenceScope sequenceScope;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            i2 = 0;
            it2 = this.$source.iterator();
            sequenceScope = (SequenceScope) this.L$0;
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i2 = this.I$0;
            it2 = (Iterator) this.L$1;
            sequenceScope = (SequenceScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it2.hasNext()) {
            Object next = it2.next();
            Function2 function2 = this.$transform;
            int i5 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Object invoke = function2.invoke(Boxing.boxInt(i2), next);
            this.L$0 = sequenceScope;
            this.L$1 = it2;
            this.I$0 = i5;
            this.label = 1;
            if (sequenceScope.yieldAll((Iterator) this.$iterator.invoke(invoke), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            i2 = i5;
        }
        return Unit.INSTANCE;
    }
}
