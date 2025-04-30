.class public final Lcom/join/mgps/fragment/r4;
.super Lcom/join/mgps/fragment/q4;
.source "SearchGameListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/r4$n;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String; = "currentTab"

.field public static final H:Ljava/lang/String; = "game_id"

.field public static final I:Ljava/lang/String; = "keyword"


# instance fields
.field private final D:Li3/c;

.field private E:Landroid/view/View;

.field private final F:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/q4;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r4;->D:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/r4;->F:Ljava/util/Map;

    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/r4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q4;->hideLoading()V

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/r4;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/q4;->Z(IZ)V

    return-void
.end method

.method public static C0()Lcom/join/mgps/fragment/r4$n;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$n;

    invoke-direct {v0}, Lcom/join/mgps/fragment/r4$n;-><init>()V

    return-object v0
.end method

.method private D0()V
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

    iput v1, p0, Lcom/join/mgps/fragment/q4;->h:I

    :cond_0
    const-string v1, "game_id"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/fragment/q4;->i:Ljava/lang/String;

    :cond_1
    const-string v1, "keyword"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->j:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/fragment/r4;->D0()V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/r4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q4;->S()V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/r4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q4;->f0()V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/r4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q4;->k0()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/r4;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/q4;->i0(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/r4;Lcom/join/mgps/dto/SearchGameListBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/q4;->h0(Lcom/join/mgps/dto/SearchGameListBean;I)V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/r4;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q4;->j0(Z)V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/r4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q4;->T(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/r4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/q4;->showLoadingView()V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/r4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/q4;->showLoadFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$g;-><init>(Lcom/join/mgps/fragment/r4;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r4$l;-><init>(Lcom/join/mgps/fragment/r4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(IZ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/r4$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/r4$c;-><init>(Lcom/join/mgps/fragment/r4;Ljava/lang/String;JLjava/lang/String;IZ)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/r4$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/r4$d;-><init>(Lcom/join/mgps/fragment/r4;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0(Lcom/join/mgps/dto/SearchGameListBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/r4$j;-><init>(Lcom/join/mgps/fragment/r4;Lcom/join/mgps/dto/SearchGameListBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method hideLoading()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$b;-><init>(Lcom/join/mgps/fragment/r4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/r4$i;-><init>(Lcom/join/mgps/fragment/r4;Ljava/util/List;Z)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->E:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r4$k;-><init>(Lcom/join/mgps/fragment/r4;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method k0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$h;-><init>(Lcom/join/mgps/fragment/r4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->D:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/r4;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/r4;->E:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c022b

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/r4;->E:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/r4;->E:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/r4;->E:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->b:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->c:Landroid/widget/ImageView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->d:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->u:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->v:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->w:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->x:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->y:Landroid/widget/TextView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090da9

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    const v0, 0x7f091255

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->b:Landroid/view/View;

    const v0, 0x7f090687

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->c:Landroid/widget/ImageView;

    const v0, 0x7f090acd

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->d:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->t:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->u:Landroid/view/View;

    const v0, 0x7f090d11

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->v:Landroid/view/View;

    const v0, 0x7f090481

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->w:Landroid/widget/TextView;

    const v0, 0x7f090e25

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/q4;->x:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/q4;->y:Landroid/widget/TextView;

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->v:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lcom/join/mgps/fragment/r4$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$e;-><init>(Lcom/join/mgps/fragment/r4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/q4;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/r4$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$f;-><init>(Lcom/join/mgps/fragment/r4;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/q4;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/r4;->D:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/r4;->F:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoadFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/r4$a;-><init>(Lcom/join/mgps/fragment/r4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoadingView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/r4$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/r4$m;-><init>(Lcom/join/mgps/fragment/r4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
