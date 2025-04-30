.class public Lcom/join/mgps/fragment/o0;
.super Lcom/join/mgps/fragment/u0;
.source "ForumGroupPostsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c03f3
.end annotation


# static fields
.field private static final C:Ljava/lang/String; = "key_groups_data"

.field private static final D:Ljava/lang/String; = "key_groups_id"

.field private static final E:Ljava/lang/String; = "key_groups_name"

.field private static final F:Ljava/lang/String; = "key_fragment_pos"


# instance fields
.field A:Z

.field B:Lcom/join/mgps/customview/t;

.field private a:I

.field private b:Lcom/join/mgps/dto/RecommenGroupClassify;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
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

.field private g:Lcom/join/mgps/customview/j;

.field private h:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private i:I

.field private j:Ljava/lang/String;

.field k:Lcom/join/mgps/customview/ForumLoadingView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Ljava/lang/String;

.field n:Lcom/join/android/app/component/video/c;

.field o:Lcom/join/mgps/rpc/h;

.field public p:I

.field public q:I

.field r:Lcom/join/mgps/customview/MyFlowLayout;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/join/mgps/rpc/d;

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

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field y:I

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u0;-><init>()V

    const-string v0, "ForumGroupPostsFragment"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->m:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->s:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/o0;->y:I

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o0;->z:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->B:Lcom/join/mgps/customview/t;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/o0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/o0;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->isLogined(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/o0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/fragment/o0;->a:I

    return p0
.end method

.method private P(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    return-object p1
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->B:Lcom/join/mgps/customview/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->B:Lcom/join/mgps/customview/t;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private V()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_groups_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_fragment_pos"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_groups_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_groups_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-class v5, Lcom/join/mgps/dto/RecommenGroupClassify;

    invoke-virtual {v4, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecommenGroupClassify;

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->b:Lcom/join/mgps/dto/RecommenGroupClassify;

    .line 7
    :cond_0
    iput v1, p0, Lcom/join/mgps/fragment/o0;->a:I

    .line 8
    iput v2, p0, Lcom/join/mgps/fragment/o0;->i:I

    .line 9
    iput-object v3, p0, Lcom/join/mgps/fragment/o0;->j:Ljava/lang/String;

    return-void
.end method

.method public static X(ILjava/lang/String;Lcom/join/mgps/dto/RecommenGroupClassify;I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p0;

    invoke-direct {v0}, Lcom/join/mgps/fragment/p0;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "key_groups_data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p2, "key_fragment_pos"

    .line 4
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "key_groups_id"

    .line 5
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "key_groups_name"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/join/mgps/Util/i0;->e:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o0$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$c;-><init>(Lcom/join/mgps/fragment/o0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 4
    new-instance v0, Lcom/join/mgps/fragment/o0$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/o0$d;-><init>(Lcom/join/mgps/fragment/o0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->g:Lcom/join/mgps/customview/j;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/join/mgps/fragment/o0;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    .line 7
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 8
    new-instance v1, Lcom/join/mgps/fragment/o0$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$e;-><init>(Lcom/join/mgps/fragment/o0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q0(Lcom/join/mgps/listener/f;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/fragment/o0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    new-instance v1, Lcom/join/mgps/fragment/o0$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$f;-><init>(Lcom/join/mgps/fragment/o0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/join/mgps/adapter/ForumBaseAdapter$r0;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    new-instance v1, Lcom/join/mgps/fragment/o0$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$g;-><init>(Lcom/join/mgps/fragment/o0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setOnOverScrolled(Lcom/join/mgps/customview/XListView2$d;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o0;->R(I)V

    return-void
.end method

.method private d0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01e9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f090f20

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const v2, 0x7f0603b7

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v2, "#3CA4FD"

    .line 8
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v2, Lcom/join/mgps/fragment/o0$j;

    invoke-direct {v2, p0, p1, v1}, Lcom/join/mgps/fragment/o0$j;-><init>(Lcom/join/mgps/fragment/o0;Lcom/join/mgps/dto/RecommendLabelTag;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->P(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

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

.method private j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/o0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

.method private k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/o0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

.method private l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->E3(Ljava/util/List;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/o0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method private m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/fragment/o0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private n0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

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
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/fragment/o0;->f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->r:Lcom/join/mgps/customview/MyFlowLayout;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/join/mgps/customview/MyFlowLayout;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/MyFlowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->r:Lcom/join/mgps/customview/MyFlowLayout;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->r:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 7
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/o0;->d0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->r:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->r:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_5
    return-void
.end method

.method private r0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;

    iget v3, p0, Lcom/join/mgps/fragment/o0;->i:I

    iget-object v4, p0, Lcom/join/mgps/fragment/o0;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$a0;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private t0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/16 v19, 0x1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v11

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v16

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v17

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v18

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v20

    move-object v6, v15

    move/from16 v7, v19

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v6 .. v18}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v1, v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 14
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const/16 v19, 0x0

    :goto_3
    if-nez v1, :cond_7

    .line 15
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;

    const/4 v6, 0x1

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 17
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 18
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v10

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v11

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v14

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTags()Ljava/util/List;

    move-result-object v16

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFname()Ljava/lang/String;

    move-result-object v17

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSolve_flg()I

    move-result v18

    move-object v5, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v5 .. v17}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$p;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto/16 :goto_f

    .line 28
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v13, 0x1

    .line 29
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v1

    const-string v3, "#00FFFFFF"

    if-lez v1, :cond_a

    .line 32
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v4, "\u7cbe"

    .line 33
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v4, "#FF8378FF"

    .line 35
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 37
    invoke-interface {v8, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v1

    if-lez v1, :cond_b

    .line 39
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    const-string v4, "\u9876"

    .line 40
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    const-string v3, "#FFFF6464"

    .line 42
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 44
    invoke-interface {v8, v15, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    .line 45
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_c
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v6, 0x1

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v5, v13

    invoke-static/range {v3 .. v8}, Lcom/join/mgps/Util/i0;->m0(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v14

    .line 48
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;

    const/4 v3, 0x1

    xor-int/lit8 v4, v19, 0x1

    if-eqz v13, :cond_e

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v5, 0x1

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    :goto_b
    if-eqz v13, :cond_f

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFirst()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v6, 0x1

    goto :goto_c

    :cond_f
    const/4 v6, 0x0

    .line 51
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getFid()I

    move-result v9

    if-eqz v13, :cond_10

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v10, 0x1

    goto :goto_d

    :cond_10
    const/4 v10, 0x0

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getHelp_money()I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v13, :cond_11

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v3

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_e
    move-object v12, v3

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$o;-><init>(ZZZLjava/lang/String;IIZLjava/lang/String;Ljava/util/List;ZLandroid/text/SpannableStringBuilder;)V

    .line 57
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-direct {v3, v4, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 58
    iget-object v4, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v4, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 59
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 60
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s()Lcom/join/android/app/component/optimizetext/b;

    move-result-object v3

    iget-object v4, v0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ca2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/b0;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/join/android/app/component/optimizetext/b;->j(I)Lcom/join/android/app/component/optimizetext/b;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v15, 0x0

    .line 63
    :cond_13
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

    const/4 v4, 0x1

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_1b

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSmall_thumb_pic_list()Ljava/util/List;

    move-result-object v1

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v5

    move-object v6, v2

    move-object v7, v6

    :goto_12
    if-eqz v1, :cond_17

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_17

    .line 68
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 69
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pic"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 70
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 71
    :cond_15
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 72
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 73
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    move-result-object v7

    :cond_16
    :goto_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 75
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    .line 77
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    :cond_19
    move-object v8, v2

    :goto_14
    if-eqz v5, :cond_1a

    .line 79
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;

    invoke-direct {v5, v6, v7, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 80
    iget-object v3, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    goto :goto_15

    :cond_1a
    if-eqz v1, :cond_1b

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 82
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v7, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v8

    invoke-direct {v7, v1, v3, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$n;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-direct {v5, v6, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 84
    iget-object v1, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v5}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    :cond_1b
    :goto_15
    if-eqz v4, :cond_1c

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/o0;->i0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 86
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getRelation_game()Lcom/join/mgps/dto/ForumBean$GameInfo;

    move-result-object v5

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getResource_url()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v7, v2, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$s;-><init>(ZLjava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 90
    iget-object v2, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    .line 91
    :cond_1c
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;

    const/4 v4, 0x1

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getLast_comment_time()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPraise()I

    move-result v8

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getCommit()I

    move-result v9

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v10

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getView()I

    move-result v11

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_praise()Z

    move-result v12

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getUid()I

    move-result v13

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZI)V

    invoke-direct {v1, v2, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 101
    iget-object v2, v0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    return-void
.end method

.method private u0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 3
    invoke-direct {p0, v1}, Lcom/join/mgps/fragment/o0;->t0(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method A0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/o0;->P(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o0;->W(I)V

    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

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

.method R(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x9

    if-eq p1, v1, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->b:Lcom/join/mgps/dto/RecommenGroupClassify;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGname()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "\u5e16\u5b50"

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5e16\u54e6~"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v1, Lcom/join/mgps/fragment/o0$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/o0$a;-><init>(Lcom/join/mgps/fragment/o0;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0809bc

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingRes(I)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/o0$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/o0$k;-><init>(Lcom/join/mgps/fragment/o0;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    :cond_5
    const-string p1, "\u52a0\u8f7d\u5931\u8d25~"

    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    new-instance v0, Lcom/join/mgps/fragment/o0$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/o0$b;-><init>(Lcom/join/mgps/fragment/o0;Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/ForumLoadingView;->j(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method U(Ljava/lang/String;)V
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
    iget v1, p0, Lcom/join/mgps/fragment/o0;->y:I

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
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->t:Lcom/join/mgps/rpc/d;

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
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o0;->z:Z

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o0;->x0(Lcom/join/mgps/dto/DetailResultBean;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
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
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_4
    :goto_1
    iput v1, p0, Lcom/join/mgps/fragment/o0;->y:I

    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o0;->z:Z

    goto :goto_3

    .line 21
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/o0;->y:I

    .line 22
    iput-boolean v1, p0, Lcom/join/mgps/fragment/o0;->z:Z

    .line 23
    throw p1

    .line 24
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method W(I)V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/o0;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_1

    if-eq v3, v2, :cond_0

    .line 3
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    return-void

    :cond_1
    if-ne v3, p1, :cond_3

    if-eq v3, v2, :cond_2

    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    return-void

    .line 7
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 8
    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v10

    .line 9
    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->b:Lcom/join/mgps/dto/RecommenGroupClassify;

    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommenGroupClassify;->getGid()I

    move-result v6

    .line 11
    iget-object v4, p0, Lcom/join/mgps/fragment/o0;->o:Lcom/join/mgps/rpc/h;

    iget v5, p0, Lcom/join/mgps/fragment/o0;->i:I

    sget v8, Lcom/join/mgps/activity/ForumActivity;->D:I

    sget v9, Lcom/join/mgps/Util/i0;->d:I

    move v7, p1

    invoke-interface/range {v4 .. v11}, Lcom/join/mgps/rpc/h;->M(IIIIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    move-result v4

    if-nez v4, :cond_9

    .line 13
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o0;->R(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget p1, p0, Lcom/join/mgps/fragment/o0;->q:I

    if-eq p1, v2, :cond_4

    .line 16
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    return-void

    .line 18
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/fragment/o0;->w0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V

    .line 21
    iput p1, p0, Lcom/join/mgps/fragment/o0;->p:I

    const/4 v3, 0x2

    .line 22
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/o0;->R(I)V

    goto :goto_1

    .line 23
    :cond_7
    :goto_0
    iput v2, p0, Lcom/join/mgps/fragment/o0;->q:I

    const/16 v3, 0xa

    .line 24
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/o0;->R(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    iget p1, p0, Lcom/join/mgps/fragment/o0;->q:I

    if-eq p1, v2, :cond_8

    .line 26
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 27
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    return-void

    .line 28
    :cond_9
    :goto_1
    iget p1, p0, Lcom/join/mgps/fragment/o0;->q:I

    if-eq p1, v2, :cond_b

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 29
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_a

    .line 31
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/join/mgps/customview/ForumLoadingView;->m()V

    .line 32
    :cond_a
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o0;->R(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    iget p1, p0, Lcom/join/mgps/fragment/o0;->q:I

    if-eq p1, v2, :cond_b

    .line 34
    :goto_2
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 35
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    goto :goto_4

    .line 36
    :goto_3
    iget v0, p0, Lcom/join/mgps/fragment/o0;->q:I

    if-eq v0, v2, :cond_c

    .line 37
    iput v1, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 38
    :cond_c
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    .line 39
    throw p1

    :cond_d
    const p1, 0x7f110206

    .line 40
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o0;->R(I)V

    :goto_4
    return-void
.end method

.method public Z()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->t:Lcom/join/mgps/rpc/d;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->d(Ljava/lang/Object;)V

    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->o:Lcom/join/mgps/rpc/h;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->V()V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->Z()V

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->a0()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/fragment/o0;->q:I

    .line 7
    iput v0, p0, Lcom/join/mgps/fragment/o0;->p:I

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->J()V

    return-void
.end method

.method b0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f110206

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/d;->T(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/o0;->R(I)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->y0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->F(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/c;->m(Landroid/widget/AbsListView;)V

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
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->v:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/o0;->w:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_0
    return-void
.end method

.method e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->r0()V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->u0()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->c0()V

    return-void
.end method

.method f0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->e0()V

    :cond_2
    return-void
.end method

.method g0(Lcom/join/mgps/dto/CollectionBeanSub;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->h:Lcom/join/mgps/adapter/ForumBaseAdapter;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method h0(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/i0;->e0(Landroid/content/Context;I)Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ForumRequestBean$ForumPostsPraiseRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->o:Lcom/join/mgps/rpc/h;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/o0;->p0(I)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->v0()V

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

.method i0(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
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
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->x:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->u:Ljava/util/Map;

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

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

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

.method public o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/join/mgps/fragment/o0$i;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$i;-><init>(Lcom/join/mgps/fragment/o0;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->g:Lcom/join/mgps/customview/j;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/join/mgps/customview/j;->onRefresh()V

    :cond_1
    return-void
.end method

.method public onBackPressedMy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/o0;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/fragment/o0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->z()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/c0;->e(Ljava/lang/Object;)V

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

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/o0;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/fragment/o0;->z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

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
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->A()V

    :cond_0
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
    instance-of v1, v0, Lcom/join/mgps/activity/ForumActivity;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/join/mgps/activity/ForumActivity;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->P0()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/fragment/o0;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->c0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->k:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/o0;->R(I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->e(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/o0;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

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
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->n:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->i(Landroid/widget/AbsListView;I)V

    :cond_2
    return-void
.end method

.method p0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->e0()V

    :cond_3
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method v0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->m(Landroid/content/Context;)V

    return-void
.end method

.method w0(ILcom/join/mgps/dto/ForumData$HomepageRecommendLabel;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getRecommend_tags()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$HomepageRecommendLabel;->getPost_list()Ljava/util/List;

    move-result-object p2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    new-instance p1, Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-direct {p1}, Lcom/join/mgps/dto/RecommendLabelTag;-><init>()V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_id(I)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RecommendLabelTag;->setTag_name(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->e0()V

    return-void
.end method

.method public x(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o0;->l:Lcom/join/mgps/customview/XListView2;

    if-eqz v0, :cond_0

    long-to-int p3, p2

    .line 2
    invoke-virtual {v0, p1, p3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method x0(Lcom/join/mgps/dto/DetailResultBean;)V
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
    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/join/mgps/fragment/o0;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o0;->e0()V

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
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->m3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->d1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->R0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/o0;->c:Landroid/content/Context;

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

.method y0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/join/mgps/fragment/o0$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o0$h;-><init>(Lcom/join/mgps/fragment/o0;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method z0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->k0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->m0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->n0()V

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/o0;->l0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/fragment/o0;->n0()V

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
