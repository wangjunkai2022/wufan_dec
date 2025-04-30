.class final Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BtReginModle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nBtReginModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,610:1\n1849#2,2:611\n1849#2,2:613\n1858#2,2:615\n1849#2,2:617\n1858#2,2:619\n1547#2:621\n1618#2,3:622\n1858#2,3:625\n1860#2:628\n1860#2:629\n*E\n*S KotlinDebug\n*F\n+ 1 BtReginModle.kt\ncom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1\n*L\n153#1,2:611\n207#1,2:613\n247#1,2:615\n249#1,2:617\n276#1,2:619\n281#1:621\n281#1,3:622\n352#1,3:625\n276#1:628\n247#1:629\n*E\n"
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
    c = "com.join.kotlin.ui.modleregin.viewModle.BtReginModle$loadDatas$job$1$1"
    f = "BtReginModle.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;-><init>(Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 50
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->label:I

    if-nez v2, :cond_52

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    const/4 v5, 0x1

    if-ne v2, v3, :cond_50

    .line 3
    iget-object v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v2, v2, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getPage()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v2, v2, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    iget-object v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v2, v2, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    iget-object v3, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    iget-object v2, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v2, v2, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move-object v12, v1

    goto/16 :goto_33

    .line 7
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v6, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;

    .line 9
    iget-object v6, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v6, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getPage()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v15, "be.info"

    const-string v14, "be.game_name"

    const-string v13, "| "

    const-string v12, " \u00b7 "

    const-string v11, "7"

    const-string v10, "154"

    const-string v9, "25"

    const-string v8, "48"

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string v4, "47"

    const-string v5, "45"

    move-object/from16 v18, v3

    const-string v3, "44"

    move-object/from16 v16, v15

    const-string v15, "tipBean"

    move-object/from16 v19, v14

    const-string v14, ""

    move/from16 v21, v2

    const/4 v2, 0x1

    if-ne v6, v2, :cond_21

    .line 10
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getHead_banner_game()Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;

    move-result-object v2

    .line 11
    new-instance v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-object/from16 v22, v13

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v13, 0x92

    .line 12
    invoke-virtual {v6, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 13
    invoke-virtual {v6, v13}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 14
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 15
    iget-object v13, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v13, v13, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v13, v6}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 16
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_4

    .line 17
    :try_start_2
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v24, v6

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v14

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/mgps/dto/TipBean;

    .line 18
    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    move-object/from16 v23, v1

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object/from16 v23, v1

    :cond_3
    :goto_1
    move-object/from16 v1, v23

    goto/16 :goto_0

    :cond_4
    move-object/from16 v24, v6

    move-object v6, v14

    .line 20
    :cond_5
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    const/16 v26, 0x4

    .line 21
    new-instance v27, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 22
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getVideoUrl()Ljava/lang/String;

    move-result-object v13

    .line 23
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v23

    move-object/from16 v25, v9

    invoke-virtual/range {v23 .. v23}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v8

    const-string v8, "btVideodata.gameEntity.game_info_top_pic"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v28

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v29

    .line 26
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v30, v10

    const-string v10, "btVideodata.gameEntity.game_name"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v31, v8

    const-string v8, "btVideodata.gameEntity.info"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v33, v10

    const/16 v20, 0x2

    add-int/lit8 v10, v32, -0x2

    move-object/from16 v32, v11

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v33, v10

    move-object/from16 v32, v11

    const/16 v20, 0x2

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v22

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v34

    .line 30
    invoke-static/range {v34 .. v35}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    .line 31
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v6, v27

    move-object v10, v7

    move/from16 v7, v21

    move-object/from16 v36, v23

    move-object/from16 v23, v31

    move-object v8, v13

    move-object/from16 v13, v25

    move-object/from16 v38, v10

    move-object/from16 v37, v30

    move-object/from16 v25, v33

    move-object/from16 v10, v28

    move-object/from16 v28, v11

    move-object/from16 v39, v32

    move-object/from16 v11, v29

    move-object/from16 v40, v12

    move-object/from16 v12, v23

    move-object/from16 v42, v13

    move-object/from16 v41, v28

    move-object/from16 v13, v25

    move-object/from16 v23, v4

    move-object v4, v14

    move-object/from16 v43, v19

    move-object/from16 v14, v24

    move-object/from16 v19, v5

    move-object v5, v15

    move-object/from16 v44, v16

    move-object v15, v2

    move-object/from16 v16, v22

    .line 32
    invoke-direct/range {v6 .. v16}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v28, "1-1"

    const/16 v29, 0x0

    const/16 v30, 0x8

    const/16 v31, 0x0

    move-object/from16 v25, v1

    .line 33
    invoke-direct/range {v25 .. v31}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v21, 0x1

    .line 35
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getAd_collection()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 36
    new-instance v6, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v8, 0x5

    .line 37
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getAd_collection()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    move-object v7, v6

    .line 38
    invoke-direct/range {v7 .. v13}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_7
    const/4 v6, 0x1

    add-int/2addr v1, v6

    .line 40
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getNew_online_game()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_20

    .line 41
    new-instance v6, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v8, 0x1

    .line 42
    new-instance v9, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    const-string v7, "\u5373\u5c06\u4e0a\u7ebf"

    const/4 v10, 0x1

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct {v9, v7, v4, v14, v11}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V

    const-string v10, ""

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v6

    .line 43
    invoke-direct/range {v7 .. v13}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, p0

    .line 45
    :try_start_3
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 46
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getNew_online_game()Ljava/util/List;

    move-result-object v7

    .line 47
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v14

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    if-nez v8, :cond_a

    move-object v8, v10

    .line 48
    :cond_a
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getOnlineTime()J

    move-result-wide v11

    const/16 v13, 0x3e8

    int-to-long v14, v13

    mul-long v11, v11, v14

    .line 49
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getGameEntityList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v13, 0x1

    :goto_7
    if-eqz v13, :cond_d

    :goto_8
    const/4 v14, 0x0

    goto :goto_5

    .line 50
    :cond_d
    invoke-static {v11, v12}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v9, "\u4eca\u5929"

    const/4 v11, 0x1

    goto :goto_a

    :cond_e
    const v13, 0x5265c00

    int-to-long v13, v13

    sub-long v15, v11, v13

    .line 51
    invoke-static/range {v15 .. v16}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v11, "\u660e\u5929"

    :goto_9
    move-object/from16 v49, v11

    move v11, v9

    move-object/from16 v9, v49

    goto :goto_a

    :cond_f
    add-long/2addr v13, v11

    .line 52
    invoke-static {v13, v14}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v11, "\u6628\u5929"

    goto :goto_9

    :cond_10
    const-string v13, "MM-dd"

    .line 53
    invoke-static {v11, v12, v13}, Lcom/join/mgps/Util/x;->x(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :goto_a
    const-string v12, "\u4eca\u5929"

    .line 54
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 55
    iget-object v8, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v8, v8, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v8

    .line 56
    new-instance v12, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    .line 57
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getOnlineTime()J

    move-result-wide v13

    const/4 v15, 0x1

    .line 58
    invoke-direct {v12, v13, v14, v9, v15}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;-><init>(JLjava/lang/String;Z)V

    .line 59
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v10

    goto :goto_b

    .line 60
    :cond_11
    iget-object v12, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v12, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v12}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v12

    .line 61
    new-instance v13, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    .line 62
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getOnlineTime()J

    move-result-wide v14

    const-string v10, "timeShow"

    .line 63
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 64
    invoke-direct {v13, v14, v15, v9, v10}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;-><init>(JLjava/lang/String;Z)V

    .line 65
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    move v9, v11

    goto :goto_8

    :cond_12
    if-nez v9, :cond_13

    .line 66
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    if-eqz v7, :cond_13

    .line 67
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;->setStatus(Z)V

    .line 68
    :cond_13
    new-instance v7, Lcom/psk/kotlin/util/CommonListMainData;

    const/16 v11, 0x8

    .line 69
    iget-object v9, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v9, v9, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v9}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getOnlineGameTitles()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    move-object v10, v7

    .line 70
    invoke-direct/range {v10 .. v16}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->setTagListPosition(I)V

    const/4 v7, 0x1

    add-int/2addr v1, v7

    .line 73
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getListBtOnlineGame()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 74
    iget-object v7, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v7, v7, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v7}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getListBtOnlineGame()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getNew_online_game()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_1f

    .line 75
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getGameEntityList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 76
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 77
    new-instance v9, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v9, v8}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v8, 0x92

    .line 78
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 79
    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 80
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 81
    iget-object v8, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v8, v8, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v8, v9}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 82
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 83
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v14, v4

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/TipBean;

    .line 84
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v19

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, v23

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v36

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move/from16 v16, v1

    move-object/from16 v1, v42

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v7

    move-object/from16 v7, v37

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v8

    move-object/from16 v8, v39

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v40

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_11

    :cond_14
    move-object/from16 v19, v8

    goto :goto_e

    :cond_15
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v7, v37

    :goto_e
    move-object/from16 v8, v39

    :cond_16
    move-object/from16 v10, v40

    goto :goto_11

    :cond_17
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_10

    :cond_18
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_f

    :cond_19
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v13, v23

    :goto_f
    move-object/from16 v15, v36

    :goto_10
    move-object/from16 v7, v37

    move-object/from16 v8, v39

    move-object/from16 v10, v40

    move-object/from16 v1, v42

    goto :goto_11

    :cond_1a
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v36

    move-object/from16 v7, v37

    move-object/from16 v10, v40

    move-object/from16 v1, v42

    move-object/from16 v19, v8

    move-object/from16 v8, v39

    :goto_11
    move-object/from16 v42, v1

    move-object/from16 v37, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v10

    move-object/from16 v23, v13

    move-object/from16 v36, v15

    move/from16 v1, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v19, v12

    goto/16 :goto_d

    :cond_1b
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v36

    move-object/from16 v7, v37

    move-object/from16 v8, v39

    move-object/from16 v10, v40

    move-object/from16 v1, v42

    goto :goto_12

    :cond_1c
    move/from16 v16, v1

    move-object/from16 v18, v7

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v36

    move-object/from16 v7, v37

    move-object/from16 v8, v39

    move-object/from16 v10, v40

    move-object/from16 v1, v42

    move-object v14, v4

    .line 86
    :goto_12
    new-instance v11, Lcom/psk/kotlin/util/CommonListMainData;

    const/16 v23, 0x2

    .line 87
    new-instance v19, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    const/16 v25, 0x3e7

    move-object/from16 v40, v10

    .line 88
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v39, v8

    const-string v8, "be.ico_remote"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v27

    .line 90
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v37, v7

    move-object/from16 v7, v43

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v43, v7

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v14, :cond_1d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v42, v1

    move-object/from16 v36, v15

    const/4 v1, 0x2

    add-int/lit8 v15, v20, -0x2

    const/4 v1, 0x0

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v14, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, v38

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    :cond_1d
    move-object/from16 v42, v1

    move-object/from16 v36, v15

    move-object/from16 v1, v38

    const/4 v14, 0x0

    :goto_13
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v41

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v28

    .line 93
    invoke-static/range {v28 .. v29}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 94
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, v44

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v41, v14

    .line 95
    new-instance v14, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-object/from16 v38, v1

    const/4 v1, 0x0

    invoke-direct {v14, v9, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Z)V

    move-object/from16 v24, v19

    move-object/from16 v26, v10

    move-object/from16 v28, v8

    move-object/from16 v30, v7

    move-object/from16 v31, v9

    move-object/from16 v32, v14

    .line 96
    invoke-direct/range {v24 .. v32}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v22, v11

    move-object/from16 v24, v19

    .line 97
    invoke-direct/range {v22 .. v28}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    iget-object v1, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v12

    move-object/from16 v23, v13

    move-object/from16 v44, v15

    move/from16 v1, v16

    move-object/from16 v7, v18

    goto/16 :goto_c

    :cond_1e
    move/from16 v16, v1

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v44

    .line 100
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_14

    :cond_1f
    move/from16 v16, v1

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v44

    goto :goto_14

    :cond_20
    move-object/from16 v6, p0

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v15, v44

    move/from16 v16, v1

    goto :goto_14

    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_31

    :cond_21
    move-object v6, v1

    move-object/from16 v38, v7

    move-object/from16 v36, v8

    move-object/from16 v42, v9

    move-object/from16 v37, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    move-object/from16 v41, v13

    move-object/from16 v2, v18

    move-object/from16 v43, v19

    move-object v13, v4

    move-object v12, v5

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v15, v16

    move/from16 v16, v21

    .line 101
    :goto_14
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getDynamic_component()Ljava/util/List;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v1, :cond_23

    :try_start_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v1, :cond_22

    goto :goto_15

    :cond_22
    const/4 v1, 0x0

    goto :goto_16

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    goto/16 :goto_32

    :cond_23
    :goto_15
    const/4 v1, 0x1

    :goto_16
    if-nez v1, :cond_4f

    .line 102
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;->getDynamic_component()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_24

    :try_start_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_24
    :try_start_8
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v8, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 104
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;->getComponents()Ljava/util/List;

    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v10, :cond_28

    .line 105
    :try_start_9
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x0

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;

    .line 106
    invoke-virtual {v11}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getModelType()Ljava/lang/Integer;

    move-result-object v17

    if-nez v17, :cond_25

    move-object/from16 v18, v1

    move/from16 v17, v9

    goto :goto_19

    :cond_25
    move-object/from16 v18, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v17, v9

    const/4 v9, 0x1

    if-ne v1, v9, :cond_26

    .line 107
    invoke-virtual {v11}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 108
    new-instance v14, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v14}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x2

    .line 109
    invoke-virtual {v14, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 110
    invoke-virtual {v11}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getCollectionTplId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v11}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    :cond_26
    :goto_19
    move/from16 v9, v17

    move-object/from16 v1, v18

    goto :goto_18

    :cond_27
    move-object/from16 v18, v1

    move/from16 v17, v9

    .line 112
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v25, v14

    goto :goto_1a

    :cond_28
    move-object/from16 v18, v1

    move/from16 v17, v9

    const/16 v25, 0x0

    .line 113
    :goto_1a
    :try_start_a
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v9, 0x1

    .line 114
    new-instance v10, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    .line 115
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;->getTitle()Ljava/lang/String;

    move-result-object v23

    .line 116
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;->getSubTitle()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v27, 0x8

    const/16 v28, 0x0

    move-object/from16 v22, v10

    .line 117
    invoke-direct/range {v22 .. v28}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v29, ""

    const/16 v30, 0x0

    const/16 v31, 0x8

    const/16 v32, 0x0

    move-object/from16 v26, v1

    move/from16 v27, v9

    move-object/from16 v28, v10

    .line 118
    invoke-direct/range {v26 .. v32}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    .line 120
    invoke-virtual {v8}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;->getComponents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 121
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    add-int/lit8 v11, v9, 0x1

    if-gez v9, :cond_29

    :try_start_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_29
    :try_start_c
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v10, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 122
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getModelType()Ljava/lang/Integer;

    move-result-object v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const-string v14, "-"

    move-object/from16 v19, v1

    const-string v1, "1-2-"

    if-nez v9, :cond_2a

    move/from16 v21, v8

    move/from16 v20, v11

    goto/16 :goto_1f

    :cond_2a
    move/from16 v20, v11

    .line 123
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    move/from16 v21, v8

    const/4 v8, 0x1

    if-ne v11, v8, :cond_2f

    .line 124
    :try_start_e
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getGameEntityList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2c

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_1c

    :cond_2b
    const/4 v8, 0x0

    goto :goto_1d

    :cond_2c
    :goto_1c
    const/4 v8, 0x1

    :goto_1d
    if-nez v8, :cond_2e

    .line 125
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getGameEntityList()Ljava/util/List;

    move-result-object v8

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 128
    check-cast v10, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 129
    new-instance v11, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v11, v10}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v10, 0x92

    .line 130
    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 131
    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 132
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v8

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v21, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 134
    iget-object v10, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v10, v10, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v10, v11}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 135
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v21, v8

    move-object/from16 v8, v22

    goto :goto_1e

    .line 136
    :cond_2d
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    const/16 v23, 0x7

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v22, v1

    move-object/from16 v24, v9

    invoke-direct/range {v22 .. v28}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object v13, v15

    move/from16 v8, v21

    move-object/from16 v11, v41

    const/4 v3, 0x0

    move-object v12, v6

    move-object/from16 v41, v38

    goto/16 :goto_2f

    :cond_2e
    move-object/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object v13, v15

    move-object/from16 v11, v41

    const/4 v3, 0x0

    move-object v12, v6

    goto/16 :goto_25

    :cond_2f
    :goto_1f
    if-nez v9, :cond_31

    :cond_30
    move-object/from16 v48, v3

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object/from16 v46, v15

    move-object/from16 v3, v38

    move-object/from16 v45, v39

    move-object/from16 v44, v40

    goto/16 :goto_26

    .line 138
    :cond_31
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    const/4 v11, 0x3

    if-ne v8, v11, :cond_30

    .line 139
    :try_start_10
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v8

    if-eqz v8, :cond_3b

    .line 140
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getGameEntity()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v8

    .line 141
    new-instance v9, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v9, v8}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v10, 0x92

    .line 142
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 143
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 144
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 145
    iget-object v10, v6, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v10, v10, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v10, v9}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 146
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_39

    .line 147
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v6, 0x3

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v10, v4

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/TipBean;

    .line 148
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_35

    move-object/from16 v22, v6

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v35, v13

    move-object/from16 v13, v36

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v36, v13

    move-object/from16 v13, v42

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v42, v13

    move-object/from16 v13, v37

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v37, v13

    move-object/from16 v13, v39

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v40

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    goto :goto_22

    :cond_32
    move-object/from16 v37, v13

    goto :goto_21

    :cond_33
    move-object/from16 v42, v13

    goto :goto_21

    :cond_34
    move-object/from16 v36, v13

    goto :goto_21

    :cond_35
    move-object/from16 v22, v6

    :cond_36
    move-object/from16 v35, v13

    :goto_21
    move-object/from16 v13, v39

    :cond_37
    move-object/from16 v11, v40

    :goto_22
    move-object/from16 v40, v11

    move-object/from16 v39, v13

    move-object/from16 v6, v22

    move-object/from16 v13, v35

    goto/16 :goto_20

    :cond_38
    move-object/from16 v35, v13

    move-object/from16 v13, v39

    move-object/from16 v11, v40

    goto :goto_23

    :cond_39
    move-object/from16 v35, v13

    move-object/from16 v13, v39

    move-object/from16 v11, v40

    move-object v10, v4

    .line 150
    :goto_23
    new-instance v6, Lcom/psk/kotlin/util/CommonListMainData;

    const/16 v39, 0x4

    .line 151
    new-instance v40, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 152
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v44, v11

    .line 153
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v45, v13

    const-string v13, "gameInfo.game_info_top_pic"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v26

    .line 155
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v27

    .line 156
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, v43

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v43, v13

    .line 157
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v46, v15

    .line 158
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_3a

    .line 159
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v47, v12

    const/16 v23, 0x2

    add-int/lit8 v12, v22, -0x2

    move-object/from16 v48, v3

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 160
    invoke-virtual {v10, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, v38

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    :cond_3a
    move-object/from16 v48, v3

    move-object/from16 v47, v12

    move-object/from16 v3, v38

    const/4 v10, 0x0

    :goto_24
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " | "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v22

    .line 162
    invoke-static/range {v22 .. v23}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x200

    const/16 v34, 0x0

    move-object/from16 v22, v40

    move/from16 v23, v16

    move-object/from16 v25, v11

    move-object/from16 v28, v8

    move-object/from16 v29, v13

    move-object/from16 v30, v9

    .line 163
    invoke-direct/range {v22 .. v34}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v21, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x8

    const/16 v28, 0x0

    move-object/from16 v22, v6

    move/from16 v23, v39

    move-object/from16 v24, v40

    .line 165
    invoke-direct/range {v22 .. v28}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v12, p0

    move v8, v1

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v11, v41

    move-object/from16 v40, v44

    move-object/from16 v39, v45

    move-object/from16 v13, v46

    move-object/from16 v41, v3

    const/4 v3, 0x0

    goto/16 :goto_2f

    :cond_3b
    move-object/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object v13, v15

    move-object/from16 v11, v41

    const/4 v3, 0x0

    move-object/from16 v12, p0

    :goto_25
    move-object/from16 v41, v38

    goto/16 :goto_2e

    :goto_26
    if-nez v9, :cond_3c

    goto/16 :goto_2d

    .line 167
    :cond_3c
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4b

    .line 168
    invoke-virtual {v10}, Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;->getGameEntityList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4b

    .line 169
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v8, v21

    const/4 v9, 0x0

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-gez v9, :cond_3d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3d
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v10, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 170
    new-instance v9, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v9, v10}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    const/16 v10, 0x92

    .line 171
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 172
    invoke-virtual {v9, v10}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 173
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getIndex()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    move-object/from16 v12, p0

    .line 174
    :try_start_11
    iget-object v13, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v13, v13, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;->updateDowState(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 175
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_48

    .line 176
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v10, 0x3

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/4 v10, 0x0

    invoke-virtual {v13, v10, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v13, v4

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/join/mgps/dto/TipBean;

    .line 177
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_46

    move-object/from16 v31, v5

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v32, v4

    move-object/from16 v4, v48

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v48, v4

    move-object/from16 v4, v47

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v47, v4

    move-object/from16 v4, v35

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v35, v4

    move-object/from16 v4, v36

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v36, v4

    move-object/from16 v4, v42

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v42, v4

    move-object/from16 v4, v37

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v4

    move-object/from16 v4, v45

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v44

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2a

    :cond_3e
    move-object/from16 v15, v44

    goto :goto_2a

    :cond_3f
    move-object/from16 v37, v4

    goto :goto_29

    :cond_40
    move-object/from16 v42, v4

    goto :goto_29

    :cond_41
    move-object/from16 v36, v4

    goto :goto_29

    :cond_42
    move-object/from16 v35, v4

    goto :goto_29

    :cond_43
    move-object/from16 v47, v4

    goto :goto_29

    :cond_44
    move-object/from16 v48, v4

    goto :goto_29

    :cond_45
    move-object/from16 v32, v4

    goto :goto_29

    :cond_46
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    :goto_29
    move-object/from16 v15, v44

    move-object/from16 v4, v45

    :goto_2a
    move-object/from16 v45, v4

    move-object/from16 v44, v15

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    goto/16 :goto_28

    :cond_47
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v15, v44

    move-object/from16 v4, v45

    goto :goto_2b

    :cond_48
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v15, v44

    move-object/from16 v4, v45

    move-object/from16 v13, v32

    .line 179
    :goto_2b
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    .line 180
    new-instance v21, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 181
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v39, v4

    const-string v4, "be.ico_remote"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getGif_ico_remote()Ljava/lang/String;

    move-result-object v25

    .line 183
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v34, v6

    move-object/from16 v6, v43

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v43, v6

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_49

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v38, v11

    const/16 v23, 0x2

    add-int/lit8 v11, v22, -0x2

    move-object/from16 v40, v15

    const/4 v15, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v13, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2c

    :cond_49
    move/from16 v38, v11

    move-object/from16 v40, v15

    const/4 v11, 0x0

    :goto_2c
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v41

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getActual_size()J

    move-result-wide v22

    .line 186
    invoke-static/range {v22 .. v23}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 187
    invoke-virtual {v9}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, v46

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v15, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-object/from16 v41, v3

    const/4 v3, 0x0

    invoke-direct {v15, v9, v3}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Z)V

    move-object/from16 v22, v21

    move/from16 v23, v16

    move-object/from16 v24, v10

    move-object/from16 v26, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v15

    .line 189
    invoke-direct/range {v22 .. v30}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x8

    const/16 v28, 0x0

    move-object/from16 v22, v5

    const/4 v4, 0x2

    move/from16 v23, v4

    move-object/from16 v24, v21

    .line 191
    invoke-direct/range {v22 .. v28}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 192
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v46, v13

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    move-object/from16 v6, v34

    move/from16 v9, v38

    move-object/from16 v45, v39

    move-object/from16 v44, v40

    move-object/from16 v3, v41

    move-object/from16 v41, v11

    goto/16 :goto_27

    :cond_4a
    move-object/from16 v12, p0

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v11, v41

    move-object/from16 v40, v44

    move-object/from16 v39, v45

    move-object/from16 v13, v46

    move-object/from16 v41, v3

    const/4 v3, 0x0

    .line 193
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2f

    :cond_4b
    :goto_2d
    move-object/from16 v12, p0

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v11, v41

    move-object/from16 v40, v44

    move-object/from16 v39, v45

    move-object/from16 v13, v46

    move-object/from16 v41, v3

    const/4 v3, 0x0

    :goto_2e
    move/from16 v8, v21

    :goto_2f
    move-object v6, v12

    move-object v15, v13

    move-object/from16 v1, v19

    move/from16 v9, v20

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    move-object/from16 v13, v35

    move-object/from16 v38, v41

    move-object/from16 v12, v47

    move-object/from16 v3, v48

    move-object/from16 v41, v11

    goto/16 :goto_1b

    :cond_4c
    move-object/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object v13, v15

    move-object/from16 v11, v41

    const/4 v3, 0x0

    move-object v12, v6

    move-object/from16 v41, v38

    .line 194
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_30

    :cond_4d
    move-object/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v47, v12

    move-object/from16 v35, v13

    move-object v13, v15

    move-object/from16 v11, v41

    const/4 v3, 0x0

    move-object v12, v6

    move-object/from16 v41, v38

    :goto_30
    move-object v6, v12

    move-object v15, v13

    move/from16 v7, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    move-object/from16 v13, v35

    move-object/from16 v38, v41

    move-object/from16 v12, v47

    move-object/from16 v3, v48

    move-object/from16 v41, v11

    goto/16 :goto_17

    :cond_4e
    move-object v12, v6

    .line 195
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->setPage(I)V

    .line 197
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 198
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v2, v2, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_33

    :cond_4f
    move-object v12, v6

    .line 199
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_33

    :catch_2
    move-exception v0

    goto :goto_31

    :catch_3
    move-exception v0

    move-object v12, v6

    goto :goto_31

    :catch_4
    move-exception v0

    move-object v12, v1

    :goto_31
    move-object v1, v0

    .line 200
    :goto_32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    :cond_50
    move-object v12, v1

    .line 201
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v1

    iget-object v2, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 202
    :goto_33
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_51

    .line 203
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_34

    .line 204
    :cond_51
    iget-object v1, v12, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle$loadDatas$job$1;->this$0:Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 205
    :goto_34
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_52
    move-object v12, v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :goto_35
    throw v1

    :goto_36
    goto :goto_35
.end method
