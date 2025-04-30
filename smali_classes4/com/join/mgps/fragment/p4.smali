.class public final Lcom/join/mgps/fragment/p4;
.super Lcom/join/mgps/fragment/o4;
.source "RecommedFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/p4$y;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/o4;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p4;->E:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/p4;->G:Ljava/util/Map;

    return-void
.end method

.method static synthetic A0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->m0()V

    return-void
.end method

.method static synthetic B0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->n0()V

    return-void
.end method

.method static synthetic C0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->l0()V

    return-void
.end method

.method static synthetic D0(Lcom/join/mgps/fragment/p4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->r0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic F0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->u0()V

    return-void
.end method

.method static synthetic G0(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->q0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic H0(Lcom/join/mgps/fragment/p4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->c0(I)V

    return-void
.end method

.method static synthetic I0(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->a0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->showLoding()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->S(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/o4;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/p4;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->p0(I)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->showLodingFailed()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->N()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->h0()V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->g0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->f0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->o0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/p4;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/o4;->U(Ljava/util/List;)V

    return-void
.end method

.method public static U0()Lcom/join/mgps/fragment/p4$y;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$y;

    invoke-direct {v0}, Lcom/join/mgps/fragment/p4$y;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/o4;->l:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->P()V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->t0()V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->e0()V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/p4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/o4;->v0()V

    return-void
.end method


# virtual methods
.method N()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$t;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/p4$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/p4$o;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$k;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/p4$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/p4$n;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method U(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p4$a;-><init>(Lcom/join/mgps/fragment/p4;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/p4$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/p4$m;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method c0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/p4$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/p4$l;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$q;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method f0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$w;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$v;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$v;-><init>(Lcom/join/mgps/fragment/p4;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p4;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method h0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$u;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$u;-><init>(Lcom/join/mgps/fragment/p4;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p4;->F:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method l0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$f;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method m0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$d;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method n0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$e;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$x;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p4;->E:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/p4;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/p4;->F:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c032f

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/p4;->F:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p4;->F:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/p4;->F:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->f:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->h:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->i:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->j:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090948

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f090cd0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f090acb

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091178

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->e:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090d7a

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f09117c

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/o4;->i:Landroid/widget/TextView;

    const v0, 0x7f090939

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/o4;->j:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/o4;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/p4;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/p4$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/p4$p;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/p4;->G:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p4$j;-><init>(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method r0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p4$h;-><init>(Lcom/join/mgps/fragment/p4;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$r;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$s;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/p4$g;-><init>(Lcom/join/mgps/fragment/p4;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method t0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$b;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$i;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/p4$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/p4$c;-><init>(Lcom/join/mgps/fragment/p4;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
