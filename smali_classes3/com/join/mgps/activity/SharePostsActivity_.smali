.class public final Lcom/join/mgps/activity/SharePostsActivity_;
.super Lcom/join/mgps/activity/SharePostsActivity;
.source "SharePostsActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SharePostsActivity_$h;
    }
.end annotation


# instance fields
.field private final E:Li3/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/SharePostsActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_;->E:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_;->F:Ljava/util/Map;

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/SharePostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/SharePostsActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SharePostsActivity;->Z0(II)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/SharePostsActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SharePostsActivity;->a1(I)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/SharePostsActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SharePostsActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/SharePostsActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SharePostsActivity;->N0()V

    return-void
.end method

.method public static h1(Landroid/content/Context;)Lcom/join/mgps/activity/SharePostsActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SharePostsActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static i1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SharePostsActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SharePostsActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method N0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SharePostsActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SharePostsActivity_$g;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/SharePostsActivity_$d;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a1(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SharePostsActivity_$e;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;I)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_;->F:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_;->E:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SharePostsActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0586

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SharePostsActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0908a2

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090d0e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->c:Landroid/widget/Button;

    const v0, 0x7f090c42

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090c3e

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090c3f

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->f:Lit/sephiroth/android/library/widget/HListView;

    const v0, 0x7f0904ef

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f09064f

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f090650

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->u:Landroid/widget/GridView;

    const v0, 0x7f090ac6

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SharePostsActivity_$a;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity;->c:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 13
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SharePostsActivity_$b;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SharePostsActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity_;->F:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity_;->E:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SharePostsActivity_$f;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SharePostsActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SharePostsActivity_$c;-><init>(Lcom/join/mgps/activity/SharePostsActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
