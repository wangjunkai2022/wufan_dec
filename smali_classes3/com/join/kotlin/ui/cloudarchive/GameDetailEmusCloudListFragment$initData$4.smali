.class final Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;
.super Ljava/lang/Object;
.source "GameDetailEmusCloudListFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->initData()V
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
        "Lcom/join/mgps/dto/ArchiveShopDataBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcom/join/mgps/dto/ArchiveShopDataBean;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Lcom/join/mgps/dto/ArchiveShopDataBean;)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ArchiveShopDataBean;)V
    .locals 4

    const-string v0, "it.data_info"

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_6

    .line 3
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v3, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 6
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getPage()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->setPage(I)V

    .line 10
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/ki;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    .line 11
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getMarketList()Ljava/util/List;

    move-result-object p1

    const-string v0, "it.data_info.marketList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/ki;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ki;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    goto/16 :goto_1

    .line 16
    :cond_6
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_a

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveShopDataBean$DataInfoBean;->getPn()I

    move-result p1

    if-nez p1, :cond_a

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getAdapterx()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 20
    :cond_a
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 21
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_b
    :goto_1
    return-void

    .line 22
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ArchiveShopDataBean;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment$initData$4;->onChanged(Lcom/join/mgps/dto/ArchiveShopDataBean;)V

    return-void
.end method
