.class Lcom/join/mgps/activity/GameDetailActivity$k$b;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$k;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-boolean v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->C0:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "brief"

    .line 3
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v3, p1, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v6

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$b;->b:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget v7, p1, Lcom/join/mgps/activity/GameDetailActivity;->J:I

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->g1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
