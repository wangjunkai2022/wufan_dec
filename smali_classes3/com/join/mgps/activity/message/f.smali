.class public final Lcom/join/mgps/activity/message/f;
.super Lcom/join/mgps/activity/message/e;
.source "NoticeFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/f$m;
    }
.end annotation


# instance fields
.field private final o:Li3/c;

.field private p:Landroid/view/View;

.field private final q:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/message/e;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/f;->o:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/message/f;->q:Ljava/util/Map;

    return-void
.end method

.method static synthetic X(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->W()V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->Q()V

    return-void
.end method

.method static synthetic a0(Lcom/join/mgps/activity/message/f;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/e;->O(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b0(Lcom/join/mgps/activity/message/f;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/e;->N(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->showLoding()V

    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->M()V

    return-void
.end method

.method static synthetic e0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->S()V

    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/message/f;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/e;->V(I)V

    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->T()V

    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->showLodingFailed()V

    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/message/f;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/e;->U()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method public static j0()Lcom/join/mgps/activity/message/f$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$m;

    invoke-direct {v0}, Lcom/join/mgps/activity/message/f$m;-><init>()V

    return-object v0
.end method


# virtual methods
.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$i;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/f$g;-><init>(Lcom/join/mgps/activity/message/f;Ljava/util/List;)V

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
            "Lcom/join/mgps/activity/message/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/f$f;-><init>(Lcom/join/mgps/activity/message/f;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Q()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/f$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/f$c;-><init>(Lcom/join/mgps/activity/message/f;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$j;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method T()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$l;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$b;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/f$k;-><init>(Lcom/join/mgps/activity/message/f;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$e;-><init>(Lcom/join/mgps/activity/message/f;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/f;->q:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/f;->p:Landroid/view/View;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/f;->o:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/f;->init_(Landroid/os/Bundle;)V

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

    iput-object p3, p0, Lcom/join/mgps/activity/message/f;->p:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0212

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/message/f;->p:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/f;->p:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/message/f;->p:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->c:Landroid/widget/LinearLayout;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->k:Landroid/widget/Button;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090acb

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->a:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f0908e7

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->b:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090817

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/message/e;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f090e21

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/message/e;->k:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/message/f$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$d;-><init>(Lcom/join/mgps/activity/message/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/e;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/f;->o:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/f;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$h;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/f$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/f$a;-><init>(Lcom/join/mgps/activity/message/f;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
