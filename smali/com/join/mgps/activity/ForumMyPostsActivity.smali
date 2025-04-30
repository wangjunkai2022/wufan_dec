.class public Lcom/join/mgps/activity/ForumMyPostsActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumMyPostsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0037
.end annotation


# instance fields
.field A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field C:I

.field D:Z

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$n1;",
            ">;"
        }
    .end annotation
.end field

.field F:Lcom/join/mgps/customview/t;

.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field j:Ljava/lang/String;

.field k:Lcom/join/android/app/component/video/c;

.field l:Lcom/join/mgps/rpc/h;

.field private m:I

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:I

.field w:Landroid/os/Handler;

.field private x:Lcom/join/mgps/rpc/d;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    const-string v0, "ForumMyPostsActivity"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->m:I

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->o:I

    const/16 v1, 0x10

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->p:I

    const/16 v1, 0x20

    .line 7
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->q:I

    const/16 v1, 0x11

    .line 8
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->r:I

    const/16 v1, 0x12

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->s:I

    const/16 v1, 0x14

    .line 10
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->t:I

    const/16 v1, 0x18

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->u:I

    .line 12
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 13
    new-instance v1, Lcom/join/mgps/activity/ForumMyPostsActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity$a;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->w:Landroid/os/Handler;

    .line 14
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    .line 18
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->C:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->D:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->F:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ForumMyPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    return p0
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ForumMyPostsActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    return p1
.end method

