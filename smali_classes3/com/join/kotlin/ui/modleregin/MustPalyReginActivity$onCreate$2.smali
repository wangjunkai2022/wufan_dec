.class final Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MustPalyReginActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
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
        "\u0000\u0016\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "item",
        "<anonymous parameter 2>",
        "",
        "invoke",
        "(ILcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;I)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$2;->invoke(ILcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;I)V
    .locals 1
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    .line 3
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result p2

    invoke-virtual {p1, p3, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
