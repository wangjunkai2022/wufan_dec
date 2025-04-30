.class public final Lcom/join/mgps/fragment/t4;
.super Lcom/join/mgps/fragment/s4;
.source "SearchListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/t4$p;
    }
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "currentTab"

.field public static final C:Ljava/lang/String; = "game_id"

.field public static final D:Ljava/lang/String; = "keyword"


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
    invoke-direct {p0}, Lcom/join/mgps/fragment/s4;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/t4;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/t4;->A:Ljava/util/Map;

    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/t4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s4;->hideLoading()V

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/t4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s4;->X()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/t4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s4;->U(I)V

    return-void
.end method

.method public static D0()Lcom/join/mgps/fragment/t4$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$p;

    invoke-direct {v0}, Lcom/join/mgps/fragment/t4$p;-><init>()V

    return-object v0
.end method

.method private E0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "currentTab"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/fragment/s4;->d:I

    :cond_0
    const-string v1, "game_id"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/s4;->e:Ljava/lang/String;

    :cond_1
    const-string v1, "keyword"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/fragment/t4;->E0()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/fragment/t4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s4;->k0()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/t4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s4;->V(I)V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchIntegratedBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/s4;->g0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/t4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s4;->W(I)V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/t4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s4;->e0()V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/s4;->f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchPostsBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/s4;->h0(Lcom/join/mgps/dto/SearchPostsBean;I)V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s4;->T(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/t4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/s4;->showLoadingView()V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/t4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/s4;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t4$m;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t4$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t4$c;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t4$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t4$d;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/t4$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/t4$e;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method X()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t4$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t4$b;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/t4$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/t4$f;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0(Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/t4$k;-><init>(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchGameFavoriteListBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0(Lcom/join/mgps/dto/SearchIntegratedBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/t4$j;-><init>(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchIntegratedBean;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t4;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0(Lcom/join/mgps/dto/SearchPostsBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$l;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/t4$l;-><init>(Lcom/join/mgps/fragment/t4;Lcom/join/mgps/dto/SearchPostsBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t4$a;-><init>(Lcom/join/mgps/fragment/t4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t4;->z:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method k0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t4$i;-><init>(Lcom/join/mgps/fragment/t4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t4;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/t4;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/t4;->z:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c022c

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/t4;->z:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/t4;->z:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/t4;->z:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->p:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->q:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->r:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->s:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->t:Landroid/widget/TextView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0908e1

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->a:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->o:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->p:Landroid/view/View;

    const v0, 0x7f090d11

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->q:Landroid/view/View;

    const v0, 0x7f090481

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->r:Landroid/widget/TextView;

    const v0, 0x7f090e25

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/s4;->s:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/s4;->t:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->q:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/t4$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t4$g;-><init>(Lcom/join/mgps/fragment/t4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/s4;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/fragment/t4$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t4$h;-><init>(Lcom/join/mgps/fragment/t4;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s4;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/t4;->y:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/t4;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/t4$o;-><init>(Lcom/join/mgps/fragment/t4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/t4$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/t4$n;-><init>(Lcom/join/mgps/fragment/t4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
