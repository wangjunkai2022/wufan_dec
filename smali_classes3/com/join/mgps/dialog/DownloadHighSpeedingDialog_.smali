.class public final Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;
.super Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;
.source "DownloadHighSpeedingDialog_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String; = "downloadTask"

.field public static final s:Ljava/lang/String; = "gameId"


# instance fields
.field private final n:Li3/c;

.field private final o:Ljava/util/Map;
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

.field private final p:Landroid/content/IntentFilter;

.field private final q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->n:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->o:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->p:Landroid/content/IntentFilter;

    .line 5
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$a;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->q:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static M0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static N0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$d;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->injectExtras_()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->p:Landroid/content/IntentFilter;

    const-string v0, "com.join.android.app.mgsim.wufun.ad.result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->q:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->p:Landroid/content/IntentFilter;

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

    if-eqz v0, :cond_1

    const-string v1, "downloadTask"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->o:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->n:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c015e

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->onDestroy()V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090e9f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f090c59

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0902df

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->k:Landroid/view/View;

    const v0, 0x7f090288

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b8c

    .line 5
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$b;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_$c;-><init>(Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadHighSpeedingDialog_;->injectExtras_()V

    return-void
.end method
