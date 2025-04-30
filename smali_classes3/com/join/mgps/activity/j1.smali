.class public final Lcom/join/mgps/activity/j1;
.super Lcom/join/mgps/activity/MGMainClassifyFragment;
.source "MGMainClassifyFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/j1$o;
    }
.end annotation


# instance fields
.field private final I:Li3/c;

.field private J:Landroid/view/View;

.field private final K:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/j1;->I:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/j1;->K:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->D:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->c0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->e0()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->b0()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->i0()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->d0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->a0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/j1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGMainClassifyFragment;->f0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->h0()V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->g0()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/activity/j1;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->V()V

    return-void
.end method

.method public static v0()Lcom/join/mgps/activity/j1$o;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$o;

    invoke-direct {v0}, Lcom/join/mgps/activity/j1$o;-><init>()V

    return-object v0
.end method


# virtual methods
.method V()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/j1$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/j1$e;-><init>(Lcom/join/mgps/activity/j1;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method a0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/j1$a;-><init>(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$l;-><init>(Lcom/join/mgps/activity/j1;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/j1$j;-><init>(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/j1$n;-><init>(Lcom/join/mgps/activity/j1;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x1f4

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$k;-><init>(Lcom/join/mgps/activity/j1;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CategorySimpleBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/j1$b;-><init>(Lcom/join/mgps/activity/j1;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$d;-><init>(Lcom/join/mgps/activity/j1;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/j1;->K:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$c;-><init>(Lcom/join/mgps/activity/j1;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/j1$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$m;-><init>(Lcom/join/mgps/activity/j1;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/j1;->J:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/j1;->I:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/j1;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/activity/j1;->J:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c04c7

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/j1;->J:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/j1;->J:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/j1;->J:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0908d5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b5

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0909e9

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/MViewpagerV4;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->u:Lcom/join/mgps/customview/MViewpagerV4;

    const v0, 0x7f0909e5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->v:Lcom/join/mgps/customview/SlidingTabLayout;

    const v0, 0x7f091044

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->w:Landroid/widget/ToggleButton;

    const v0, 0x7f090139

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->x:Landroid/widget/TextView;

    const v0, 0x7f090d87

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->y:Landroid/widget/TextView;

    const v0, 0x7f090ddc

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/LinearLayout;

    const v0, 0x7f091045

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->A:Landroid/widget/ToggleButton;

    const v0, 0x7f09013e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090d11

    .line 13
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 14
    new-instance v2, Lcom/join/mgps/activity/j1$f;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/j1$f;-><init>(Lcom/join/mgps/activity/j1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 15
    new-instance v0, Lcom/join/mgps/activity/j1$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$g;-><init>(Lcom/join/mgps/activity/j1;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    new-instance v0, Lcom/join/mgps/activity/j1$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$h;-><init>(Lcom/join/mgps/activity/j1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment;->z:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Lcom/join/mgps/activity/j1$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/j1$i;-><init>(Lcom/join/mgps/activity/j1;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGMainClassifyFragment;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/j1;->I:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/j1;->K:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
