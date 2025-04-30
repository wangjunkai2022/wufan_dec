.class Lcom/join/android/app/common/servcie/DownloadService$b;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadService;->o(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/servcie/DownloadService;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService$b;->a:Lcom/join/android/app/common/servcie/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/servcie/DownloadService;->b()V

    :cond_0
    return-void
.end method
