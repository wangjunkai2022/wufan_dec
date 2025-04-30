.class final Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;
.super Ljava/lang/Object;
.source "NoticeListActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/notice/NoticeListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/join/kotlin/ui/coupon/NoticeListData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/coupon/NoticeListData;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/NoticeListData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/coupon/NoticeListData;

    .line 4
    iget-object v2, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getPage()I

    move-result p1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getPage()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->setPage(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const-string v2, "da"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/kotlin/ui/coupon/NoticeListData;->getGame_announcement_dto_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/h1;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->q1()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/h1;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/h1;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h1;->F:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getViewModle()Lcom/join/kotlin/ui/notice/NoticeViewModle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->updateShowLoadUI(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$4;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
