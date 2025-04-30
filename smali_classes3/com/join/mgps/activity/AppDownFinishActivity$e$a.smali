.class Lcom/join/mgps/activity/AppDownFinishActivity$e$a;
.super Ljava/lang/Object;
.source "AppDownFinishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AppDownFinishActivity$e;->c(Lcom/join/mgps/activity/AppDownFinishActivity$d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

.field final synthetic b:Lcom/join/mgps/activity/AppDownFinishActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AppDownFinishActivity$e;Lcom/join/mgps/activity/AppDownFinishActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    iput-object p2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    iget-object v1, v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    iget-boolean v0, v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    iget-object v2, v2, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->a:Lcom/join/mgps/activity/AppDownFinishActivity$d;

    iget-object v2, v2, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity$e$a;->b:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    iget-object p1, p1, Lcom/join/mgps/activity/AppDownFinishActivity$e;->c:Lcom/join/mgps/activity/AppDownFinishActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/AppDownFinishActivity;->finish()V

    return-void
.end method
