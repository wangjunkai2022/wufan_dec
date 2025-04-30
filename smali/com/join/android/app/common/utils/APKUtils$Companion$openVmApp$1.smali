.class final Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "APKUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/APKUtils$Companion;->I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/mod/bean/ModMeta;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object p3, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->c:Lcom/join/mgps/mod/bean/ModMeta;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->b:Lcom/join/android/app/common/utils/APKUtils$Companion;

    iget-object v1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$openVmApp$1;->c:Lcom/join/mgps/mod/bean/ModMeta;

    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils$Companion;->a(Lcom/join/android/app/common/utils/APKUtils$Companion;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/mod/bean/ModMeta;)V

    return-void
.end method
