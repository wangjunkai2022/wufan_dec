.class Lcom/join/mgps/activity/CopyDialogActivity$b;
.super Ljava/lang/Thread;
.source "CopyDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CopyDialogActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CopyDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CopyDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 9
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/f0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0, v2}, Lg1/b;->update(Ljava/lang/Object;)I

    :try_start_2
    const-string v0, ".downloadTask"

    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    iget-object v4, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity$b;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
