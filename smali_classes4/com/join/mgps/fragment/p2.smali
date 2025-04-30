.class public Lcom/join/mgps/fragment/p2;
.super Landroidx/fragment/app/Fragment;
.source "GameOlGiftPackageFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c024d
.end annotation


# instance fields
.field a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/rpc/d;

.field private g:Landroid/app/Activity;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/join/mgps/adapter/y1;

.field private q:Landroid/os/Handler;

.field r:Lcom/join/mgps/customview/t;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/join/mgps/dto/AccountBean;

.field private u:Lcom/join/mgps/customview/t;

.field private v:Lcom/join/mgps/dialog/x0;

.field private w:Z

.field x:Lcom/join/mgps/customview/t;

.field y:Lcom/join/mgps/customview/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p2;->h:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/p2;->j:Ljava/util/Map;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/join/mgps/fragment/p2;->k:I

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p2;->o:Z

    .line 6
    new-instance v0, Lcom/join/mgps/fragment/p2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p2$a;-><init>(Lcom/join/mgps/fragment/p2;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->q:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->r:Lcom/join/mgps/customview/t;

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/fragment/p2;->w:Z

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/p2;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/p2;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p2;->U(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/p2;)Lcom/join/mgps/dialog/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/p2;->v:Lcom/join/mgps/dialog/x0;

    return-object p0
.end method

.method static synthetic P(Lcom/join/mgps/fragment/p2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/p2;->h:Z

    return p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/p2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/p2;->k:I

    return p1
.end method

.method static synthetic R(Lcom/join/mgps/fragment/p2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/p2;->w:Z

    return p1
.end method

.method static synthetic S(Lcom/join/mgps/fragment/p2;)Lcom/join/mgps/customview/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    return-object p0
.end method

.method private U(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    const v2, 0x7f11043c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    const-string v3, "6"

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->h0()V

    goto :goto_1

    :cond_2
    const-string v3, "7"

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getSvip_level()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->g0()V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private V()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->r:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->r:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method T()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->f:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->i:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/p2;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasksiz     mapsize  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "infoo"

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/y1;

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->q:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/y1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->p:Lcom/join/mgps/adapter/y1;

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/adapter/y1;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/p2$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p2$b;-><init>(Lcom/join/mgps/fragment/p2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/p2$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p2$c;-><init>(Lcom/join/mgps/fragment/p2;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/p2$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p2$d;-><init>(Lcom/join/mgps/fragment/p2;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->p:Lcom/join/mgps/adapter/y1;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->v:Lcom/join/mgps/dialog/x0;

    return-void
.end method

.method Z(Lcom/join/mgps/dto/GiftPackageDataInfoBean;I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u9886\u53d6\u5931\u8d25"

    if-eqz v0, :cond_9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->t:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_game_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/d;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/p2;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->c0()V

    return-void

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk1/a;

    .line 14
    invoke-virtual {v3}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v3}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v4

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 17
    invoke-virtual {v3}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 20
    :cond_5
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {p0, v0, v1, p2}, Lcom/join/mgps/fragment/p2;->f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/join/mgps/fragment/p2;->f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/p2;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_8
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/p2;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->c0()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->c0()V

    .line 27
    throw p1

    .line 28
    :cond_9
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/p2;->showToast(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->c0()V

    :goto_3
    return-void
.end method

.method a0()V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/p2;->h:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/p2;->k:I

    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/p2;->b0(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/fragment/p2;->f:Lcom/join/mgps/rpc/d;

    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/d;->t(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 6
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 10
    invoke-virtual {v6}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 11
    invoke-static {v7, v8}, Lcom/join/mgps/Util/x;->j(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 12
    invoke-static {v7, v8}, Lcom/join/mgps/Util/x;->j(J)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v7, Lk1/a;

    invoke-direct {v7}, Lk1/a;-><init>()V

    .line 14
    invoke-virtual {v7, v0}, Lk1/a;->i(I)V

    .line 15
    invoke-virtual {v7, v5}, Lk1/a;->j(Ljava/lang/String;)V

    .line 16
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    new-instance v7, Lk1/a;

    invoke-direct {v7}, Lk1/a;-><init>()V

    const/4 v8, 0x2

    .line 18
    invoke-virtual {v7, v8}, Lk1/a;->i(I)V

    .line 19
    invoke-virtual {v7, v6}, Lk1/a;->h(Ljava/lang/Object;)V

    .line 20
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->e0()V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->e0()V

    .line 24
    :cond_3
    :goto_1
    iget v2, p0, Lcom/join/mgps/fragment/p2;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/join/mgps/fragment/p2;->k:I

    .line 25
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/p2;->showMain(Ljava/util/List;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    goto :goto_2

    .line 27
    :cond_4
    iget v2, p0, Lcom/join/mgps/fragment/p2;->k:I

    if-ne v2, v0, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLodingFailed()V

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->e0()V

    goto :goto_2

    .line 30
    :cond_6
    iget v2, p0, Lcom/join/mgps/fragment/p2;->k:I

    if-ne v2, v0, :cond_7

    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLodingFailed()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->e0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 35
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLodingFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :goto_2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/p2;->h:Z

    goto :goto_4

    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/fragment/p2;->h:Z

    .line 39
    throw v0

    .line 40
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->i0()V

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLodingFailed()V

    :goto_4
    return-void
.end method

.method public b0(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, p1, v2, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameOLGiftRequest(III)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method c0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->v:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method d0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/p2;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->a0()V

    return-void
.end method

.method e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    return-void
.end method

.method f0(Lcom/join/mgps/dto/GiftPackageDataOperationBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->p:Lcom/join/mgps/adapter/y1;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/t;

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    const v2, 0x7f120176

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v1, 0x7f0c0563

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v2, 0x7f09036b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v3, 0x7f090886

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 7
    iget-object v3, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v4, 0x7f090876

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v5, 0x7f09100a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    iget-object v5, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v6, 0x7f090db2

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 10
    iget-object v6, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v7, 0x7f090db1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 11
    iget-object v7, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v8, 0x7f090371

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 12
    iget-object v8, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    const v9, 0x7f090a6f

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/join/mgps/fragment/p2;->s:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eq p3, v8, :cond_1

    const/4 v8, 0x2

    if-eq p3, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "\u5df2\u9886\u53d6"

    .line 13
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/join/mgps/Util/x;->w(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p3, "\u9886\u53f7\u6210\u529f"

    .line 19
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p3

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u5173\u95ed"

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "\u4e0b\u8f7d\u6e38\u620f"

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v3, Lcom/join/mgps/fragment/p2$e;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/fragment/p2$e;-><init>(Lcom/join/mgps/fragment/p2;Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p1, Lcom/join/mgps/fragment/p2$f;

    invoke-direct {p1, p0}, Lcom/join/mgps/fragment/p2$f;-><init>(Lcom/join/mgps/fragment/p2;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    .line 26
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const-string p1, "\u4e0b\u8f7d\u4e2d.."

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u542f\u52a8\u6e38\u620f"

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_4

    .line 30
    invoke-virtual {p3}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->s:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->w2(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 31
    :cond_4
    :goto_1
    new-instance p1, Lcom/join/mgps/fragment/p2$g;

    invoke-direct {p1, p0, p2, p3}, Lcom/join/mgps/fragment/p2$g;-><init>(Lcom/join/mgps/fragment/p2;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/p2;->u:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method

.method g0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->Z(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->x:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method h0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->b0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->y:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method i0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->b:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/p2;->W()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/fragment/p2;->X()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->v:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/p2;->t:Lcom/join/mgps/dto/AccountBean;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/fragment/p2;->k:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLoding()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->a0()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 1
    iput p3, p0, Lcom/join/mgps/fragment/p2;->m:I

    .line 2
    iput p2, p0, Lcom/join/mgps/fragment/p2;->n:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/fragment/p2;->o:Z

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/join/mgps/fragment/p2;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->showLoding()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/p2;->a0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;)V"
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
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget v0, p0, Lcom/join/mgps/fragment/p2;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget p1, p0, Lcom/join/mgps/fragment/p2;->k:I

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   showMain"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "infoo"

    invoke-static {v0, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/p2;->p:Lcom/join/mgps/adapter/y1;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p2;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
