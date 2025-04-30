.class final Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;
.super Ljava/lang/Object;
.source "CouponListActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/coupon/CouponListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
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
        "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/coupon/CouponListMainData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "it.data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponListMainData;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListMainData;->getGame_coupon_for_bt_game()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/p;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/p;->F:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "viewdataBinding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 6
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->updateShowLoadUI(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$3;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
