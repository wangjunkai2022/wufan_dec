.class public final Lcom/join/mgps/fragment/j3;
.super Lcom/join/mgps/fragment/i3;
.source "MyArchiveFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/j3$a0;
    }
.end annotation


# instance fields
.field private final A0:Ljava/util/Map;
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

.field private final y0:Li3/c;

.field private z0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/i3;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->y0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->A0:Ljava/util/Map;

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->M()V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->F0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->l0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/fragment/j3;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->u0(Z)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/fragment/j3;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->w0(Z)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->D0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->J0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->A0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->v0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/fragment/j3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->d0(I)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->e0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/fragment/j3;Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/i3;->q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->B0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->Z(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/i3;->I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/i3;->r0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->updateUi(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->j0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->i0()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->C0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->z0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic h1(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/i3;->y0(Lcom/join/mgps/dto/CloudListDataBean;)V

    return-void
.end method

.method static synthetic i1(Lcom/join/mgps/fragment/j3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/i3;->E0()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method public static j1()Lcom/join/mgps/fragment/j3$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$a0;

    invoke-direct {v0}, Lcom/join/mgps/fragment/j3$a0;-><init>()V

    return-object v0
.end method


# virtual methods
.method A0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$i;-><init>(Lcom/join/mgps/fragment/j3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method B0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$v;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$v;-><init>(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V

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
            "Lcom/join/mgps/dto/RomArchived;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$z;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$z;-><init>(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method D0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$g;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$c;-><init>(Lcom/join/mgps/fragment/j3;)V

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$d;-><init>(Lcom/join/mgps/fragment/j3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/j3$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/j3$q;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;Lcom/join/mgps/listener/e;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$h;-><init>(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$t;-><init>(Lcom/join/mgps/fragment/j3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/j3$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/j3$p;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public d0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/j3$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/j3$m;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public e0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/j3$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/j3$n;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->A0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method i0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$y;-><init>(Lcom/join/mgps/fragment/j3;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->z0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method j0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$x;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$x;-><init>(Lcom/join/mgps/fragment/j3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method l0(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/fragment/j3$u;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$u;-><init>(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->y0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/j3;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/j3;->z0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c02e9

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/j3;->z0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/j3;->z0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/j3;->z0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->a:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->d:Landroid/widget/Button;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->e:Landroid/widget/Button;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->h:Landroid/widget/LinearLayout;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->j:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->k:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->l:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090d7e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0907d7

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->b:Landroid/widget/ImageView;

    const v0, 0x7f091174

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->c:Landroid/widget/TextView;

    const v0, 0x7f0901b7

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->d:Landroid/widget/Button;

    const v0, 0x7f0901bc

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->e:Landroid/widget/Button;

    const v0, 0x7f090ccf

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->f:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090948

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090910

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f091178

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->i:Landroid/widget/TextView;

    const v0, 0x7f090d7a

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f09117c

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/i3;->k:Landroid/widget/TextView;

    const v0, 0x7f090939

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/i3;->l:Landroid/widget/LinearLayout;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->h:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/j3$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$k;-><init>(Lcom/join/mgps/fragment/j3;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3;->e:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 16
    new-instance v0, Lcom/join/mgps/fragment/j3$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/j3$s;-><init>(Lcom/join/mgps/fragment/j3;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i3;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/j3;->y0:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/j3;->A0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;Z",
            "Lcom/join/mgps/fragment/i3$x;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/fragment/j3$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/fragment/j3$o;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r0(Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/j3$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/j3$r;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$l;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$e;-><init>(Lcom/join/mgps/fragment/j3;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUi(Ljava/util/List;)V
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
    new-instance v0, Lcom/join/mgps/fragment/j3$w;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$w;-><init>(Lcom/join/mgps/fragment/j3;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method v0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$j;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$j;-><init>(Lcom/join/mgps/fragment/j3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w0(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$f;-><init>(Lcom/join/mgps/fragment/j3;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method y0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$b;-><init>(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method z0(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/j3$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/j3$a;-><init>(Lcom/join/mgps/fragment/j3;Lcom/join/mgps/dto/CloudListDataBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
