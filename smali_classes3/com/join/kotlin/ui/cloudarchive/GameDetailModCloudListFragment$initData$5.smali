.class final Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;
.super Ljava/lang/Object;
.source "GameDetailModCloudListFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->initData()V
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
    value = "SMAP\nGameDetailModCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,666:1\n1#2:667\n764#3:668\n855#3,2:669\n1547#3:671\n1618#3,3:672\n764#3:675\n855#3,2:676\n1547#3:678\n1618#3,3:679\n*E\n*S KotlinDebug\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5\n*L\n298#1:668\n298#1,2:669\n299#1:671\n299#1,3:672\n309#1:675\n309#1,2:676\n310#1:678\n310#1,3:679\n*E\n"
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_10

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setPage(I)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getPage()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->setPage(I)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/si;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/si;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    const/16 v4, 0x8

    .line 13
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    const-string v4, "\u542f\u52a8"

    .line 14
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 15
    invoke-virtual {v2, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 16
    iget-object v4, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v4

    const/16 v11, 0xa

    if-nez v4, :cond_4

    .line 18
    invoke-virtual {v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 19
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 20
    new-instance v12, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v12

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 22
    :cond_4
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_8

    .line 23
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 26
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUid()I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 29
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-string v5, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 30
    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 31
    :cond_8
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 32
    new-instance v12, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v12

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_9
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 36
    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 37
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 39
    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 40
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 42
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 43
    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setDownloadCount(I)V

    .line 44
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 45
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 46
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getType()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 47
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 49
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 51
    new-instance v1, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 53
    :cond_e
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 54
    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/si;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/si;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    :cond_10
    :goto_9
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment$initData$5;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
