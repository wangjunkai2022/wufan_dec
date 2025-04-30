.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;
.super Ljava/lang/Object;
.source "ModUploadArchiveActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
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
        "\u0000\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onChanged",
        "(Ljava/lang/Integer;)V",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object v0

    const-string v1, "\u4e0a\u4f20\u4e2d\u8bf7\u7a0d\u5019"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/y0;->b(Ljava/lang/String;)Landroid/app/Dialog;

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/y0;->a(I)Landroid/app/Dialog;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDialog()Lcom/join/mgps/dialog/y0;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u53d1\u5e03\u8bf7\u7a0d\u5019"

    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/y0;->b(Ljava/lang/String;)Landroid/app/Dialog;

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
