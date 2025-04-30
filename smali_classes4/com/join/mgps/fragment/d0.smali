.class public Lcom/join/mgps/fragment/d0;
.super Landroidx/fragment/app/Fragment;
.source "DiscoveryFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0c01b9
.end annotation


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DIscoverTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;",
            ">;"
        }
    .end annotation
.end field

.field a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/ViewPagerSlide;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroidx/appcompat/widget/Toolbar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lit/sephiroth/android/library/widget/HListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroidx/core/widget/NestedScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private s:Lcom/join/mgps/adapter/o;

.field private t:Lcom/join/mgps/rpc/k;

.field private u:Lcom/join/mgps/adapter/n;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field x:Landroid/content/Context;

.field y:Lcom/join/mgps/rpc/h;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->s:Lcom/join/mgps/adapter/o;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->u:Lcom/join/mgps/adapter/n;

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/join/mgps/fragment/d0;->z:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/fragment/d0;->A:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/d0;)Lcom/join/mgps/adapter/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/d0;->s:Lcom/join/mgps/adapter/o;

    return-object p0
.end method

.method private O()V
    .locals 5

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    .line 2
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lg1/f;->N(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/d0;->w:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isIs_fight()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public N()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d0;->O()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->loadData()V

    return-void
.end method

.method P(Landroid/content/Intent;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.update.position"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public Q()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    return v3

    :cond_0
    neg-int v2, v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method R()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->y:Lcom/join/mgps/rpc/h;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2, v2}, Lcom/join/mgps/rpc/h;->C(III)Lcom/join/mgps/dto/ForumResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DiscoverListData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverListData;->getType_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d0;->X(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->T()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->T()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->T()V

    :goto_0
    return-void
.end method

.method S()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->U()V

    return-void
.end method

.method T()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x3e8L
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/d0;->z:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/d0;->z:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->R()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->V()V

    :goto_0
    return-void
.end method

.method public U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->l:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    :cond_0
    return-void
.end method

.method V()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean;->getBattle_game()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean;->getBattle_game_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b3e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->s:Lcom/join/mgps/adapter/o;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/join/mgps/adapter/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    iget-object v3, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/adapter/o;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->s:Lcom/join/mgps/adapter/o;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->B:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/o;->c(Ljava/util/List;)V

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->s:Lcom/join/mgps/adapter/o;

    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/o;->b(Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/DiscoveryMainDataBean;->getForum_list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->u:Lcom/join/mgps/adapter/n;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Lcom/join/mgps/adapter/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/join/mgps/adapter/n;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->u:Lcom/join/mgps/adapter/n;

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/n;->b(Ljava/util/List;)V

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/d0;->j:Lit/sephiroth/android/library/widget/HListView;

    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->u:Lcom/join/mgps/adapter/n;

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method X(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DIscoverTypeBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/DIscoverTypeBean;

    .line 7
    new-instance v4, Lcom/join/mgps/fragment/b0;

    invoke-direct {v4}, Lcom/join/mgps/fragment/b0;-><init>()V

    .line 8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "tid"

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/DIscoverTypeBean;->getTid()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    new-instance v5, Lcom/join/mgps/adapter/x$a;

    invoke-virtual {v3}, Lcom/join/mgps/dto/DIscoverTypeBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 12
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/x;->d(Ljava/util/List;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    invoke-virtual {p1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method afterView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->x:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/join/mgps/rpc/impl/f;->A0()Lcom/join/mgps/rpc/impl/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->y:Lcom/join/mgps/rpc/h;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->l:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/j;->n0()Lcom/join/mgps/rpc/impl/k;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->t:Lcom/join/mgps/rpc/k;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v2, Lcom/join/mgps/fragment/d0$a;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/fragment/d0$a;-><init>(Lcom/join/mgps/fragment/d0;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/join/mgps/fragment/d0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d0$b;-><init>(Lcom/join/mgps/fragment/d0;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->j:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/join/mgps/fragment/d0$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d0$c;-><init>(Lcom/join/mgps/fragment/d0;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->N()V

    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->R()V

    return-void
.end method

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    const-string v1, "uid"

    .line 3
    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->r:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 4
    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->r:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_ids"

    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/d0;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->t:Lcom/join/mgps/rpc/k;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/k;->j0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getError()I

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameWorldResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DiscoveryMainDataBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d0;->W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->V()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->V()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "communityEnter"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/ForumIndexActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/activity/ForumIndexActivity_$d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 4
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/NewArenaMainActivty_;->F1(Landroid/content/Context;)Lcom/join/mgps/activity/NewArenaMainActivty_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enterLobby"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity_;->S1(Landroid/content/Context;)Lcom/join/mgps/activity/SearchHintActivity_$y;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090385 -> :sswitch_2
        0x7f090388 -> :sswitch_1
        0x7f090b51 -> :sswitch_1
        0x7f09103b -> :sswitch_0
        0x7f09103c -> :sswitch_0
        0x7f09103d -> :sswitch_1
    .end sparse-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->N()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/d0;->A:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->R()V

    :cond_1
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->N()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->R()V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v2, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    :cond_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d0;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method
