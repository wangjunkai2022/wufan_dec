.class public final Lcom/join/mgps/fragment/m2;
.super Lcom/join/mgps/fragment/l2;
.source "GameFromBuildFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/m2$r;
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
    invoke-direct {p0}, Lcom/join/mgps/fragment/l2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/m2;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/m2;->A:Ljava/util/Map;

    return-void
.end method

.method public static A0()Lcom/join/mgps/fragment/m2$r;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$r;

    invoke-direct {v0}, Lcom/join/mgps/fragment/m2$r;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->Q()V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->W()V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/fragment/m2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/l2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->showLodingFailed()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->R()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/fragment/m2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/l2;->U(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->V()V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/fragment/m2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/l2;->O(Ljava/util/List;)V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->c0()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->d0()V

    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/fragment/m2;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/l2;->N(Ljava/util/List;)V

    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->P()V

    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->g0()V

    return-void
.end method

.method static synthetic y0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->S()V

    return-void
.end method

.method static synthetic z0(Lcom/join/mgps/fragment/m2;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/l2;->showLoding()V

    return-void
.end method


# virtual methods
.method N(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/m2$p;-><init>(Lcom/join/mgps/fragment/m2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/m2$m;-><init>(Lcom/join/mgps/fragment/m2;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$q;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$k;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$f;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$b;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/m2$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/m2$g;-><init>(Lcom/join/mgps/fragment/m2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/m2$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/m2$h;-><init>(Lcom/join/mgps/fragment/m2;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$d;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$n;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$o;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$a;-><init>(Lcom/join/mgps/fragment/m2;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m2;->A:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m2;->z:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m2;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/m2;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/fragment/m2;->z:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0232

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/m2;->z:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/m2;->z:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/m2;->z:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->a:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->b:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->c:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->d:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->e:Landroid/widget/Button;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->f:Landroid/widget/ImageView;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f091148

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0908e7

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->b:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090e21

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/l2;->e:Landroid/widget/Button;

    const v0, 0x7f090d11

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/fragment/l2;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/fragment/m2$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$i;-><init>(Lcom/join/mgps/fragment/m2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l2;->e:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/fragment/m2$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$j;-><init>(Lcom/join/mgps/fragment/m2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/l2;->M()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/m2;->y:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/m2;->A:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$c;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m2$e;-><init>(Lcom/join/mgps/fragment/m2;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/m2$l;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/m2$l;-><init>(Lcom/join/mgps/fragment/m2;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
