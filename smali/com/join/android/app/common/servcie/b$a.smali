.class Lcom/join/android/app/common/servcie/b$a;
.super Ljava/lang/Thread;
.source "DownloadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/b;->a(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_check_version"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/servcie/b$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
