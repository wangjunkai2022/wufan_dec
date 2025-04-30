.class public final Lcom/join/mgps/fragment/b3;
.super Lcom/join/mgps/fragment/GmaeFormPostFragment;
.source "GmaeFormPostFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/b3$a0;
    }
.end annotation


# instance fields
.field private final R0:Li3/c;

.field private S0:Landroid/view/View;

.field private final T0:Ljava/util/Map;
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

.field private final U0:Landroid/content/IntentFilter;

.field private final V0:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b3;->R0:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b3;->T0:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/fragment/b3;->U0:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/fragment/b3$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$k;-><init>(Lcom/join/mgps/fragment/b3;)V

    iput-object v0, p0, Lcom/join/mgps/fragment/b3;->V0:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A1(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->g1(Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method

.method static synthetic B1(Lcom/join/mgps/fragment/b3;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic C1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->p0()V

    return-void
.end method

.method static synthetic D1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->q0()V

    return-void
.end method

.method static synthetic E1(Lcom/join/mgps/fragment/b3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->r0(I)V

    return-void
.end method

.method static synthetic F1(Lcom/join/mgps/fragment/b3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->F0(I)V

    return-void
.end method

.method static synthetic G1(Lcom/join/mgps/fragment/b3;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->w0(IZ)V

    return-void
.end method

.method static synthetic H1(Lcom/join/mgps/fragment/b3;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d0(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic I1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->getDownloadTaskInfo()V

    return-void
.end method

.method static synthetic J1(Lcom/join/mgps/fragment/b3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->f0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i1()V

    return-void
.end method

.method static synthetic L1(Lcom/join/mgps/fragment/b3;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a0(I)V

    return-void
.end method

.method static synthetic M1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->u0()V

    return-void
.end method

.method static synthetic N1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z0()V

    return-void
.end method

.method static synthetic O1(Lcom/join/mgps/fragment/b3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c1()V

    return-void
.end method

.method static synthetic Q1(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->s1(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public static R1()Lcom/join/mgps/fragment/b3$a0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$a0;

    invoke-direct {v0}, Lcom/join/mgps/fragment/b3$a0;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/b3;->U0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/b3;->U0:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t1(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->o1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic u1(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->r1(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic v1(Lcom/join/mgps/fragment/b3;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H0(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic w1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b1()V

    return-void
.end method

.method static synthetic x1(Lcom/join/mgps/fragment/b3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y1(Lcom/join/mgps/fragment/b3;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method

.method static synthetic z1(Lcom/join/mgps/fragment/b3;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->updateDownloadView()V

    return-void
.end method


# virtual methods
.method F0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/b3$o;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/b3$o;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0(Ljava/util/List;I)V
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
    new-instance v0, Lcom/join/mgps/fragment/b3$u;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b3$u;-><init>(Lcom/join/mgps/fragment/b3;Ljava/util/List;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method Z(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/b3$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/b3$j;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Z0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$z;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method a0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/b3$x;-><init>(Lcom/join/mgps/fragment/b3;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$e;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$b;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method d0(Landroid/content/Context;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/fragment/b3$p;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/fragment/b3$p;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method f0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/b3$r;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/b3$r;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method g1(Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/b3$i;-><init>(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/DetailResultBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b3;->T0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDownloadTaskInfo()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/b3$q;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/b3$q;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method i1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$w;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$w;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
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
    iget-object v0, p0, Lcom/join/mgps/fragment/b3;->S0:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method n1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b3$g;-><init>(Lcom/join/mgps/fragment/b3;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method o1(Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/fragment/b3$t;-><init>(Lcom/join/mgps/fragment/b3;Lcom/join/mgps/dto/ResultMainBean;ILjava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b3;->R0:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/b3;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/fragment/b3;->V0:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/join/mgps/fragment/b3;->U0:Landroid/content/IntentFilter;

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

    iput-object p3, p0, Lcom/join/mgps/fragment/b3;->S0:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c042d

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/fragment/b3;->S0:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/b3;->S0:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/b3;->V0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/fragment/b3;->S0:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a:Landroid/widget/RelativeLayout;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c:Landroid/widget/TextView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d:Lcom/join/mgps/customview/ForumLoadingView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Lcom/join/mgps/customview/XListView2;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H:Landroid/widget/FrameLayout;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:Landroid/widget/RelativeLayout;

    .line 11
    sput-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P0:Lcom/join/android/app/component/video/MyVideoView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K:Landroid/widget/ImageView;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n0:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090088

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013e

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b:Landroid/widget/ImageView;

    const v0, 0x7f0908a2

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f090986

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/ForumLoadingView;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->d:Lcom/join/mgps/customview/ForumLoadingView;

    const v0, 0x7f090525

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/XListView2;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->h:Lcom/join/mgps/customview/XListView2;

    const v0, 0x7f0909e2

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->i:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    const v0, 0x7f091262

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->H:Landroid/widget/FrameLayout;

    const v0, 0x7f091264

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->I:Landroid/widget/RelativeLayout;

    const v0, 0x7f09125f

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/MyVideoView;

    sput-object v0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->P0:Lcom/join/android/app/component/video/MyVideoView;

    const v0, 0x7f090311

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->J:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090c1b

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->K:Landroid/widget/ImageView;

    const v0, 0x7f090983

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->n0:Landroid/widget/LinearLayout;

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/join/mgps/fragment/b3$s;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$s;-><init>(Lcom/join/mgps/fragment/b3;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->afterViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/b3;->R0:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method p0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/b3$l;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/b3$l;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/fragment/b3;->T0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/b3$m;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/b3$m;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r0(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/fragment/b3$n;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/fragment/b3$n;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method r1(Landroid/widget/AbsListView;III)V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/fragment/b3$d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/fragment/b3$d;-><init>(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;III)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v6, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method s1(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b3$c;-><init>(Lcom/join/mgps/fragment/b3;Landroid/widget/AbsListView;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/b3$f;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/fragment/b3$a;-><init>(Lcom/join/mgps/fragment/b3;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method u0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$y;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$y;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateDownloadView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/b3$h;-><init>(Lcom/join/mgps/fragment/b3;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method w0(IZ)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/b3$v;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/fragment/b3$v;-><init>(Lcom/join/mgps/fragment/b3;IZ)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
