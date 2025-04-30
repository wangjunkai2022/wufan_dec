.class Lcom/join/mgps/adapter/k2$a;
.super Ljava/lang/Object;
.source "HomeGameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/k2;->c(Lcom/join/mgps/adapter/k2$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

.field final synthetic b:Lcom/join/mgps/adapter/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/k2;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k2$a;->b:Lcom/join/mgps/adapter/k2;

    iput-object p2, p0, Lcom/join/mgps/adapter/k2$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/k2$a;->b:Lcom/join/mgps/adapter/k2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/adapter/k2$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/k2$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getUid()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/join/mgps/adapter/k2;->b(Lcom/join/mgps/adapter/k2;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "fromGameDetailP2"

    .line 3
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/adapter/k2$a;->a:Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/k2$a;->b:Lcom/join/mgps/adapter/k2;

    iget-object v0, v0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->enterUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
