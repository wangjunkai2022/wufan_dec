.class final Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;
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
        "Ljava/util/ArrayList<",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u000520\u0010\u0004\u001a,\u0012\u0004\u0012\u00020\u0001 \u0003*\u0016\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u00020\u0000j\u0008\u0012\u0004\u0012\u00020\u0001`\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
        "Lkotlin/collections/ArrayList;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Ljava/util/ArrayList;)V",
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

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;->onChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final onChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$1;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/p;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/p;->F:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "viewdataBinding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
