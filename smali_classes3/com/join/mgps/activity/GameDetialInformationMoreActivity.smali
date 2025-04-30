.class public Lcom/join/mgps/activity/GameDetialInformationMoreActivity;
.super Lcom/BaseFragmentActivity;
.source "GameDetialInformationMoreActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0140
.end annotation


# instance fields
.field private A:I

.field B:Lcom/join/mgps/dialog/x0;

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/t0;

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f091030
    .end annotation
.end field

.field n:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field o:Lcom/join/mgps/rpc/d;

.field p:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field q:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private r:I

.field s:Lcom/join/mgps/dto/DetialIntentBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private t:I

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->t:I

    .line 4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->u:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->v:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->w:Ljava/util/Map;

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->x:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->y:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->z:Z

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->A:I

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->z:Z

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->A:I

    return p1
.end method


# virtual methods
.method I0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->B:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->B:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method J0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->z:Z

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DetialIntentBean;->getGameId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    iget v4, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->A:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->K0(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->o:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->F(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->o:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->j0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->M0()V

    goto :goto_1

    .line 13
    :cond_1
    iget v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    .line 14
    :goto_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->O0(Ljava/util/List;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->R0()V

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->M0()V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->R0()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->R0()V

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->z:Z

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->I0()V

    goto :goto_4

    .line 24
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->z:Z

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->I0()V

    .line 26
    throw v0

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->R0()V

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLodingFailed()V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->I0()V

    :goto_4
    return-void
.end method

.method public K0(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialImfMore(Ljava/lang/String;III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method L0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->J0()V

    return-void
.end method

.method M0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method public N0(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p2, :cond_4

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameDetialStrategyTag;

    .line 5
    rem-int/lit8 v5, v2, 0x4

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0c01f2

    invoke-virtual {v3, v7, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f091089

    .line 7
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09108a

    .line 8
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09108b

    .line 9
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f09108c

    .line 10
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x4

    new-array v11, v11, [Landroid/widget/TextView;

    aput-object v7, v11, v1

    aput-object v8, v11, v6

    const/4 v7, 0x2

    aput-object v9, v11, v7

    const/4 v7, 0x3

    aput-object v10, v11, v7

    .line 11
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v3, v11

    .line 12
    :cond_2
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_name()Ljava/lang/String;

    move-result-object v7

    .line 13
    iget-object v8, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060128

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 14
    aget-object v5, v3, v5

    .line 15
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget v7, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->A:I

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDetialStrategyTag;->getTag_id()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 19
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 21
    :goto_1
    new-instance v6, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;

    invoke-direct {v6, p0, v4}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$d;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;Lcom/join/mgps/dto/GameDetialStrategyTag;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method O0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->C:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->N0(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    if-ne p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->c:Lcom/join/mgps/adapter/t0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->c:Lcom/join/mgps/adapter/t0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method P0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method Q0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->modufour:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method R0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->o:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->B:Lcom/join/mgps/dialog/x0;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getStartegyTab()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->A:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getIntentType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u6700\u65b0\u8d44\u8baf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->s:Lcom/join/mgps/dto/DetialIntentBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetialIntentBean;->getStrategyTags()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->C:Ljava/util/List;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->N0(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u653b\u7565"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    new-instance v0, Lcom/join/mgps/adapter/t0;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/t0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->c:Lcom/join/mgps/adapter/t0;

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/t0;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLoding()V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->J0()V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$a;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$b;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;-><init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->f:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->c:Lcom/join/mgps/adapter/t0;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

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

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->t:I

    .line 2
    iput p2, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->y:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->r:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->J0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
