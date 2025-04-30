.class public Lcom/join/mgps/activity/ForumPostsTagSelectActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumPostsTagSelectActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0038
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/h;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field n:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private o:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private p:Z

.field q:Ljava/lang/String;

.field r:Lcom/join/android/app/component/video/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->j:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->k:Ljava/util/List;

    const-string v0, "ForumPostsTagSelectActivity"

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->d:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 2
    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$a;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->r:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$b;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->d:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method D0(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method E0(I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u6ca1\u6709\u66f4\u591a\u8bdd\u9898\u54e6~"

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$d;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$c;

    invoke-direct {p1, p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$c;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    :cond_3
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity$e;-><init>(Lcom/join/mgps/activity/ForumPostsTagSelectActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->e:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :goto_0
    return-void
.end method

.method F0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    if-lez v0, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method H0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->M0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->N0()V

    :goto_0
    return-void
.end method

.method declared-synchronized I0()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->L0(Lcom/join/mgps/dto/RecommendLabelTag;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method J0(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ln1/e0;->o()Ln1/e0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method K0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->F0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672a\u52fe\u9009\u4efb\u4f55\u6807\u7b7e\u54df~"

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->D0(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->p:Z

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->onBackPressed()V

    return-void
.end method

.method L0(Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;

    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    .line 2
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$b0;-><init>(Lcom/join/mgps/dto/RecommendLabelTag;Z)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->o:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    return-void
.end method

.method M0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->g:Lcom/join/mgps/rpc/h;

    iget v4, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->m:I

    invoke-interface {v3, v1, v2, v4}, Lcom/join/mgps/rpc/h;->u(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->O0(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f110206

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->D0(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    :goto_0
    return-void
.end method

.method N0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->g:Lcom/join/mgps/rpc/h;

    iget v4, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->n:I

    iget v5, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->m:I

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/join/mgps/rpc/h;->w(ILjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->O0(Ljava/util/List;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f110206

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->D0(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    :goto_0
    return-void
.end method

.method O0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
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

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->k:Ljava/util/List;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->I0()V

    return-void

    :cond_3
    :goto_1
    const/16 p1, 0xa

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->g:Lcom/join/mgps/rpc/h;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9009\u62e9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "\u6536\u5f55"

    goto :goto_0

    :cond_0
    const-string v2, "\u5220\u9664"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bdd\u9898"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->f:Landroid/widget/Button;

    const-string v2, "\u5b8c\u6210"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->r:Lcom/join/android/app/component/video/c;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selectedTags"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v5, Ljava/util/ArrayList;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Lcom/join/mgps/dto/RecommendLabelTag;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->k:Ljava/util/List;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->G0()V

    .line 14
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->E0(I)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->H0()V

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

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget v3, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->l:I

    const-string v4, "action"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ids"

    .line 7
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->r:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->r:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsTagSelectActivity;->r:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    :cond_0
    return-void
.end method
