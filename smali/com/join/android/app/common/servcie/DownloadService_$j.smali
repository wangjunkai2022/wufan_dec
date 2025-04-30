.class Lcom/join/android/app/common/servcie/DownloadService_$j;
.super Ljava/lang/Object;
.source "DownloadService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/servcie/DownloadService_;->o(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/join/android/app/common/servcie/DownloadService_;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/servcie/DownloadService_$j;->b:Lcom/join/android/app/common/servcie/DownloadService_;

    iput-object p2, p0, Lcom/join/android/app/common/servcie/DownloadService_$j;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/servcie/DownloadService_$j;->b:Lcom/join/android/app/common/servcie/DownloadService_;

    iget-object v1, p0, Lcom/join/android/app/common/servcie/DownloadService_$j;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/join/android/app/common/servcie/DownloadService_;->H(Lcom/join/android/app/common/servcie/DownloadService_;Landroid/content/Intent;)V

    return-void
.end method
