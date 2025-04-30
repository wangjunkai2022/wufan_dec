.class public interface abstract Lcom/join/kotlin/ui/coupon/ClickProxy;
.super Ljava/lang/Object;
.source "ClickProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0006\u001a\u00020\u0004H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
        "data",
        "",
        "onClickGet",
        "onClickBack",
        "onClickMore",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract onClickBack()V
.end method

.method public abstract onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onClickMore(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
