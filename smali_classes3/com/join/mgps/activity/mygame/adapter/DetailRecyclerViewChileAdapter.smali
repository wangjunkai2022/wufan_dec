.class public Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DetailRecyclerViewChileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private gameId:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->ctx:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->arrayList:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->position:I

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->arrayList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->position:I

    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->gameId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->ctx:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method fromSearch(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->position:I

    if-nez v1, :cond_0

    const-string v1, "130"

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "128"

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string v1, "131"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->arrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->setData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;

    iget-object p2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->ctx:Landroid/content/Context;

    const v0, 0x7f0c0134

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;-><init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->getRec_context()Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->isHasSendData()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;->setHasSendData(Z)V

    .line 4
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecTid(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getScene()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecScene(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecPosition(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean$RecContext;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setRecVersion(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v2, Lcom/papa/sim/statistic/Event;->gameRecShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {p1, v2, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 11
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

    :cond_0
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->gameId:Ljava/lang/String;

    return-void
.end method
