.class Lcom/join/mgps/activity/SearchHintActivity$m$a;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity$m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FavoriteBean;

.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity$m;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity$m;Lcom/join/mgps/dto/FavoriteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->b:Lcom/join/mgps/activity/SearchHintActivity$m;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a:Lcom/join/mgps/dto/FavoriteBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/join/mgps/activity/GameDetailActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromid"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_1
    const-string p3, "groupuid"

    .line 4
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "gameid"

    .line 5
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "company_id"

    .line 6
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a:Lcom/join/mgps/dto/FavoriteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FavoriteBean;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a:Lcom/join/mgps/dto/FavoriteBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FavoriteBean;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v5, "0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a:Lcom/join/mgps/dto/FavoriteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoriteBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$m$a;->a:Lcom/join/mgps/dto/FavoriteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoriteBean;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromSearchP1"

    invoke-virtual {p1, v2, v0, v1}, Lcom/papa/sim/statistic/p;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
