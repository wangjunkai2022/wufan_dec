.class Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;
.super Ljava/lang/Object;
.source "DetailRecyclerViewChileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->setData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

.field final synthetic val$sub:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iput-object p2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->val$sub:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iget-object v2, v2, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$100(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iget-object v1, v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$200(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clikeGuessYouLike:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->val$sub:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->getRec_context()Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecTid(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecScene(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecVersion(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->val$sub:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRecClick:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "downrecom"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iget-object v0, v0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$300(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iget-object v1, v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    iget-object v2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;->val$sub:Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->fromSearch(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
