.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1$lambda$1;
.super Ljava/lang/Object;
.source "ModUploadArchiveActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;->run()V
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
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "run",
        "()V",
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$4$1",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;

    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$$inlined$schedule$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v0

    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/n30;->I:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Ly1/a;->c(Landroid/view/View;)V

    return-void
.end method
