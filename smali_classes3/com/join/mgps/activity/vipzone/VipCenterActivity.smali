.class public Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.super Lcom/BaseAppCompatActivity;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;,
        Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05eb
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

.field context:Landroid/content/Context;

.field isstruckting:Z

.field line:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

.field private prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field private prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field private prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field vipCenterDataMains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->showData(Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->startScratchPrize()V

    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p0
.end method

.method static synthetic access$202(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeList:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p1
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeData:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->prizeRule:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    return-object p1
.end method

.method private addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->getGame_list()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->i0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$1;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private showData(Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_faile:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->loding_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getLuck_draw_info()Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getLuck_draw_info()Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getMod_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getGf_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getOs_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getCp_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->addItemHlist(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    .line 13
    new-instance v0, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    invoke-direct {v0}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;-><init>()V

    const-string v1, "\u4f1a\u5458\u4e13\u4eab\u5408\u96c6"

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->setTitle(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->getMember_collection()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private startScratchPrize()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUserToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lq1/h;->k0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$2;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->visitMembercen:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    const-string v1, "\u4f1a\u5458\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->title_textview:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->adapter:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->line:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->getData()V

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

.method delaysetStrcth(Lcom/join/mgps/customview/ScratchView;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->getData()V

    return-void
.end method
