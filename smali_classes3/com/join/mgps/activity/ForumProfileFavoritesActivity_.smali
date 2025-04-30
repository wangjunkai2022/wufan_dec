.class public final Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;
.super Lcom/join/mgps/activity/ForumProfileFavoritesActivity;
.source "ForumProfileFavoritesActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;
    }
.end annotation


# static fields
.field public static final O0:Ljava/lang/String; = "extBean"


# instance fields
.field private final K0:Li3/c;

.field private final L0:Ljava/util/Map;
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

.field private final M0:Landroid/content/IntentFilter;

.field private final N0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->K0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->L0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->M0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$k;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->N0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->R1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->U1(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->r1(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H1()V

    return-void
.end method

.method static synthetic a2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method static synthetic c2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->updateDownloadView()V

    return-void
.end method

.method static synthetic d2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->startDown(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic e2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J0(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic f2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->Z0()V

    return-void
.end method

.method static synthetic g2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a1()V

    return-void
.end method

.method static synthetic h2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b1(I)V

    return-void
.end method

.method static synthetic i2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->p1(I)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->M0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->M0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->N0:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->M0:Landroid/content/IntentFilter;

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

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->l:Lcom/join/mgps/dto/ExtBean;

    :cond_0
    return-void
.end method

.method static synthetic j2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->g1(IZ)V

    return-void
.end method

.method static synthetic k2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N0(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic l2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic m2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->P0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->N1()V

    return-void
.end method

.method static synthetic o2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K0(I)V

    return-void
.end method

.method static synthetic p2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->e1()V

    return-void
.end method

.method static synthetic q2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F1()V

    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I1()V

    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->V1(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public static u2(Landroid/content/Context;)Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static v2(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a0;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method F1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$z;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method H1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$e;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$b;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$j;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$x;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0(Landroid/content/Context;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$p;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method N1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$w;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$r;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$t;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method U1(Landroid/widget/AbsListView;III)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$d;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;III)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method V1(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$c;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Landroid/widget/AbsListView;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$l;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method a1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$m;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method b1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$n;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method e1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$y;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method g1(IZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$v;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;IZ)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->L0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$q;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;)V

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->K0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c042d

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->N0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090525

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->h:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909e2

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091262

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->F:Landroid/widget/FrameLayout;

    const v0, 0x7f091264

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->G:Landroid/widget/RelativeLayout;

    const v0, 0x7f09125f

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/MyVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->H:Lcom/join/android/app/component/video/MyVideoView;

    const v0, 0x7f090311

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->I:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c1b

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J:Landroid/widget/ImageView;

    const v0, 0x7f090983

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K:Landroid/widget/LinearLayout;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$s;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->afterViews()V

    return-void
.end method

.method p1(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$o;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->L0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method r1(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumData$ForumUserFavoritesData;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$u;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$u;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->K0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;->injectExtras_()V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$f;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$a;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method startDown(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$i;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/join/mgps/dto/DetailResultBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$h;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity_$g;-><init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity_;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
