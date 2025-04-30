.class public final Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;
.super Lcom/join/mgps/activity/PapaEverydayNewGameActivity;
.source "PapaEverydayNewGameActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;
    }
.end annotation


# static fields
.field public static final z:Ljava/lang/String; = "extBean"


# instance fields
.field private final v:Li3/c;

.field private final w:Ljava/util/Map;
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

.field private final x:Landroid/content/IntentFilter;

.field private final y:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->v:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->w:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->x:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$b;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->y:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->P0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->G0(I)V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->M0(I)V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static h1(Landroid/content/Context;)Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static i1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$k;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->x:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->x:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->y:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->x:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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

    const-string v1, "extBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ExtBean;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->o:Lcom/join/mgps/dto/ExtBean;

    :cond_0
    return-void
.end method


# virtual methods
.method G0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$h;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$j;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$f;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$a;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->v:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0030

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f0908e1

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView4NewGame;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->e:Lcom/join/mgps/customview/XListView4NewGame;

    const v0, 0x7f0909e2

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->f:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091030

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$c;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 12
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$d;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->h:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$e;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->v:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$g;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaEverydayNewGameActivity_$i;-><init>(Lcom/join/mgps/activity/PapaEverydayNewGameActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
