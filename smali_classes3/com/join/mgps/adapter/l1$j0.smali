.class Lcom/join/mgps/adapter/l1$j0;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v1}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goQQGroup(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5df2\u590d\u5236QQ\u53f7\uff0c\u8bf7\u5b89\u88c5QQ\u540e\u7c98\u8d34\u641c\u7d22"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {p1}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$j0;->a:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->f(Lcom/join/mgps/adapter/l1;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialMoreBean;->getTpl_two_qq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->M(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
