.class Lcom/join/mgps/fragment/a0$e$b;
.super Ljava/lang/Object;
.source "DIscoveryTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/a0$e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DiscoverListItemBean;

.field final synthetic b:Lcom/join/mgps/fragment/a0$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/a0$e;Lcom/join/mgps/dto/DiscoverListItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a0$e$b;->b:Lcom/join/mgps/fragment/a0$e;

    iput-object p2, p0, Lcom/join/mgps/fragment/a0$e$b;->a:Lcom/join/mgps/dto/DiscoverListItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/a0$e$b;->b:Lcom/join/mgps/fragment/a0$e;

    iget-object v0, v0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/a0$e$b;->a:Lcom/join/mgps/dto/DiscoverListItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
