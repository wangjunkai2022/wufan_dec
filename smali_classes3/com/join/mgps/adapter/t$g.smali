.class Lcom/join/mgps/adapter/t$g;
.super Ljava/lang/Object;
.source "FightAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/db/tables/FightMainTable;

.field final synthetic c:Lcom/join/mgps/adapter/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/FightMainTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t$g;->c:Lcom/join/mgps/adapter/t;

    iput-object p2, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/mgps/adapter/t$g;->b:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->c:Lcom/join/mgps/adapter/t;

    iget-object v0, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v1, p0, Lcom/join/mgps/adapter/t$g;->b:Lcom/join/mgps/db/tables/FightMainTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/FightMainTable;->getDown_status()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/t;->a(Lcom/join/mgps/adapter/t;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->c:Lcom/join/mgps/adapter/t;

    invoke-static {p1}, Lcom/join/mgps/adapter/t;->b(Lcom/join/mgps/adapter/t;)Landroid/content/Context;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/join/mgps/adapter/t$g;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method
