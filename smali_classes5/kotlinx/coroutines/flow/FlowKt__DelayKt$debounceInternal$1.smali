.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->e(Lkotlinx/coroutines/flow/f;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/t0;",
        "Lkotlinx/coroutines/flow/g<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,351:1\n16#2:352\n16#2:354\n1#3:353\n201#4,11:355\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n221#1:352\n224#1:354\n231#1:355,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/t0;",
        "Lkotlinx/coroutines/flow/g;",
        "downstream",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {}
    l = {
        0xe0,
        0x166
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic g:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->f:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->g:Lkotlinx/coroutines/flow/f;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlinx/coroutines/t0;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/t0;",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->g:Lkotlinx/coroutines/flow/f;

    invoke-direct {v0, v1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/t0;

    check-cast p2, Lkotlinx/coroutines/flow/g;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e(Lkotlinx/coroutines/t0;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/g;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->a:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/g;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v2

    move-object v2, v1

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/t0;

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4
    new-instance v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->g:Lkotlinx/coroutines/flow/f;

    invoke-direct {v12, v13, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/channels/ProduceKt;->f(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v9

    .line 5
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v2

    move-object v2, v1

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    .line 6
    :goto_0
    iget-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v13, Lkotlinx/coroutines/flow/internal/m;->c:Lkotlinx/coroutines/internal/i0;

    if-eq v12, v13, :cond_10

    .line 7
    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 8
    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v13, :cond_7

    .line 9
    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->f:Lkotlin/jvm/functions/Function1;

    sget-object v15, Lkotlinx/coroutines/flow/internal/m;->a:Lkotlinx/coroutines/internal/i0;

    if-ne v13, v15, :cond_3

    move-object v13, v8

    :cond_3
    invoke-interface {v14, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    iput-wide v13, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v16, v13, v5

    if-ltz v16, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_8

    cmp-long v16, v13, v5

    if-nez v16, :cond_7

    .line 10
    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v13, v15, :cond_5

    move-object v13, v8

    :cond_5
    iput-object v11, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->a:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->b:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->c:I

    invoke-interface {v11, v13, v2}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v0, :cond_6

    return-object v0

    .line 11
    :cond_6
    :goto_2
    iput-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    move-object/from16 v17, v2

    move-object v2, v0

    move-object v0, v12

    move-object v12, v11

    move-object v11, v10

    move-object/from16 v10, v17

    goto :goto_3

    .line 12
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Debounce timeout should not be negative"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/v0;->b()Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v13, :cond_a

    iget-wide v13, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v15, v13, v5

    if-lez v15, :cond_9

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v13, 0x1

    :goto_5
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_c
    :goto_6
    iput-object v12, v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->d:Ljava/lang/Object;

    iput-object v11, v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->e:Ljava/lang/Object;

    iput-object v9, v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->a:Ljava/lang/Object;

    iput-object v0, v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->b:Ljava/lang/Object;

    iput v4, v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->c:I

    .line 15
    new-instance v13, Lkotlinx/coroutines/selects/b;

    invoke-direct {v13, v10}, Lkotlinx/coroutines/selects/b;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 16
    :try_start_0
    iget-object v14, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v14, :cond_d

    .line 17
    iget-wide v14, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;

    invoke-direct {v0, v12, v9, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v14, v15, v0}, Lkotlinx/coroutines/selects/a;->h(JLkotlin/jvm/functions/Function1;)V

    .line 18
    :cond_d
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->G()Lkotlinx/coroutines/selects/d;

    move-result-object v0

    new-instance v14, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;

    invoke-direct {v14, v9, v12, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v0, v14}, Lkotlinx/coroutines/selects/a;->u(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 19
    invoke-virtual {v13, v0}, Lkotlinx/coroutines/selects/b;->m0(Ljava/lang/Throwable;)V

    .line 20
    :goto_7
    invoke-virtual {v13}, Lkotlinx/coroutines/selects/b;->l0()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v13

    if-ne v0, v13, :cond_e

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_e
    if-ne v0, v2, :cond_f

    return-object v2

    :cond_f
    move-object v0, v2

    move-object v2, v10

    move-object v10, v11

    move-object v11, v12

    goto/16 :goto_0

    .line 22
    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
