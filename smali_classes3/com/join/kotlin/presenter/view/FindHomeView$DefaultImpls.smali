.class public final Lcom/join/kotlin/presenter/view/FindHomeView$DefaultImpls;
.super Ljava/lang/Object;
.source "FindHomeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/presenter/view/FindHomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static onLoadDataSuccess(Lcom/join/kotlin/presenter/view/FindHomeView;ILcom/join/kotlin/ui/findgame/data/FindChoiceResultData;)V
    .locals 0
    .param p0    # Lcom/join/kotlin/presenter/view/FindHomeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
