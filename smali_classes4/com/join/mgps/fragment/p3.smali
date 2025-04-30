.class public final Lcom/join/mgps/fragment/p3;
.super Lcom/join/mgps/fragment/o3;
.source "NewArenaMainFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/p3$w;
    }
.end annotation


# instance fields
.field private final F0:Li3/c;

.field private G0:Landroid/view/View;

.field private final H0:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/o3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p3;->F0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p3;->H0:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/p3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->j0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->u0()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->J0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/p3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->B0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/p3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->C0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->showLoding()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->showLodingFailed()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/p3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->g0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->z0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->h0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/fragment/p3;Lapp/mgsim/arena/ArenaResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->r0(Lapp/mgsim/arena/ArenaResponse;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->t0(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/o3;->i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->p0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/fragment/p3;Lcom/join/mgps/dto/GameListBannerBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o3;->D0(Lcom/join/mgps/dto/GameListBannerBean;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/p3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->q0()V

    return-void
.end method

.method public static e1()Lcom/join/mgps/fragment/p3$w;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$w;

    invoke-direct {v0}, Lcom/join/mgps/fragment/p3$w;-><init>()V

    return-object v0
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

    iput-object p1, p0, Lcom/join/mgps/fragment/o3;->o:Lcom/join/mgps/Util/b;

    return-void
.end method


# virtual methods
.method B0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$g;-><init>(Lcom/join/mgps/fragment/p3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method C0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$h;-><init>(Lcom/join/mgps/fragment/p3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D0(Lcom/join/mgps/dto/GameListBannerBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$d;-><init>(Lcom/join/mgps/fragment/p3;Lcom/join/mgps/dto/GameListBannerBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$b;-><init>(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$s;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/p3$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/p3$m;-><init>(Lcom/join/mgps/fragment/p3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p3;->H0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$t;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/p3$a;-><init>(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p3;->G0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$r;-><init>(Lcom/join/mgps/fragment/p3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p3;->F0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/o3;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/p3;->G0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0220

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/p3;->G0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p3;->G0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o3;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/p3;->G0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->d:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->e:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->f:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->g:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->i:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->j:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->n:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090dd5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f09065b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->h:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f090abe

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->i:Landroid/view/View;

    const v0, 0x7f090e13

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f090536

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->k:Landroid/widget/FrameLayout;

    const v0, 0x7f09093a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->m:Landroid/view/View;

    const v0, 0x7f090cf7

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/o3;->n:Landroid/view/View;

    const v0, 0x7f090e21

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/join/mgps/fragment/p3$k;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p3$k;-><init>(Lcom/join/mgps/fragment/p3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/p3$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$o;-><init>(Lcom/join/mgps/fragment/p3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->i:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 16
    new-instance v0, Lcom/join/mgps/fragment/p3$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$p;-><init>(Lcom/join/mgps/fragment/p3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Lcom/join/mgps/fragment/p3$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$q;-><init>(Lcom/join/mgps/fragment/p3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o3;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/p3;->F0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$c;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p3;->H0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$e;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r0(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$u;-><init>(Lcom/join/mgps/fragment/p3;Lapp/mgsim/arena/ArenaResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$i;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$j;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$l;-><init>(Lcom/join/mgps/fragment/p3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$v;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p3$v;-><init>(Lcom/join/mgps/fragment/p3;Lcom/papa91/battle/protocol/GameRoom;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p3$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p3$f;-><init>(Lcom/join/mgps/fragment/p3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/p3$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/p3$n;-><init>(Lcom/join/mgps/fragment/p3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
