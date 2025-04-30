.class final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;
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
    value = "SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1058:1\n1#2:1059\n*E\n"
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

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_c

    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v2, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz v1, :cond_a

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 10
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getPage()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->setPage(I)V

    .line 11
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/s90;

    move-result-object v2

    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 13
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowType(I)V

    .line 14
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v5, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    if-eqz p1, :cond_6

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_6

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 18
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 20
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsDownloadArchive(I)V

    .line 22
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 24
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    .line 28
    :goto_2
    invoke-virtual {v5, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setRuningArchiveId(J)V

    const-string v3, "\u542f\u52a8"

    .line 29
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 30
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    goto :goto_1

    .line 31
    :cond_6
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result v2

    if-eq v2, v0, :cond_8

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 33
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 36
    new-instance v10, Lcom/psk/kotlin/util/CommonListMainData;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/psk/kotlin/util/CommonListMainData;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 39
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 40
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 41
    :cond_b
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/s90;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/s90;->E:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    goto :goto_5

    .line 42
    :cond_c
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    if-eqz p1, :cond_10

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result v1

    if-eq v1, v0, :cond_e

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result p1

    if-nez p1, :cond_10

    .line 44
    :cond_e
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 45
    :cond_f
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 46
    :cond_10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_11

    .line 47
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_11
    :goto_5
    return-void

    .line 48
    :cond_12
    :goto_6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$initData$4;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
