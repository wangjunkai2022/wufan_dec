.class final Lcom/psk/eventmodule/net/StatCore$offlineAll$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/psk/eventmodule/net/StatCore;->offlineAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/t0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatCore.kt\ncom/psk/eventmodule/net/StatCore$offlineAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ApiCallEvent.kt\ncom/psk/eventmodule/net/util/ApiCallEventKt\n*L\n1#1,192:1\n734#2:193\n825#2,2:194\n1517#2:196\n1588#2,3:197\n1819#2,2:201\n12#3:200\n*E\n*S KotlinDebug\n*F\n+ 1 StatCore.kt\ncom/psk/eventmodule/net/StatCore$offlineAll$1\n*L\n124#1:193\n124#1,2:194\n127#1:196\n127#1,3:197\n176#1,2:201\n150#1:200\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/t0;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.psk.eventmodule.net.StatCore$offlineAll$1"
    f = "StatCore.kt"
    i = {
        0x1
    }
    l = {
        0x75,
        0xc8
    }
    m = "invokeSuspend"
    n = {
        "tableList"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;

    invoke-direct {p1, p2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v5, 0xbb8

    .line 4
    iput v4, v0, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_0
    sget-object v2, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->queryForAll()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    const/4 v7, 0x0

    if-le v5, v6, :cond_4

    .line 7
    invoke-interface {v2, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 8
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    .line 10
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_id()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_d

    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_d

    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getScm()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_c

    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getReq_id()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_d

    :cond_c
    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_e
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 12
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 15
    check-cast v8, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    .line 16
    new-instance v9, Lcom/psk/eventmodule/net/modle/VolcannoRequest;

    .line 17
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getBhv_time()J

    move-result-wide v10

    .line 18
    new-instance v15, Lcom/psk/eventmodule/net/modle/VolcanoData;

    move-object v12, v15

    .line 19
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_id()J

    move-result-wide v13

    .line 20
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getUser_type()I

    move-result v16

    move-object v4, v15

    move/from16 v15, v16

    .line 21
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getGoods_id()Ljava/lang/String;

    move-result-object v16

    .line 22
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getBhv_type()Ljava/lang/String;

    move-result-object v17

    .line 23
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getBhv_time()J

    move-result-wide v18

    const/16 v3, 0x3e8

    move-object/from16 v31, v1

    int-to-long v0, v3

    div-long v18, v18, v0

    .line 24
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_model()Ljava/lang/String;

    move-result-object v20

    .line 25
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getDevice_id()Ljava/lang/String;

    move-result-object v21

    .line 26
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getClient_version()Ljava/lang/String;

    move-result-object v22

    .line 27
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getOs_version()Ljava/lang/String;

    move-result-object v23

    .line 28
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getNetwork()Ljava/lang/String;

    move-result-object v24

    .line 29
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getIp()Ljava/lang/String;

    move-result-object v25

    .line 30
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getSpm()Ljava/lang/String;

    move-result-object v26

    .line 31
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getScm()Ljava/lang/String;

    move-result-object v27

    .line 32
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getReq_id()Ljava/lang/String;

    move-result-object v28

    .line 33
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getTrans_data()Ljava/lang/String;

    move-result-object v29

    .line 34
    invoke-virtual {v8}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getNet_game()Z

    move-result v30

    .line 35
    invoke-direct/range {v12 .. v30}, Lcom/psk/eventmodule/net/modle/VolcanoData;-><init>(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    invoke-direct {v9, v10, v11, v4}, Lcom/psk/eventmodule/net/modle/VolcannoRequest;-><init>(JLcom/psk/eventmodule/net/modle/VolcanoData;)V

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v31, v1

    .line 37
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 39
    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v3, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/psk/eventmodule/net/StatCore$offlineAll$1$invokeSuspend$$inlined$apiCallEvent$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v2, p0

    iput-object v5, v2, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v2, Lcom/psk/eventmodule/net/StatCore$offlineAll$1;->label:I

    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/i;->h(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v31

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    move-object v3, v1

    .line 40
    :goto_a
    check-cast v0, Lcom/psk/eventmodule/net/modle/ResponseModel;

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    .line 42
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/psk/eventmodule/net/modle/ResponseModel;

    invoke-virtual {v4}, Lcom/psk/eventmodule/net/modle/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 43
    sget-object v4, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v4}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->delete(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    :goto_c
    const/4 v5, 0x1

    goto :goto_b

    .line 44
    :cond_11
    invoke-virtual {v1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getRepeatNumber()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_12

    .line 45
    sget-object v4, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v4}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->delete(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    goto :goto_c

    .line 46
    :cond_12
    invoke-virtual {v1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getRepeatNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->setRepeatNumber(I)V

    .line 47
    sget-object v4, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-virtual {v4}, Lcom/psk/frame/roomlibrary/volcano/a;->b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->update(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V

    goto :goto_b

    :cond_13
    move-object v2, v0

    .line 48
    :cond_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
