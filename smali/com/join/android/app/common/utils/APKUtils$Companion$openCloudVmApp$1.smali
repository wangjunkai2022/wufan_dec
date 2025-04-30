.class final Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "APKUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/APKUtils$Companion;->x(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p3, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p4, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->e:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->a:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->b:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 5
    iget-object v3, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v4, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->d:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openCloudVmApp$1;->e:Ljava/lang/String;

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils$Companion;->y(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
