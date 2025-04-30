.class public final Lcom/join/mgps/fragment/j1;
.super Lcom/join/mgps/fragment/i1;
.source "FriendCardFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/j1$l;
    }
.end annotation


# instance fields
.field private final r:Li3/c;

.field private s:Landroid/view/View;

.field private final t:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/i1;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/j1;->r:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/j1;->t:Ljava/util/Map;

    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->t0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i1;->p0()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/j1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->X(I)V

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/j1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->b0(I)V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->n0(Ljava/lang/String;)V

    return-void
.end method

.method public static F0()Lcom/join/mgps/fragment/j1$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$l;

    invoke-direct {v0}, Lcom/join/mgps/fragment/j1$l;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/j1;Lcom/join/mgps/dto/FriendCardBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->u0(Lcom/join/mgps/dto/FriendCardBean;)V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i1;->q0()V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/j1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->Z(I)V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/j1;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->c0(I)V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->o0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method X(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/j1$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/j1$k;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j1$f;-><init>(Lcom/join/mgps/fragment/j1;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/j1$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/j1$a;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j1$g;-><init>(Lcom/join/mgps/fragment/j1;I)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j1;->t:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j1;->s:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method n0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/j1$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/j1$b;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method o0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j1$h;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j1;->r:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j1;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i1;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/j1;->s:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0205

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/j1;->s:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j1;->s:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/j1;->s:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->c:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->d:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->l:Landroidx/constraintlayout/widget/Group;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->m:Landroid/view/View;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090126

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->c:Landroid/widget/TextView;

    const v0, 0x7f090340

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->d:Landroid/widget/TextView;

    const v0, 0x7f090205

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->e:Landroid/widget/TextView;

    const v0, 0x7f0908bc

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->f:Landroid/widget/TextView;

    const v0, 0x7f090edf

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->g:Landroid/widget/TextView;

    const v0, 0x7f090683

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->h:Landroid/view/View;

    const v0, 0x7f090685

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->i:Landroid/view/View;

    const v0, 0x7f090b1b

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->j:Landroid/view/View;

    const v0, 0x7f09061c

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->k:Landroid/widget/GridView;

    const v0, 0x7f0909eb

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->l:Landroidx/constraintlayout/widget/Group;

    const v0, 0x7f090ae5

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/fragment/i1;->m:Landroid/view/View;

    const v0, 0x7f090288

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/j1$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j1$c;-><init>(Lcom/join/mgps/fragment/j1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i1;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/j1;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/j1$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/j1$j;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j1;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j1$e;-><init>(Lcom/join/mgps/fragment/j1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j1$i;-><init>(Lcom/join/mgps/fragment/j1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0(Lcom/join/mgps/dto/FriendCardBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j1$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j1$d;-><init>(Lcom/join/mgps/fragment/j1;Lcom/join/mgps/dto/FriendCardBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
