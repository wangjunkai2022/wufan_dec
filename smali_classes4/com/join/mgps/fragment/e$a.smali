.class Lcom/join/mgps/fragment/e$a;
.super Landroid/content/BroadcastReceiver;
.source "CardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/e$a;->a:Lcom/join/mgps/fragment/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "gameData"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    :cond_1
    const-string p2, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 6
    new-instance p1, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {p1}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/e$a;->a:Lcom/join/mgps/fragment/e;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/e;->updateButn()V

    :cond_5
    return-void
.end method
