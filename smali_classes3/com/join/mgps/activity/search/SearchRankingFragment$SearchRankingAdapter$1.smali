.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;
.super Ljava/lang/Object;
.source "SearchRankingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->onBindViewHolder(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

.field final synthetic val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSearchRankingGame:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    iget-object v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    iget-object v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
