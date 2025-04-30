.class public final Lcom/join/mgps/activity/MustPlayActivity_;
.super Lcom/join/mgps/activity/MustPlayActivity;
.source "MustPlayActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MustPlayActivity_$s;
    }
.end annotation


# instance fields
.field private final A:Li3/c;

.field private final B:Ljava/util/Map;
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

.field private final C:Landroid/content/IntentFilter;

.field private final D:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MustPlayActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->A:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->B:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->C:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$j;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->D:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->showLoding()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MustPlayActivity;->J0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MustPlayActivity;->K0(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->L0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->H0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MustPlayActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MustPlayActivity;->loadData(I)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MustPlayActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method public static V0(Landroid/content/Context;)Lcom/join/mgps/activity/MustPlayActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static W0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MustPlayActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$s;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->C:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->C:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->D:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->C:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$f;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MustPlayAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$c;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MustPlayActivity_$c;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/c;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MustPlayActivity_$d;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$e;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MustPlayActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MustPlayActivity_$i;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/lang/String;JLjava/lang/String;)V

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

.method loadData(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MustPlayActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MustPlayActivity_$h;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->A:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MustPlayActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04b9

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MustPlayActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/MustPlayActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->b:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909e2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f09013e

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090d11

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f091030

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f09102e

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/CustomerDownloadView;

    iput-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    const v0, 0x7f090a4d

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090e21

    .line 11
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090c1e

    .line 12
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090c1f

    .line 13
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/MustPlayActivity;->h:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 15
    new-instance v4, Lcom/join/mgps/activity/MustPlayActivity_$k;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/MustPlayActivity_$k;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/MustPlayActivity;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 17
    new-instance v4, Lcom/join/mgps/activity/MustPlayActivity_$l;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/MustPlayActivity_$l;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 18
    new-instance v3, Lcom/join/mgps/activity/MustPlayActivity_$m;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MustPlayActivity_$m;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$n;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 20
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$o;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 21
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$p;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 23
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$q;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity;->j:Lcom/join/mgps/customview/CustomerDownloadView;

    if-eqz p1, :cond_7

    .line 25
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$r;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$r;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/MustPlayActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity_;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->A:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->A:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity_;->A:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$a;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$b;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MustPlayActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MustPlayActivity_$g;-><init>(Lcom/join/mgps/activity/MustPlayActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
