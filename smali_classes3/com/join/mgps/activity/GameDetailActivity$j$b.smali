.class Lcom/join/mgps/activity/GameDetailActivity$j$b;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "comments"

    .line 2
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget v5, p1, Lcom/join/mgps/activity/GameDetailActivity;->J:I

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getGame_score()Lcom/join/mgps/dto/GameScore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameScore;->getSgc_switch()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->f1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->a:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->f(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->i(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->h(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->g(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->j(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->c:Lcom/join/mgps/dto/GameListItemBean;

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameListItemBean;->getComment_score_switch()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentAllListActivity_$p;->d(Ljava/lang/String;)Lcom/join/mgps/activity/CommentAllListActivity_$p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
