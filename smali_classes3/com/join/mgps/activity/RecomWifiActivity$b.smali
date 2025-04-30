.class Lcom/join/mgps/activity/RecomWifiActivity$b;
.super Ljava/lang/Object;
.source "RecomWifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/RecomWifiActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/z4;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/join/mgps/activity/RecomWifiActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/RecomWifiActivity;Lcom/join/mgps/adapter/z4;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->c:Lcom/join/mgps/activity/RecomWifiActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->a:Lcom/join/mgps/adapter/z4;

    iput-object p3, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->c:Lcom/join/mgps/activity/RecomWifiActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->a:Lcom/join/mgps/adapter/z4;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/z4;->b()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/RecomWifiActivity$b;->c:Lcom/join/mgps/activity/RecomWifiActivity;

    invoke-static {v0, v1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method
