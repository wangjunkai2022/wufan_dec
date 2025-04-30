.class final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FindGameClassfyFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->onBindViewHolder(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;I)V
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
.field final synthetic $da:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->$da:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->getGameTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    .line 3
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->$da:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v2

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;->getListener()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1;->$da:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameTypeData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameTypeData;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;->onSelected(I)V

    return-void
.end method
