.class public final Lcom/join/mgps/fragment/f0;
.super Lcom/join/mgps/fragment/c0;
.source "DiscoveryFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/f0$n;
    }
.end annotation


# instance fields
.field private final K:Li3/c;

.field private n0:Landroid/view/View;

.field private final o0:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/c0;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->K:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->o0:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/c0;->j:Lcom/join/mgps/Util/b;

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/fragment/f0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c0;->f0()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/fragment/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c0;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/fragment/f0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c0;->i0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/fragment/f0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c0;->j0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/fragment/f0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c0;->g0()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/f0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c0;->h0()V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/f0;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/c0;->b0(I)V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/f0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c0;->X()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/f0;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/c0;->loadData()V

    return-void
.end method

.method public static v0()Lcom/join/mgps/fragment/f0$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$n;

    invoke-direct {v0}, Lcom/join/mgps/fragment/f0$n;-><init>()V

    return-object v0
.end method


# virtual methods
.method X()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/f0$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/f0$c;-><init>(Lcom/join/mgps/fragment/f0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/f0$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/f0$b;-><init>(Lcom/join/mgps/fragment/f0;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f0$i;-><init>(Lcom/join/mgps/fragment/f0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f0$m;-><init>(Lcom/join/mgps/fragment/f0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f0;->o0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f0$a;-><init>(Lcom/join/mgps/fragment/f0;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/f0$k;-><init>(Lcom/join/mgps/fragment/f0;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f0;->n0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j0(Lcom/join/mgps/dto/DiscoveryMainDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/f0$l;-><init>(Lcom/join/mgps/fragment/f0;Lcom/join/mgps/dto/DiscoveryMainDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method loadData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/f0$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/f0$d;-><init>(Lcom/join/mgps/fragment/f0;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f0;->K:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f0;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/f0;->n0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0200

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/f0;->n0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f0;->n0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/f0;->n0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->a:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->b:Landroid/widget/RelativeLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->g:Landroid/widget/ImageView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->h:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f090384

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0909e2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e1

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->f:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090385

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->g:Landroid/widget/ImageView;

    const v0, 0x7f090386

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->h:Landroid/widget/TextView;

    const v0, 0x7f090ee4

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/c0;->i:Landroid/view/View;

    const v0, 0x7f090e21

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/fragment/f0$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f0$e;-><init>(Lcom/join/mgps/fragment/f0;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/join/mgps/fragment/f0$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f0$f;-><init>(Lcom/join/mgps/fragment/f0;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/fragment/f0$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f0$g;-><init>(Lcom/join/mgps/fragment/f0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/c0;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 17
    new-instance v0, Lcom/join/mgps/fragment/f0$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/f0$h;-><init>(Lcom/join/mgps/fragment/f0;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/c0;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/f0;->K:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/f0;->o0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/f0$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/f0$j;-><init>(Lcom/join/mgps/fragment/f0;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
