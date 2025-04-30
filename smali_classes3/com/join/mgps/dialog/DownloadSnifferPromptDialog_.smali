.class public final Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;
.super Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;
.source "DownloadSnifferPromptDialog_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "downloadTask"

.field public static final o:Ljava/lang/String; = "downloadSourceUrl"

.field public static final p:Ljava/lang/String; = "downloadSearchUrl"

.field public static final q:Ljava/lang/String; = "download_original_switch"


# instance fields
.field private final l:Li3/c;

.field private final m:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->l:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->m:Ljava/util/Map;

    return-void
.end method

.method public static O0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static P0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$f;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "downloadTask"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    const-string v1, "downloadSourceUrl"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->b:Ljava/lang/String;

    :cond_1
    const-string v1, "downloadSearchUrl"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->c:Ljava/lang/String;

    :cond_2
    const-string v1, "download_original_switch"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->d:Ljava/lang/String;

    :cond_3
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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->m:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->l:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01a9

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f0902df

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->i:Landroid/view/View;

    const v0, 0x7f090288

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b8c

    .line 3
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090197

    .line 4
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901ac

    .line 5
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901aa

    .line 6
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 7
    new-instance v4, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$a;

    invoke-direct {v4, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$a;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$b;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$c;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$d;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    new-instance v0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_$e;-><init>(Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadSnifferPromptDialog_;->injectExtras_()V

    return-void
.end method
