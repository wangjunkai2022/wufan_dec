.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n*L\n1#1,148:1\n114#2,4:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1$lambda$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1$lambda$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
