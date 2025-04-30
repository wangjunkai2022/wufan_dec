.class public final Lcom/join/mgps/fragment/x;
.super Lcom/join/mgps/fragment/w;
.source "CommentAllListFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/x$p;
    }
.end annotation


# instance fields
.field private final E:Li3/c;

.field private F:Landroid/view/View;

.field private final G:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/w;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/x;->E:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/x;->G:Ljava/util/Map;

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/x;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w;->showLoding()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/x;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/w;->e(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/fragment/x;Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/w;->V(Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/fragment/x;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w;->R()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/fragment/x;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w;->showLodingFailed()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/fragment/x;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w;->X()V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/fragment/x;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/w;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/fragment/x;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/w;->N(II)V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/fragment/x;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/fragment/w;->T(Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/fragment/x;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/w;->U(Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/w;->j:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/fragment/x;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/w;->O()V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/fragment/x;Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/w;->d(Lcom/join/mgps/dto/CommentBaseBean;II)V

    return-void
.end method

.method public static l0()Lcom/join/mgps/fragment/x$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$p;

    invoke-direct {v0}, Lcom/join/mgps/fragment/x$p;-><init>()V

    return-object v0
.end method


# virtual methods
.method public N(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$o;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/x$o;-><init>(Lcom/join/mgps/fragment/x;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/x$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/x$c;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/x$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/x$f;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T(Ljava/lang/String;ZII)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/x$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/x$a;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;ZII)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/x$b;-><init>(Lcom/join/mgps/fragment/x;Lcom/join/mgps/dto/CommentResponse;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V(Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;",
            "Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/x$k;-><init>(Lcom/join/mgps/fragment/x;Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method X()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x$m;-><init>(Lcom/join/mgps/fragment/x;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public d(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/fragment/x$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/fragment/x$d;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public e(Lcom/join/mgps/dto/CommentBaseBean;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/fragment/x$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/fragment/x$e;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentBaseBean;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x;->G:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x;->F:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x;->E:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/x;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/x;->F:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00fb

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/x;->F:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/x;->F:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/x;->F:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->b:Landroid/widget/ImageView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->c:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->d:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->f:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->g:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->b:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->c:Landroid/widget/TextView;

    const v0, 0x7f090f55

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->d:Landroid/widget/TextView;

    const v0, 0x7f0902a8

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/LoadMoreRecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->e:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090b10

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/join/mgps/fragment/w;->h:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f090d11

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 9
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/mgps/fragment/x$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/x$g;-><init>(Lcom/join/mgps/fragment/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/fragment/x$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x$h;-><init>(Lcom/join/mgps/fragment/x;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/w;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/fragment/x$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x$i;-><init>(Lcom/join/mgps/fragment/x;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/x;->E:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/x;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x$j;-><init>(Lcom/join/mgps/fragment/x;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/x$l;-><init>(Lcom/join/mgps/fragment/x;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/x$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/x$n;-><init>(Lcom/join/mgps/fragment/x;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
