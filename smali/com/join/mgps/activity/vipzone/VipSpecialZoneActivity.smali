.class public Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.super Lcom/BaseAppCompatActivity;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;,
        Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05f3
.end annotation


# instance fields
.field _from:I

.field _from_type:I

.field adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

.field appbar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field boardId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field businessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadView:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field filter:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filterArr:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field filterGames:Lcom/join/mgps/customview/n0;

.field filterPw:Lcom/join/mgps/customview/p0;

.field private firstVisiblePosition:I

.field private lastVisibleIndex:I

.field loding_faile:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field page:I

.field pageview:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

.field search:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipCenterDataMains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 7
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 8
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 9
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    .line 11
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->pageview:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$4;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-void
.end method

.method public static synthetic D0(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lambda$filter$1()V

    return-void
.end method

.method public static synthetic E0(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lambda$filter$0(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getGamelist()V

    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->showmainData(Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->addnewDatas(Ljava/util/List;)V

    return-void
.end method

.method private addnewDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    new-instance v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v1, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 4
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 5
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->setDownloadTasks(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUid(I)V

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setUserToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setVip(I)V

    .line 7
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterRequestBean;->setBoardId(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->N(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$2;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getGamelist()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0, p0}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;-><init>()V

    .line 3
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setBoardId(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setSortType(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setGameType(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialTag;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setGameClass(I)V

    .line 7
    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialgamelistRequestBean;->setPage(I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->M(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private synthetic lambda$filter$0(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateFrom()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->t1()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/n0;->d(Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$filter$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterArr:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    iget-object v4, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v1, v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setDownloadTasks(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :goto_0
    return-void
.end method

.method private showmainData(Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_faile:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getBanner()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getCollection_game_list()Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getCollection_game_list()Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;-><init>()V

    const-string v2, "\u70ed\u95e8\u6e38\u620f"

    .line 13
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->setTitle(Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    invoke-direct {v2, p0, v3, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneResultbean;->getRanking_game_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    new-instance v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v2, v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 19
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 20
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 21
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->setDownloadTasks(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    invoke-direct {v1, p0, v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;ILjava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateDowStateList(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->businessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v7, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto/16 :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_2

    .line 19
    :cond_8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateFrom()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3650

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x364f

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x364e

    .line 6
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x364d

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from_type:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitMemberpre:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lastVisibleIndex:I

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->lastVisibleIndex:I

    if-gt v0, v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 5
    iget v2, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/16 v4, 0xc

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->firstVisiblePosition:I

    sub-int v5, v0, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10
    iget-object v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 12
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;

    .line 13
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/a;->f(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v6, v6, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    .line 15
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    const-string v12, "/"

    cmp-long v13, v8, v10

    if-nez v13, :cond_2

    .line 16
    :try_start_1
    iget-object v8, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v8, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_1
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 19
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 20
    :cond_3
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 22
    iget-object v1, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$1;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getData()V

    .line 14
    iget v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u5feb\u901f\u9009\u5173"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u4e00\u952e\u6280\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u91d1\u624b\u6307"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->title:Landroid/widget/TextView;

    const-string v1, "MOD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateFrom()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->getDownloadTaskInfo()V

    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_5

    const/4 v1, 0x7

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 p1, 0xb

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownloadView()V

    return-void
.end method

.method downloadView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method filter()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/p0;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/p0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/p0;

    .line 3
    new-instance v1, Lcom/join/mgps/activity/vipzone/c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/c;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p0;->h(Lcom/join/mgps/customview/p0$c;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/p0;

    new-instance v1, Lcom/join/mgps/activity/vipzone/b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/b;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/p0;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterPw:Lcom/join/mgps/customview/p0;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->appbar:Landroid/view/View;

    iget v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->boardId:I

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/p0;->j(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterArr:Landroid/view/View;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method getDownloadTaskInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->r()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {v1}, Lg1/f;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateDownloadView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    const/16 v4, 0x30

    if-eq p1, v4, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadTasksMap:Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateProgressPartly()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method search()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    return-void
.end method

.method updateDownloadView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->downloadView:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 4
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