.method static synthetic F0(Lcom/join/mgps/activity/ForumMyPostsActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->m:I

    return p0
.end method

.method static synthetic G0(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic H0(Lcom/join/mgps/activity/ForumMyPostsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->R0()V

    return-void
.end method

.method private K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->F:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->F:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private O0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u5e16\u5b50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumMyPostsActivity$b;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity$b;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/activity/ForumMyPostsActivity$c;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity$c;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/activity/ForumMyPostsActivity$d;

    invoke-direct {v1, p0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity$d;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private P0()V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    return-void
.end method

.method private R0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->P0()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Q0()V

    goto :goto_0

    :cond_0
    const v0, 0x7f110206

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    :goto_0
    return-void
.end method

.method private Y0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

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
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V
    .locals 23

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/4 v3, 0x1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v14

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v16

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v19

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v20

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v21

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v22

    move-object v10, v2

    move v11, v3

    invoke-direct/range {v10 .. v22}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    iget-object v1, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    move/from16 v10, p2

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 15
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/4 v11, 0x1

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 17
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 18
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v15

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v16

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_6

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v19

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v20

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v21

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v22

    move-object v10, v2

    invoke-direct/range {v10 .. v22}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    iget-object v1, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 28
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v21, 0x1

    .line 29
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v0

    const-string v1, "#00FFFFFF"

    if-lez v0, :cond_a

    .line 32
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v2, "\u7cbe"

    .line 33
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v2, "#FF8378FF"

    .line 35
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 37
    invoke-interface {v5, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v0

    if-lez v0, :cond_b

    .line 39
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v2, "\u9876"

    .line 40
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v1, "#FFFF6464"

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 44
    invoke-interface {v5, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v2, v21

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 48
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;

    xor-int/lit8 v12, v10, 0x1

    if-eqz v21, :cond_e

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v13, 0x1

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    :goto_a
    if-eqz v21, :cond_f

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v14, 0x1

    goto :goto_b

    :cond_f
    const/4 v14, 0x0

    .line 51
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v16

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v17

    if-eqz v21, :cond_10

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_10

    const/16 v18, 0x1

    goto :goto_c

    :cond_10
    const/16 v18, 0x0

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v21, :cond_11

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v20, v1

    move-object v11, v0

    invoke-direct/range {v11 .. v22}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 57
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 58
    iget-object v2, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 60
    :cond_12
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1a

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRs_list()Ljava/util/List;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v3

    move-object v4, v7

    move-object v5, v4

    :goto_10
    if-eqz v1, :cond_16

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_16

    .line 65
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 66
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pic"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 67
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 68
    :cond_14
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "video"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 69
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 70
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v10}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v5

    :cond_15
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 72
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    .line 74
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v9

    goto :goto_12

    :cond_18
    move-object v9, v7

    :goto_12
    if-eqz v3, :cond_19

    .line 76
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;

    invoke-direct {v3, v4, v5, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 77
    iget-object v2, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_19
    if-eqz v1, :cond_1a

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 79
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v9

    invoke-direct {v5, v1, v2, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 81
    iget-object v1, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_13
    if-eqz v0, :cond_1c

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->X0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 83
    sget-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 85
    sget-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 86
    :cond_1b
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v4

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v8, v3, v4, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 90
    iget-object v0, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1c
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;

    const/4 v8, 0x1

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v12

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v13

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v14

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v15

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v16

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v17

    move-object v7, v2

    invoke-direct/range {v7 .. v17}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 101
    iget-object v1, v6, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method I0(I)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 2
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto/16 :goto_1

    :cond_2
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    const/16 p1, 0x1f

    const/16 v0, 0x1a

    const/16 v2, 0x16

    const/16 v3, -0xb

    .line 8
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/ForumMyPostsActivity;->J0(I)Z

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x10

    if-eqz v3, :cond_3

    .line 9
    iput v5, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity$e;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->J0(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    iput v5, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u8fd8\u6ca1\u6709\u53d1\u5e03\u5e16\u5b50~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity$f;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->J0(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->J0(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    iput v5, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity$h;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v4}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 24
    :cond_6
    :goto_0
    iput v5, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/activity/ForumMyPostsActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity$g;-><init>(Lcom/join/mgps/activity/ForumMyPostsActivity;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->c:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v5}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method J0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->v:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method L0(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->C:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getAppDetialBean(Ljava/lang/String;ILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/RecomRequestBean;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->x:Lcom/join/mgps/rpc/d;

    invoke-interface {v2, p1}, Lcom/join/mgps/rpc/d;->R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetailResultBean;

    .line 11
    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->D:Z

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_4
    :goto_1
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->C:I

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->D:Z

    goto :goto_3

    .line 20
    :goto_2
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->C:I

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->D:Z

    .line 22
    throw p1

    .line 23
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method M0(I)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    .line 3
    :cond_1
    iput p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 4
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->c1()V

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8
    iget-object v5, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->l:Lcom/join/mgps/rpc/h;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v6

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/join/mgps/Util/i0;->d:I

    const-string v10, ""

    move v8, p1

    invoke-interface/range {v5 .. v10}, Lcom/join/mgps/rpc/h;->k(ILjava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v3

    const/16 v4, 0x14

    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getPosts_list()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getPosts_list()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iput p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->m:I

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$ForumProfilePostsData;->getPosts_list()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->e1(Ljava/util/List;I)V

    const/16 p1, 0x20

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq p1, v1, :cond_b

    goto :goto_0

    .line 16
    :cond_3
    :try_start_1
    iput v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-ne p1, v0, :cond_4

    .line 17
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_4
    iget p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq p1, v1, :cond_5

    .line 19
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    return-void

    .line 21
    :cond_6
    :try_start_2
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-ne p1, v0, :cond_7

    .line 22
    invoke-virtual {p0, v4}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :cond_7
    iget p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq p1, v1, :cond_8

    .line 24
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 25
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    return-void

    .line 26
    :cond_9
    iget p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq p1, v1, :cond_a

    .line 27
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 28
    :cond_a
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 v0, 0x18

    .line 29
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    iget p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq p1, v1, :cond_b

    .line 32
    :goto_0
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    goto :goto_2

    .line 34
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    if-eq v0, v1, :cond_c

    .line 35
    iput v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->n:I

    .line 36
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    .line 37
    throw p1

    :cond_d
    const p1, 0x7f110206

    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->showToast(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->I0(I)V

    :goto_2
    return-void
.end method

.method public N0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->x:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->M0(I)V

    return-void
.end method

.method S0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method declared-synchronized T0()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/join/mgps/activity/ForumMyPostsActivity;->a1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->E:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->S0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method U0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->T0()V

    :cond_2
    return-void
.end method

.method V0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->g:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method W0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->l:Lcom/join/mgps/rpc/h;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Z0(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->b1()V

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

.method X0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->B:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->y:Ljava/util/Map;

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

.method Z0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->T0()V

    :cond_3
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->l:Lcom/join/mgps/rpc/h;

    .line 2
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->j:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->N0()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->O0()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->R0()V

    return-void
.end method

.method b1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

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

.method c1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

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
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->z:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->A:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method

.method d1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->e:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->w:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->w:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method e1(Ljava/util/List;I)V
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

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->m:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->d1()V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->T0()V

    return-void
.end method

.method f1()Z
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->accountBean(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    :cond_0
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

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 11
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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

.method protected onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->B()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->k:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
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
    iget-object v3, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/ForumMyPostsActivity;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->T0()V

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
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 12
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->T0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

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
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    move-result v1

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->F0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    :cond_7
    :goto_1
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Y0()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumMyPostsActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumMyPostsActivity;->Y0()V

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
