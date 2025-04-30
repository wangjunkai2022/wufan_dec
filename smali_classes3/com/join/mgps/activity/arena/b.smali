.class public final Lcom/join/mgps/activity/arena/b;
.super Lcom/join/mgps/activity/arena/a;
.source "ArenaGameListFragmentMain_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/arena/b$l;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Map;
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

.field private final y:Li3/c;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/arena/a;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/b;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/arena/b;->A:Ljava/util/Map;

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/arena/b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/a;->a0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/arena/b;Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/arena/a;->S(Lcom/join/mgps/dto/ResultResMainBean;)V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->Z()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->X()V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->hideLoading()V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->U()V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->W()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/arena/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/arena/a;->V()V

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

    iput-object p1, p0, Lcom/join/mgps/activity/arena/a;->l:Lcom/join/mgps/Util/b;

    return-void
.end method

.method public static j0()Lcom/join/mgps/activity/arena/b$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/b$l;

    invoke-direct {v0}, Lcom/join/mgps/activity/arena/b$l;-><init>()V

    return-object v0
.end method


# virtual methods
.method S(Lcom/join/mgps/dto/ResultResMainBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/b$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/b$g;-><init>(Lcom/join/mgps/activity/arena/b;Lcom/join/mgps/dto/ResultResMainBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/b$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/b$k;-><init>(Lcom/join/mgps/activity/arena/b;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/b$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/b$b;-><init>(Lcom/join/mgps/activity/arena/b;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/arena/b$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/arena/b$a;-><init>(Lcom/join/mgps/activity/arena/b;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method X()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/b$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/b$i;-><init>(Lcom/join/mgps/activity/arena/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/b$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/b$h;-><init>(Lcom/join/mgps/activity/arena/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/activity/arena/b$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/arena/b$f;-><init>(Lcom/join/mgps/activity/arena/b;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/b;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/arena/b$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/b$j;-><init>(Lcom/join/mgps/activity/arena/b;)V

    const-string v1, ""

    const-wide/16 v2, 0xc8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/b;->z:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/b;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/arena/b;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/activity/arena/b;->z:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0024

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/arena/b;->z:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/b;->z:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/arena/b;->z:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->h:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f09089e

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/arena/a;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090d11

    .line 6
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 7
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 8
    new-instance v2, Lcom/join/mgps/activity/arena/b$c;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/arena/b$c;-><init>(Lcom/join/mgps/activity/arena/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/activity/arena/b$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/b$d;-><init>(Lcom/join/mgps/activity/arena/b;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/join/mgps/activity/arena/b$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/arena/b$e;-><init>(Lcom/join/mgps/activity/arena/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/a;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/b;->y:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/b;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
