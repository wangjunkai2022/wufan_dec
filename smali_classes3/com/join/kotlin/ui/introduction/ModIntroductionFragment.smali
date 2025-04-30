.class public Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModIntroductionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c0214
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private defSelectPos:I

.field draftUrl:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field private isAddData:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/x$a;",
            ">;"
        }
    .end annotation
.end field

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

.field rpcGameClient:Lcom/join/mgps/rpc/j;

.field rv_list_type:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;"
        }
    .end annotation
.end field

.field view_pager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    .line 4
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    return p0
.end method

.method static synthetic access$102(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    return-object p0
.end method

.method private synthetic lambda$aftervidew$0(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BbsTagListBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iput p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BbsTagListBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    iget p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->ClickContentTag:Lcom/papa/sim/statistic/Event;

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    iget v3, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/BbsTagListBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object p2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v5

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    :cond_0
    return-void
.end method


# virtual methods
.method aftervidew()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "draftUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->draftUrl:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    .line 8
    :cond_1
    new-instance v0, Li1/a$a;

    invoke-direct {v0}, Li1/a$a;-><init>()V

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Li1/a$a;->f:I

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07110f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Li1/a$b;->b:I

    .line 11
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$1;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;Li1/a$a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    new-instance v1, Lcom/join/kotlin/ui/introduction/b;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/b;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$i;)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$2;-><init>(Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loadData()V

    return-void
.end method

.method public getDraftUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "?"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&gameId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?gameId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadingView()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestBbsTagListArgs;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestBbsTagListArgs;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setUid(I)V

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestBbsTagListArgs;->setUserToken(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rpcGameClient:Lcom/join/mgps/rpc/j;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/j;->b(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->hideLoading()V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showMain(Ljava/util/List;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed()V

    :goto_0
    return-void
.end method

.method onDraftClick()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0910f6
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickcontributionButton:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v4, "1"

    invoke-virtual {v0, v4}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    new-instance v0, Lcom/papa/sim/statistic/Data;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v4, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v6

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->draftUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->getDraftUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loadData()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showMain(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method showLoadFailed()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->rv_list_type:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_layout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->loding_faile:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsTagListBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/BbsTagListBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iput v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    iget v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/BbsTagListBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/BbsTagListBean;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->mTypeAdapter:Lcom/join/kotlin/ui/introduction/ModIntroductionFragment$TypeAdapter;

    iget-object v2, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/BbsTagListBean;

    .line 9
    new-instance v3, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;

    invoke-direct {v3}, Lcom/join/kotlin/ui/introduction/ModIntroductionListFragment_;-><init>()V

    .line 10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "tagId"

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "gameId"

    .line 12
    iget-object v6, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iget-object v4, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    new-instance v5, Lcom/join/mgps/adapter/x$a;

    invoke-virtual {v2}, Lcom/join/mgps/dto/BbsTagListBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iput-boolean v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->isAddData:Z

    .line 17
    new-instance p1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->items:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 20
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 21
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->view_pager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/join/kotlin/ui/introduction/ModIntroductionFragment;->defSelectPos:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method
