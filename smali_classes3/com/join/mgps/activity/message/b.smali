.class public final Lcom/join/mgps/activity/message/b;
.super Lcom/join/mgps/activity/message/a;
.source "CommunityFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/b$s;
    }
.end annotation


# instance fields
.field private final B:Li3/c;

.field private C:Landroid/view/View;

.field private final D:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/message/a;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/b;->B:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/b;->D:Ljava/util/Map;

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->M()V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->Q()V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/message/b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/a;->O(Ljava/util/List;)V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->showLodingFailed()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/message/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/a;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/message/a;->Z(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->P()V

    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/message/b;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/message/a;->U(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->d0()V

    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->V()V

    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->a0()V

    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/message/b;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/a;->W(I)V

    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/message/b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/a;->T(Ljava/util/List;)V

    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->b0()V

    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->R()V

    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/activity/message/b;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/a;->showLoding()V

    return-void
.end method

.method public static v0()Lcom/join/mgps/activity/message/b$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$s;

    invoke-direct {v0}, Lcom/join/mgps/activity/message/b$s;-><init>()V

    return-object v0
.end method


# virtual methods
.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$l;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method O(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/a$i;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$m;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/b$m;-><init>(Lcom/join/mgps/activity/message/b;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/b$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/b$h;-><init>(Lcom/join/mgps/activity/message/b;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$d;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$b;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/a$i;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/b$r;-><init>(Lcom/join/mgps/activity/message/b;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U(Ljava/lang/String;II)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/message/b$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/message/b$i;-><init>(Lcom/join/mgps/activity/message/b;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method V()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$o;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$q;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/b$q;-><init>(Lcom/join/mgps/activity/message/b;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(IILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/message/b$g;-><init>(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$p;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$a;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$n;-><init>(Lcom/join/mgps/activity/message/b;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/b;->D:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/b;->C:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/b;->B:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/b;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/activity/message/b;->C:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c01fe

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/message/b;->C:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/b;->C:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/message/b;->C:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->a:Landroid/widget/LinearLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->c:Lcom/join/mgps/customview/XListView2;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->f:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->g:Landroid/widget/LinearLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/widget/Button;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090ff3

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f090acb

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->b:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0908e7

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->c:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090817

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090cf9

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/message/a;->h:Landroid/widget/TextView;

    const v0, 0x7f090e21

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/message/a;->l:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/join/mgps/activity/message/b$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$j;-><init>(Lcom/join/mgps/activity/message/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/a;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/activity/message/b$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$k;-><init>(Lcom/join/mgps/activity/message/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/a;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/b;->B:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/b;->D:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$c;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/b$e;-><init>(Lcom/join/mgps/activity/message/b;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/b$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/b$f;-><init>(Lcom/join/mgps/activity/message/b;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
