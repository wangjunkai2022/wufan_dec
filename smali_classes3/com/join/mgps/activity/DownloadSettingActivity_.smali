.class public final Lcom/join/mgps/activity/DownloadSettingActivity_;
.super Lcom/join/mgps/activity/DownloadSettingActivity;
.source "DownloadSettingActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DownloadSettingActivity_$s;
    }
.end annotation


# instance fields
.field private final A:Landroid/content/IntentFilter;

.field private final B:Landroid/content/BroadcastReceiver;

.field private final y:Li3/c;

.field private final z:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->y:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->z:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->A:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$j;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->B:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/DownloadSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/DownloadSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->R0()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/DownloadSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->J0()V

    return-void
.end method

.method public static Z0(Landroid/content/Context;)Lcom/join/mgps/activity/DownloadSettingActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/DownloadSettingActivity_$s;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$s;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->A:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->B:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->A:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public J0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadSettingActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadSettingActivity_$i;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/DownloadSettingActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/DownloadSettingActivity_$h;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_$f;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->z:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->y:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01c6

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 6

    const v0, 0x7f090614

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c3

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906a0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0906f7

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f09011e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f091033

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f090fd1

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090b44

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090f4a

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f090bc8

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f090445

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->k:Landroid/view/View;

    const v0, 0x7f090063

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->l:Landroid/view/View;

    const v0, 0x7f090124

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f090d5b

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f091269

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c87

    .line 16
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09011f

    .line 17
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09013e

    .line 18
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090255

    .line 19
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 20
    iget-object v4, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->l:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 21
    new-instance v5, Lcom/join/mgps/activity/DownloadSettingActivity_$k;

    invoke-direct {v5, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$k;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 22
    new-instance v4, Lcom/join/mgps/activity/DownloadSettingActivity_$l;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$l;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 24
    new-instance v4, Lcom/join/mgps/activity/DownloadSettingActivity_$m;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$m;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 25
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$n;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 27
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$o;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$o;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 29
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$p;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$p;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 30
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$q;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 32
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$r;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$r;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 34
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$a;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v3, :cond_9

    .line 35
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$b;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 37
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity_$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$c;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 38
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DownloadSettingActivity_$d;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity_;->y:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$e;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/DownloadSettingActivity_$e;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/DownloadSettingActivity_$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/DownloadSettingActivity_$g;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
