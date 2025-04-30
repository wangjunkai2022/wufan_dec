.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.super Lcom/join/mgps/customview/u;
.source "LuckDrawBasPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;,
        Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$OnGameOperateListener;
    }
.end annotation


# instance fields
.field Luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

.field adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

.field closed:Landroid/view/View;

.field dataMainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field historyTitle:Landroid/view/View;

.field nullHistory:Landroid/view/View;

.field page:I

.field recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

.field title:Landroid/widget/TextView;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 5
    iput p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    .line 7
    iput p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    .line 8
    iput p3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    iget-object v1, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 3
    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUserToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p2

    invoke-interface {p2, v0}, Lq1/h;->m0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$2;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c03c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090cf3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09065a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->closed:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090b4a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->nullHistory:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09100f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    .line 10
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    .line 11
    iget v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 17
    iget v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->closed:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    new-instance v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->onClickClosed(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/Luckbean;I)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->Luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 2
    iput p3, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    const/16 p1, 0x8

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    const-string v1, "\u5956\u54c1\u6c60"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getPrize_list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;

    .line 7
    new-instance v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 8
    iput p3, v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 9
    iput-object v0, v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    const-string p2, "\u4e2d\u5956\u8bb0\u5f55"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    iget p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->getHistory(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->title:Landroid/widget/TextView;

    const-string v1, "\u6d3b\u52a8\u89c4\u5219"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->historyTitle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getRule()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V

    .line 22
    iput p3, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    .line 23
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 26
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
