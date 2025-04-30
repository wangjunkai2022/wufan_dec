.class public final Lcom/join/mgps/activity/DetialMoreServiceListActivity_;
.super Lcom/join/mgps/activity/DetialMoreServiceListActivity;
.source "DetialMoreServiceListActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "gameId"


# instance fields
.field private final r:Li3/c;

.field private final s:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->r:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLoding()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->H0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->I0()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->G0()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->E0()V

    return-void
.end method

.method public static P0(Landroid/content/Context;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static Q0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->j:Ljava/lang/String;

    const v0, 0x7f1100aa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->k:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->l:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method E0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$i;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method G0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$h;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$f;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$g;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->s:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->r:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0298

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090cb6

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->b:Lcom/join/mgps/customview/XListView;

    const v0, 0x7f0909b5

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090a4d

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$a;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$b;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$c;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$d;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DetialMoreServiceListActivity_$e;-><init>(Lcom/join/mgps/activity/DetialMoreServiceListActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
