.class Lcom/join/mgps/adapter/l1$r;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$r;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$r;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$r;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$r;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialAuxiliaryToolBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
