.class Lcom/join/mgps/activity/SearchHintActivity$j;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->e1(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->a:Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->a:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->a:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->a:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->isThe_hot()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->a:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->isThe_score()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$j;->b:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity;->G0(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSearchRecommend:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method
