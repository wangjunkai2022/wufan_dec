.class Lcom/join/mgps/activity/PayFinishActivity$a;
.super Ljava/lang/Object;
.source "PayFinishActivity.java"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayFinishActivity;->E0(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/PayFinishActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayFinishActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    iput-boolean p2, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PayGameDetialBean;

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p1

    .line 6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "gameData"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->a:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PayFinishActivity;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    const-string v0, "\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PayFinishActivity$a;->b:Lcom/join/mgps/activity/PayFinishActivity;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayFinishActivity;->H0(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
