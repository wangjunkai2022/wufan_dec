.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;
.super Ljava/lang/Object;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Ljava/util/List<",
        "+",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1058:1\n1#2:1059\n764#3:1060\n855#3,2:1061\n1547#3:1063\n1618#3,3:1064\n764#3:1067\n855#3,2:1068\n1547#3:1070\n1618#3,3:1071\n*E\n*S KotlinDebug\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5\n*L\n314#1:1060\n314#1,2:1061\n315#1:1063\n315#1,3:1064\n325#1:1067\n325#1,2:1068\n326#1:1070\n326#1,3:1071\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052&\u0010\u0004\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001 \u0003*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Lcom/join/mgps/dto/ResponseModel;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_14

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_14

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_13

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v2, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setPage(I)V

    .line 7
    iget-object v2, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPage()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setPage(I)V

    .line 10
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/s90;

    move-result-object v4

    iget-object v4, v4, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v4}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 11
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-string v8, "\u542f\u52a8"

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 13
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 14
    invoke-virtual {v5, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/4 v8, 0x2

    .line 15
    invoke-virtual {v5, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 16
    iget-object v8, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :cond_3
    invoke-virtual {v5, v6, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 17
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v6

    const/16 v7, 0xa

    if-nez v6, :cond_4

    .line 18
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 19
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9

    .line 20
    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v12, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v11, v8

    move-object v13, v5

    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 22
    :cond_4
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v8, "0"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_8

    .line 23
    iget-object v5, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 26
    invoke-virtual {v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 29
    check-cast v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-string v8, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 30
    invoke-virtual {v7, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_8
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9

    .line 32
    new-instance v8, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v12, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v11, v8

    move-object v13, v5

    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 36
    invoke-virtual {v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 37
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 39
    check-cast v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 40
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 42
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 43
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setDownloadCount(I)V

    .line 44
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 45
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 46
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 47
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v13, v10}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 49
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    if-eqz v2, :cond_11

    .line 50
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_11

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 52
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 53
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 54
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v13, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 56
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 58
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 61
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_7

    :cond_f
    move-wide v4, v6

    .line 62
    :goto_7
    invoke-virtual {v13, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 63
    invoke-virtual {v13, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v13, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_d

    .line 65
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_d

    .line 66
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v12, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 68
    :cond_11
    iget-object v4, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_d

    .line 69
    new-instance v5, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v12, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 71
    :cond_12
    iget-object v1, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_a

    .line 72
    :cond_13
    :goto_9
    iget-object v1, v0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/s90;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    :cond_14
    :goto_a
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$5;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
