.class public final Lcom/join/mgps/activity/DownloadCenterActivity_;
.super Lcom/join/mgps/activity/DownloadCenterActivity;
.source "DownloadCenterActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DownloadCenterActivity_$p;
    }
.end annotation


# instance fields
.field private final C:Li3/c;

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

.field private final E:Landroid/content/IntentFilter;

.field private final F:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->C:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->D:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->E:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$g;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->F:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->H0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity;->T0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->M0()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->E0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->L0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->getData()V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/DownloadCenterActivity_;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/DownloadCenterActivity;->S0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->updateAndroidApp()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/DownloadCenterActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->I0()V

    return-void
.end method

.method public static d1(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadCenterActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$p;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DownloadCenterActivity_$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$p;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->d:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->E:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->E:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->F:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->E:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method E0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$a;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$m;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadCenterActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadCenterActivity_$f;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method L0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$b;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$o;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/DownloadCenterActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/DownloadCenterActivity_$d;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method T0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity_$n;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadCenterActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadCenterActivity_$c;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->C:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01bf

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DownloadCenterActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090e25

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f090b2d

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f09078c

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090b2a

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f09060a

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0903af

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f090ea1

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0909e9

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->m:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090ba2

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->n:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    const v0, 0x7f09013e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09105e

    .line 12
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 13
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 15
    new-instance v3, Lcom/join/mgps/activity/DownloadCenterActivity_$h;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$h;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadCenterActivity;->f:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 17
    new-instance v3, Lcom/join/mgps/activity/DownloadCenterActivity_$i;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$i;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 18
    new-instance v2, Lcom/join/mgps/activity/DownloadCenterActivity_$j;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$j;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$k;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 20
    new-instance v0, Lcom/join/mgps/activity/DownloadCenterActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadCenterActivity_$l;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadCenterActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->D:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadCenterActivity_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method updateAndroidApp()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadCenterActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadCenterActivity_$e;-><init>(Lcom/join/mgps/activity/DownloadCenterActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
