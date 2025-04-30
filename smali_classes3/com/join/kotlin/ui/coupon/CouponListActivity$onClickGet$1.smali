.class public final Lcom/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1;
.super Ljava/lang/Object;
.source "CouponListActivity.kt"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/coupon/CouponListActivity;->onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1",
        "Lcom/join/mgps/dialog/b$c;",
        "Lcom/join/mgps/dialog/b;",
        "dialog",
        "",
        "ClickOKButn",
        "ClickCancleButn",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dialog/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dialog/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
