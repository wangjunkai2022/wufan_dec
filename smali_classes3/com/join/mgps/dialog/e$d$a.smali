.class Lcom/join/mgps/dialog/e$d$a;
.super Ljava/lang/Object;
.source "AppDownFinishDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/e$d;->c(Lcom/join/mgps/dialog/e$c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/e$c;

.field final synthetic b:Lcom/join/mgps/dialog/e$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/e$d;Lcom/join/mgps/dialog/e$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/e$d$a;->b:Lcom/join/mgps/dialog/e$d;

    iput-object p2, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v0, v0, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v0, v0, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v4, v4, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v4, v4, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v4, v4, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v0, v0, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v4, v4, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v3, v3, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 9
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/e$d$a;->a:Lcom/join/mgps/dialog/e$c;

    iget-object v0, v0, Lcom/join/mgps/dialog/e$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/e$d$a;->b:Lcom/join/mgps/dialog/e$d;

    iget-object p1, p1, Lcom/join/mgps/dialog/e$d;->c:Lcom/join/mgps/dialog/e;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
