.class public final Lcom/join/mgps/fragment/e0;
.super Lcom/join/mgps/fragment/d0;
.source "DiscoveryFragmentV2_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/e0$k;
    }
.end annotation


# instance fields
.field private final C:Li3/c;

.field private D:Landroid/view/View;

.field private final E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Landroid/content/IntentFilter;

.field private final G:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/e0;->C:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/e0;->E:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/e0;->F:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/e0$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/e0$b;-><init>(Lcom/join/mgps/fragment/e0;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/e0;->G:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/e0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d0;->T()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/e0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/d0;->X(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/e0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d0;->V()V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/e0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/d0;->W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/e0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d0;->R()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/e0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/d0;->loadData()V

    return-void
.end method

.method public static f0()Lcom/join/mgps/fragment/e0$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e0$k;

    invoke-direct {v0}, Lcom/join/mgps/fragment/e0$k;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/d0;->r:Lcom/join/mgps/Util/b;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/e0;->F:Landroid/content/IntentFilter;

    const-string v0, "com.join.update.position"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method R()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/e0$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/e0$j;-><init>(Lcom/join/mgps/fragment/e0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e0$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/e0$f;-><init>(Lcom/join/mgps/fragment/e0;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/e0$h;-><init>(Lcom/join/mgps/fragment/e0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e0$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/e0$i;-><init>(Lcom/join/mgps/fragment/e0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DIscoverTypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/e0$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/e0$g;-><init>(Lcom/join/mgps/fragment/e0;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e0;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e0;->D:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/e0$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/e0$a;-><init>(Lcom/join/mgps/fragment/e0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e0;->C:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/e0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/e0;->G:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/e0;->F:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/e0;->D:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01b9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/e0;->D:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/e0;->D:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/e0;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/e0;->D:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->b:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->c:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->e:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->h:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->j:Lit/sephiroth/android/library/widget/HListView;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->k:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->l:Landroidx/core/widget/NestedScrollView;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->m:Landroid/widget/LinearLayout;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->n:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->o:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->p:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->q:Landroid/widget/TextView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909e2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f091291

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ViewPagerSlide;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->d:Lcom/join/mgps/customview/ViewPagerSlide;

    const v0, 0x7f09104b

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f090f16

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/SlidingTabLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->f:Lcom/flyco/tablayout/SlidingTabLayout;

    const v0, 0x7f0900f9

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->g:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f090388

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f090387

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->i:Landroid/widget/GridView;

    const v0, 0x7f090381

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->j:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f09103d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->k:Landroid/widget/TextView;

    const v0, 0x7f09016e

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->l:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f09103b

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f09103c

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->n:Landroid/widget/TextView;

    const v0, 0x7f090b51

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->o:Landroid/widget/TextView;

    const v0, 0x7f090b4c

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->p:Landroid/widget/TextView;

    const v0, 0x7f09104f

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/d0;->q:Landroid/widget/TextView;

    const v0, 0x7f090d11

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 19
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/d0;->p:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 21
    new-instance v2, Lcom/join/mgps/fragment/e0$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/e0$c;-><init>(Lcom/join/mgps/fragment/e0;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v1, Lcom/join/mgps/fragment/e0$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/e0$d;-><init>(Lcom/join/mgps/fragment/e0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 23
    new-instance v0, Lcom/join/mgps/fragment/e0$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/e0$e;-><init>(Lcom/join/mgps/fragment/e0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d0;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/e0;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/e0;->E:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
