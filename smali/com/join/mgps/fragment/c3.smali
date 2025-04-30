.class public Lcom/join/mgps/fragment/c3;
.super Lcom/join/mgps/fragment/u0;
.source "LabelFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c020e
.end annotation


# static fields
.field private static final D:I = 0xa


# instance fields
.field A:Z

.field B:Z

.field C:Lcom/join/mgps/customview/t;

.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Lcom/join/mgps/rpc/h;

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/app/Activity;

.field private l:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field m:Z

.field public n:I

.field public o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/join/mgps/customview/j;

.field r:Ljava/lang/String;

.field s:Lcom/join/android/app/component/video/c;

.field t:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private u:Lcom/join/mgps/rpc/d;

.field private v:Ljava/util/Map;
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

.field x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c3;->m:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    const-string v1, "LabelFragment"

    .line 5
    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->r:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/join/mgps/fragment/c3;->z:I

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/fragment/c3;->A:Z

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->C:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/c3;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private N(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->C:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->C:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->r0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->S()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->q0()V

    :goto_0
    return-void
.end method

.method private d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

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
    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/c3;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/c3;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

.method private f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/c3;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/c3;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private h0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/c3;->Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->N(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private n0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 2
    iget-object v1, v0, Lcom/join/mgps/fragment/c3;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/join/mgps/fragment/c3;->e:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v1

    move/from16 v22, v1

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    .line 5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v6, ""

    const/4 v5, 0x1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/4 v4, 0x1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v9

    if-lez v9, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v9

    if-lez v9, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v18

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v19

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v20

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v21

    move-object v9, v3

    move v10, v4

    move/from16 v15, v22

    invoke-direct/range {v9 .. v21}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 17
    iget-object v2, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_4
    if-nez v1, :cond_8

    .line 18
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/4 v10, 0x1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v11, 0x1

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    .line 20
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    .line 21
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v4

    if-lez v4, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v18

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v19

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v20

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v21

    move-object v9, v3

    move/from16 v15, v22

    invoke-direct/range {v9 .. v21}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 29
    iget-object v2, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto/16 :goto_f

    .line 30
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/16 v19, 0x1

    .line 31
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 32
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    const-string v2, "#00FFFFFF"

    const-string v3, "#FFFF6464"

    if-lez v1, :cond_b

    .line 34
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v4, "\u7cbe"

    .line 35
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 39
    invoke-interface {v10, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v1

    if-lez v1, :cond_c

    .line 41
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v4, "\u9876"

    .line 42
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 46
    invoke-interface {v10, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v7

    move/from16 v3, v19

    const/4 v15, 0x1

    move-object v5, v11

    move-object v14, v6

    move-object v6, v10

    invoke-static/range {v1 .. v6}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    .line 50
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;

    xor-int/lit8 v10, v9, 0x1

    if-eqz v19, :cond_f

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v2

    if-lez v2, :cond_f

    const/4 v11, 0x1

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    :goto_b
    if-eqz v19, :cond_10

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v12, 0x1

    goto :goto_c

    :cond_10
    const/4 v12, 0x0

    .line 53
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-eqz v19, :cond_11

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_11

    const/16 v16, 0x1

    goto :goto_d

    :cond_11
    const/16 v16, 0x0

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v19, :cond_12

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v3

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    :goto_e
    move-object/from16 v18, v3

    move-object v9, v1

    move-object v3, v14

    move v14, v2

    const/4 v2, 0x1

    move/from16 v15, v22

    invoke-direct/range {v9 .. v20}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 58
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-direct {v4, v5, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 59
    iget-object v5, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v5, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 60
    iget-object v4, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v4

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ca2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v5}, Lcom/join/mgps/Util/b0;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    goto :goto_10

    :cond_13
    :goto_f
    move-object v3, v6

    const/4 v2, 0x1

    .line 63
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v5, 0x1

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_1b

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    move-result-object v1

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v6

    move-object v7, v3

    move-object v8, v7

    const/4 v9, 0x0

    :goto_12
    if-eqz v1, :cond_17

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_17

    .line 68
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 69
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 70
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 71
    :cond_15
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 72
    invoke-static {v8}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 73
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v8

    :cond_16
    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 75
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v9

    goto :goto_14

    .line 77
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v9

    goto :goto_14

    :cond_19
    move-object v9, v3

    :goto_14
    if-eqz v6, :cond_1a

    .line 79
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;

    invoke-direct {v6, v7, v8, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 80
    iget-object v4, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v4, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto :goto_15

    :cond_1a
    if-eqz v1, :cond_1b

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 82
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v7, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v8, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v9

    invoke-direct {v8, v1, v4, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v6, v7, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 84
    iget-object v1, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    :cond_1b
    :goto_15
    if-eqz v5, :cond_1d

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/c3;->c0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 86
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 88
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 89
    :cond_1c
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v6

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    invoke-direct {v4, v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 93
    iget-object v1, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 94
    :cond_1d
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;

    const/4 v4, 0x1

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v8

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v9

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v10

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v11

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v12

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v13

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    invoke-direct {v1, v2, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 104
    iget-object v2, v0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    return-void
.end method

.method private o0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 3
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/c3;->n0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method A0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/c3;->N(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public O()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method Q(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz v1, :cond_5

    .line 3
    iget v1, p0, Lcom/join/mgps/fragment/c3;->z:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->u:Lcom/join/mgps/rpc/d;

    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 12
    iget-boolean v0, p0, Lcom/join/mgps/fragment/c3;->A:Z

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/c3;->v0(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/c3;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/c3;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/c3;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_4
    :goto_1
    iput v1, p0, Lcom/join/mgps/fragment/c3;->z:I

    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/fragment/c3;->A:Z

    goto :goto_3

    .line 21
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/c3;->z:I

    .line 22
    iput-boolean v1, p0, Lcom/join/mgps/fragment/c3;->A:Z

    .line 23
    throw p1

    .line 24
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/c3;->showToast(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method S()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/c3;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/c3;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, -0x1

    if-ne v2, v11, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    return-void

    :cond_0
    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    return-void

    .line 5
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/join/mgps/fragment/c3;->o:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->f:Lcom/join/mgps/rpc/h;

    iget v4, p0, Lcom/join/mgps/fragment/c3;->b:I

    const/16 v6, 0xa

    iget v7, p0, Lcom/join/mgps/fragment/c3;->d:I

    iget-object v8, p0, Lcom/join/mgps/fragment/c3;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/join/mgps/fragment/c3;->e:Ljava/lang/String;

    move v5, v0

    invoke-interface/range {v2 .. v10}, Lcom/join/mgps/rpc/h;->X(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iput v0, p0, Lcom/join/mgps/fragment/c3;->n:I

    .line 14
    invoke-virtual {p0, v2, v0}, Lcom/join/mgps/fragment/c3;->z0(Ljava/util/List;I)V

    if-gt v0, v1, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->hideLoading()V

    goto :goto_3

    .line 16
    :cond_5
    :goto_0
    iput v11, p0, Lcom/join/mgps/fragment/c3;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    return-void

    :cond_6
    :goto_1
    if-gt v0, v1, :cond_8

    .line 18
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->q0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 19
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "Label"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListData Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v0, v1, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->q0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->w0()V

    .line 23
    throw v0

    :cond_9
    if-gt v0, v1, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->q0()V

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->u0()V

    :goto_5
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->u:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/c3;->m:Z

    return v0
.end method

.method W()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

    return-void
.end method

.method declared-synchronized X()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/c3;->o0()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Z(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/c3;->y0(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method a0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->f:Lcom/join/mgps/rpc/h;

    .line 2
    new-instance v0, Lcom/join/android/app/component/video/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/c3;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/fragment/c3;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 4
    new-instance v1, Lcom/join/mgps/fragment/c3$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c3$c;-><init>(Lcom/join/mgps/fragment/c3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q0(Lcom/join/mgps/listener/f;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/fragment/c3;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/fragment/c3$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c3$d;-><init>(Lcom/join/mgps/fragment/c3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/c3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c3$e;-><init>(Lcom/join/mgps/fragment/c3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->q:Lcom/join/mgps/customview/j;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->l0()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->S()V

    return-void
.end method

.method b0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->f:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/join/mgps/rpc/h;->o(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v2

    const/16 v3, 0x2c2

    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/c3;->k0(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->p0()V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->isResult()Z

    .line 12
    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->m1(Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method c0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->v:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
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
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->w:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->x:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c3;->e:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->r0()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->q:Lcom/join/mgps/customview/j;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->u0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/c3;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->l0()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->r0()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->q:Lcom/join/mgps/customview/j;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->u0()V

    :cond_2
    :goto_0
    return-void
.end method

.method k0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPraise(I)V

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_praise(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->X()V

    :cond_3
    return-void
.end method

.method l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/c3$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c3$b;-><init>(Lcom/join/mgps/fragment/c3;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/fragment/c3;->m:Z

    return-void
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    return-void
.end method

.method public onBackPressedMy()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/c3;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/fragment/c3;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tag_id"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/c3;->b:I

    const-string v0, "type"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/c3;->d:I

    const-string v0, "position"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/fragment/c3;->c:I

    const-string v0, "fid"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/c3;->e:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/c3;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip DownloadStatus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/c3;->x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/join/mgps/activity/label/MainLabelActivity;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/join/mgps/activity/label/MainLabelActivity;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->J0()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/fragment/c3;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->W()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/c3;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->N()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->s:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method p0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method q0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method r0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c3;->R()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method t0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method u0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const v1, 0x7f110206

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method v0(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    or-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/c3;->y0(Ljava/util/List;)V

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->n0(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v2

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_7
    :goto_1
    return-void
.end method

.method w0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/fragment/c3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/c3$a;-><init>(Lcom/join/mgps/fragment/c3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public x(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3;->i:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    long-to-int p3, p2

    .line 2
    invoke-virtual {v0, p1, p3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method x0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->e0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->g0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/c3;->h0()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->d0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/c3;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c3;->h0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method y0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->X()V

    return-void
.end method

.method z0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->t0()V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c3;->l0()V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ltz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/join/mgps/fragment/c3;->p:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 12
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/c3;->n0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/c3;->l:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
