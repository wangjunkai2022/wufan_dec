.class Lcom/join/mgps/adapter/l1$f1;
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
.field final synthetic a:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$f1;->a:Lcom/join/mgps/adapter/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$f1;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$f1;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCommunity_entrance_tag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method
