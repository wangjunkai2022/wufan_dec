.class Lcom/join/android/app/common/servcie/DownloadService_$c;
.super Landroid/content/BroadcastReceiver;
.source "DownloadService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/servcie/DownloadService_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/servcie/DownloadService_;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadService_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService_$c;->a:Lcom/join/android/app/common/servcie/DownloadService_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService_$c;->a:Lcom/join/android/app/common/servcie/DownloadService_;

    invoke-virtual {p1, p2}, Lcom/join/android/app/common/servcie/DownloadService;->e(Landroid/content/Intent;)V

    return-void
.end method
