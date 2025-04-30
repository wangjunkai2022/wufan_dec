.class public final Lcom/join/mgps/activity/OemDetailActivity_;
.super Lcom/join/mgps/activity/OemDetailActivity;
.source "OemDetailActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/OemDetailActivity_$d;
    }
.end annotation


# instance fields
.field private final J:Li3/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/OemDetailActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity_;->J:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity_;->K:Ljava/util/Map;

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/OemDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->M0(I)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/OemDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/OemDetailActivity;->R0()V

    return-void
.end method

.method public static e1(Landroid/content/Context;)Lcom/join/mgps/activity/OemDetailActivity_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/OemDetailActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/OemDetailActivity_$d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static f1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/OemDetailActivity_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/OemDetailActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/OemDetailActivity_$d;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method M0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/OemDetailActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/OemDetailActivity_$b;-><init>(Lcom/join/mgps/activity/OemDetailActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/OemDetailActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/OemDetailActivity_$c;-><init>(Lcom/join/mgps/activity/OemDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity_;->K:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity_;->J:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c03fd

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/OemDetailActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09013e

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->b:Landroid/view/View;

    const v0, 0x7f090088

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0908a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090169

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->e:Landroid/view/View;

    const v0, 0x7f090986

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->f:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090b56

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090b57

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090b58

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0905e5

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f0905eb

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0905e4

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0905f1

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0905f0

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f090230

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0905f6

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f090cdc

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->q:Landroid/widget/Button;

    const v0, 0x7f090609

    .line 17
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->r:Landroid/widget/Button;

    const v0, 0x7f0905f7

    .line 18
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0905e1

    .line 19
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0905f9

    .line 20
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0905f8

    .line 21
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090ac0

    .line 22
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity;->w:Landroid/view/View;

    const v0, 0x7f090ac1

    .line 23
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->x:Landroid/widget/TextView;

    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Lcom/join/mgps/activity/OemDetailActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/OemDetailActivity_$a;-><init>(Lcom/join/mgps/activity/OemDetailActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/OemDetailActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity_;->K:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity_;->J:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity_;->J:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity_;->J:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
