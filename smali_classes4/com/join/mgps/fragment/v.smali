.class public final Lcom/join/mgps/fragment/v;
.super Lcom/join/mgps/fragment/u;
.source "CollectionThreeSubFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/v$h;
    }
.end annotation


# instance fields
.field private final p:Li3/c;

.field private q:Landroid/view/View;

.field private final r:Ljava/util/Map;
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

.field private final s:Landroid/content/IntentFilter;

.field private final t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/u;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v;->p:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v;->r:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/v;->s:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/v$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$a;-><init>(Lcom/join/mgps/fragment/v;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/v;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u;->P()V

    return-void
.end method

.method static synthetic R(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u;->showProgress()V

    return-void
.end method

.method static synthetic S(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u;->showInstallButn()V

    return-void
.end method

.method static synthetic T(Lcom/join/mgps/fragment/v;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/u;->updateButn()V

    return-void
.end method

.method public static U()Lcom/join/mgps/fragment/v$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v$h;

    invoke-direct {v0}, Lcom/join/mgps/fragment/v$h;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v;->s:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/v;->s:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method P()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$d;-><init>(Lcom/join/mgps/fragment/v;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v;->r:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v;->q:Landroid/view/View;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v;->p:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/v;->t:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/v;->s:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/fragment/v;->q:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c00f8

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/v;->q:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/v;->q:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/v;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/u;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/v;->q:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->c:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->d:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->f:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->g:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->i:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/u;->j:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09070f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090711

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09109d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->c:Landroid/widget/TextView;

    const v0, 0x7f0910a4

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->d:Landroid/widget/TextView;

    const v0, 0x7f09076d

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    const v0, 0x7f090c6e

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090204

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->h:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->i:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/fragment/u;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f090c6d

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lcom/join/mgps/fragment/v$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$b;-><init>(Lcom/join/mgps/fragment/v;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/u;->e:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/v$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$c;-><init>(Lcom/join/mgps/fragment/v;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/u;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v;->p:Li3/c;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$f;-><init>(Lcom/join/mgps/fragment/v;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$e;-><init>(Lcom/join/mgps/fragment/v;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/v$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/v$g;-><init>(Lcom/join/mgps/fragment/v;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
