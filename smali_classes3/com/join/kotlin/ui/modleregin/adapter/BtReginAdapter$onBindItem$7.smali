.class final Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;
.super Lkotlin/jvm/internal/Lambda;
.source "BtReginAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
        "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;",
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
        "viewId",
        "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;",
        "item",
        "position",
        "",
        "invoke",
        "(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;

    invoke-direct {v0}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;-><init>()V

    sput-object v0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;->INSTANCE:Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$7;->invoke(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)V
    .locals 0
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    return-void
.end method
