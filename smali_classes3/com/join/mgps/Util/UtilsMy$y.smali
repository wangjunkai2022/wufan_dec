.class Lcom/join/mgps/Util/UtilsMy$y;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->s3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$y;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$y;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public callback2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->s(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity_;

    const-string v1, "modStdDialog"

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.wufun.game.start.std.game"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$y;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$y;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/activity/ModGameIndexActivity_;->H2(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$y;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity_$b0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$b0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$y;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
