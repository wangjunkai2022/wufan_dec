.class final Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCouponListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n764#2:139\n855#2,2:140\n1849#2,2:142\n*E\n*S KotlinDebug\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2\n*L\n56#1:139\n56#1,2:140\n56#1,2:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
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

    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/join/mgps/dto/ResponseModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.coupon.CouponRequest"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponRequest;

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getDatas()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/dto/BTGameCouponBean;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/BTGameCouponBean;->getCoupon_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/join/kotlin/ui/coupon/CouponRequest;->couponId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BTGameCouponBean;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BTGameCouponBean;->setReceivable(Z)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/p;

    move-result-object p1

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/p;->F:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "viewdataBinding.recycleView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/coupon/CouponListActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onCreate$2;->onChanged(Lcom/join/mgps/dto/ResponseModel;)V

    return-void
.end method
