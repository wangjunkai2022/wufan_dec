.class Lcom/join/mgps/activity/q0$a;
.super Ljava/lang/Object;
.source "InstallAppDialogActivity.java"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/q0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    iget-object p1, p1, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0901dc

    if-ne p2, v0, :cond_5

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    iget v0, p2, Lcom/join/mgps/activity/q0;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSo()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 14
    :cond_3
    invoke-static {p2, p1}, Lcom/join/mgps/activity/q0;->b(Lcom/join/mgps/activity/q0;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p2}, Lcom/join/mgps/activity/q0;->a(Lcom/join/mgps/activity/q0;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickGameInstall:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    iget-object p1, p1, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->remove(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    iget-object p1, p1, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    iget-object p1, p1, Lcom/join/mgps/activity/q0;->e:Lcom/join/mgps/activity/q0$b;

    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/q0$a;->a:Lcom/join/mgps/activity/q0;

    invoke-static {p1}, Lcom/join/mgps/activity/q0;->c(Lcom/join/mgps/activity/q0;)V

    :cond_5
    :goto_1
    return-void
.end method
