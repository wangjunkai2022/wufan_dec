.class public Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;
.super Lcom/BaseAppCompatActivity;
.source "MyGameGuesslikeActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04cf
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->title_textview:Landroid/widget/TextView;

    const-string v1, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->showLoadingLayoutBase()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getDownloadRecomedData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 5
    new-instance v3, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    invoke-direct {v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    const-string v4, "0"

    .line 6
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    const-string v4, "2"

    .line 7
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setDataType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lq1/h;->n0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity$1;-><init>(Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0909eb

    return v0
.end method

.method public loadDataBase()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->getDownloadRecomedData()V

    return-void
.end method

.method showGuesslike(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "3"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v1, "0"

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->showGuessYouLike:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->hideLoadingLayoutBase()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p1, v2}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/MyGameGuesslikeActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
