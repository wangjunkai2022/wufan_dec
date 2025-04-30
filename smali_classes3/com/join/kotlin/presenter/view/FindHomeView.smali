.class public interface abstract Lcom/join/kotlin/presenter/view/FindHomeView;
.super Ljava/lang/Object;
.source "FindHomeView.kt"

# interfaces
.implements Lcom/psk/kotlin/base/presenter/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/presenter/view/FindHomeView$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/join/kotlin/presenter/view/FindHomeView;",
        "Lcom/psk/kotlin/base/presenter/view/BaseView;",
        "",
        "page",
        "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;",
        "result",
        "",
        "onLoadDataSuccess",
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
.method public abstract onLoadDataSuccess(ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
