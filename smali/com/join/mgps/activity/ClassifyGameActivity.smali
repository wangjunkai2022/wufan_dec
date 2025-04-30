.class public Lcom/join/mgps/activity/ClassifyGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "ClassifyGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/join/mgps/dialog/u$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0028
.end annotation


# static fields
.field private static final n0:Ljava/lang/String;


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field C:Lcom/join/mgps/activity/f;

.field D:Lcom/join/mgps/dto/ClassifyGameTagBean;

.field private E:Lcom/join/mgps/dialog/u;

.field private F:Lcom/join/mgps/customview/FlowLayout;

.field private G:Lcom/join/mgps/customview/FlowLayout;

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/LinearLayout;

.field private J:I

.field private K:Ljava/lang/String;

.field a:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/appcompat/widget/Toolbar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/customview/CustomerDownloadView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09102e
    .end annotation
.end field

.field i:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/content/Context;

.field r:Lcom/join/mgps/rpc/d;

.field s:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field w:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field x:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field protected y:Lcom/join/mgps/customview/LoadingLayout;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/ClassifyGameActivity;->n0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->l:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->n:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->z:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->J:I

    const-string v0, "default"

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->K:Ljava/lang/String;

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/activity/ClassifyGameActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->K:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic E0(Lcom/join/mgps/activity/ClassifyGameActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    return-object p0
.end method

.method private I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->E:Lcom/join/mgps/dialog/u;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/u;->dismiss()V

    return-void
.end method


# virtual methods
.method F0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public G0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method protected H0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$h;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$h;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public J0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->r:Lcom/join/mgps/rpc/d;

    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    iget v5, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v1, v4, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/d;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ClassfyTypeBean;

    if-eqz v0, :cond_5

    .line 5
    new-instance v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setId(I)V

    const-string v2, "\u5168\u90e8"

    .line 7
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setTitle(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassfyTypeBean;->getGame_type()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassfyTypeBean;->getSimulator_type()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->n:Ljava/util/List;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->K0()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->F0()V

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->R0()V

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->P0()V

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->P0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->P0()V

    goto :goto_4

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->P0()V

    :goto_4
    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->H0()V

    return-void
.end method

.method L0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->c:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->c:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->d:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method M0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public N0(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setRefreshing(Z)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setRefreshing(Z)V

    :goto_0
    return-void
.end method

.method O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->D:Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->C:Lcom/join/mgps/activity/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "10001"

    const-string v3, ""

    if-nez v1, :cond_9

    if-nez p1, :cond_6

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 7
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v4

    iget v5, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-ne v4, v5, :cond_0

    .line 8
    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {p0, v4, v1}, Lcom/join/mgps/activity/ClassifyGameActivity;->V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    new-instance v4, Lcom/join/mgps/activity/ClassifyGameActivity$d;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$d;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v1, v4}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Lw0/b;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    iget-object v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->B:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v1

    iget v4, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    if-ne v1, v4, :cond_2

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$e;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Lw0/b;)V

    .line 16
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    if-nez p1, :cond_4

    move-object p1, v3

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {p1, v2}, Lcom/join/mgps/activity/f;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/f;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->C:Lcom/join/mgps/activity/f;

    goto :goto_6

    .line 17
    :cond_6
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    if-nez p1, :cond_7

    move-object p1, v3

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    iget v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {p1, v2}, Lcom/join/mgps/activity/f;->V(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/activity/f;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->C:Lcom/join/mgps/activity/f;

    :goto_6
    const p1, 0x7f0909e9

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->C:Lcom/join/mgps/activity/f;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto/16 :goto_b

    :cond_9
    if-nez p1, :cond_c

    .line 20
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    if-nez p1, :cond_a

    move-object p1, v3

    goto :goto_7

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, p1, v2}, Lcom/join/mgps/activity/f;->n0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 21
    :cond_c
    iget p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    if-nez p1, :cond_d

    move-object p1, v3

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    iget v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {v1, p1, v2}, Lcom/join/mgps/activity/f;->n0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->S0()V

    return-void
.end method

.method protected P0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$f;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected Q0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$g;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method R0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->j:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->H0()V

    return-void
.end method

.method public S0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->e:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v3}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->f:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->g:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->getSelectTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method T0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goMyGameManagerActivity(Landroid/content/Context;)V

    return-void
.end method

.method U0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Where;->classGame:Lcom/papa/sim/statistic/Where;

    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->q:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->m2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    return-void
.end method

.method V0(Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;I)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setItemSelected(I)V

    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->r:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->q:Landroid/content/Context;

    const v0, 0x7f0909dd

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LoadingLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->y:Lcom/join/mgps/customview/LoadingLayout;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->getDownloadTaskInfo()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->q:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->z:I

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->J0()V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->b:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$a;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setOnRefreshListener(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->k:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->k:Ljava/util/List;

    :cond_1
    const-string v0, "\u7efc\u5408"

    const-string v1, "\u6700\u65b0"

    const-string v2, "\u8bc4\u5206"

    .line 18
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->e:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setmTitles([Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->e:Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$b;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutNoViewPager;->setOnTabSelectListener(Lw0/b;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->c:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/join/mgps/activity/ClassifyGameActivity$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ClassifyGameActivity$c;-><init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

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
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_9
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 19
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_a
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

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
    iget-object v3, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ClassifyGameActivity;->updateDownloadView()V

    return-void
.end method

.method public l0()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->E:Lcom/join/mgps/dialog/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dialog/u;->dismiss()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/event/l;->c()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity;->changeDownloadTaskNumber(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/CustomerDownloadView;->setDownloadGameNum(I)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDownloadView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "::::\u5df2\u7ecf\u8fdb\u5165\u4e0b\u8f7d\u961f\u5217\u4e2d\u7684\u6570\u91cf:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->d()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CustomerDownloadView;->g()V

    :goto_0
    return-void
.end method
