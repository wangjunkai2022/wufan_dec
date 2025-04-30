.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "ModUploadArchiveViewModle.kt"

# interfaces
.implements Lcom/join/android/app/common/http/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "",
        "bytesWritten",
        "contentLength",
        "",
        "b",
        "",
        "kotlin.jvm.PlatformType",
        "url",
        "",
        "onRequestProgress",
        "(JJZLjava/lang/String;)V",
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1$json$1",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestProgress(JJZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;

    iget-object p5, p5, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {p5}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getUploadProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object p5

    const/16 p6, 0x64

    int-to-long v0, p6

    mul-long p1, p1, v0

    div-long/2addr p1, p3

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
