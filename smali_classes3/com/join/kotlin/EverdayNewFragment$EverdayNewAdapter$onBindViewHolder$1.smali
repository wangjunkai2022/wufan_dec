.class final Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EverdayNewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
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
.field final synthetic $gameData:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    iput-object p2, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->$gameData:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;

    invoke-virtual {v1}, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->$gameData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->$gameData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1;->$gameData:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {v4}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v5

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
