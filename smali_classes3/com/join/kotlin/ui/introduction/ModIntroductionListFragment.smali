.class public Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModIntroductionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0215
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;"
        }
    .end annotation
.end field

.field gameId:Ljava/lang/String;

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

.field private page:I

.field rpcGameClient:Lcom/join/mgps/rpc/j;

.field rv_list_data:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field setNetwork:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tagId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    return p0
.end method

.method static synthetic access$008(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    return v0
.end method

.method private getUid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BbsListBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickContentCard:Lcom/papa/sim/statistic/Event;

    new-instance p2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string p3, "1"

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    new-instance p2, Lcom/papa/sim/statistic/Data;

    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v5

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 3
    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/activity/IntroductionActivity_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsListBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/IntroductionActivity_$w;->d(I)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object p1

    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$w;->e(I)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object p1

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/IntroductionActivity_$w;->a(Ljava/lang/String;)Lcom/join/mgps/activity/IntroductionActivity_$w;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "gameId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "tagId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    .line 9
    :cond_1
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    .line 10
    iput v1, v0, Li1/a$a;->f:I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07113b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->d:I

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->a:I

    .line 13
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;Li1/a$a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    new-instance v1, Lcom/join/kotlin/ui/introduction/c;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/c;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;)V

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/join/mgps/base/BaseQuickAdapter$k;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->page:I

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method loadData(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadingView()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsListArgs;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setPage(Ljava/lang/Integer;)V

    .line 6
    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->tagId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setTagId(Ljava/lang/Integer;)V

    .line 7
    invoke-direct {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsListArgs;->setUid(Ljava/lang/Integer;)V

    .line 8
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->h(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->hideLoading()V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showMain(Ljava/util/List;Z)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed()V

    :goto_1
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loadData(I)V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLoadingView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->rv_list_data:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method showMain(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsListBean;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->datas:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment;->mItemAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment$ItemAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->loadMoreEnd()V

    :goto_0
    return-void
.end method
