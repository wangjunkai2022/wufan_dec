.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;
.super Ljava/lang/Object;
.source "ModUploadArchiveActivity.kt"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;",
        "",
        "onClickOkButn",
        "onClickCancleButn",
        "app_wufunNormalRelease"
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
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancleButn()V
    .locals 0

    return-void
.end method

.method public onClickOkButn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getNoticeDialog()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onClick$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/n30;

    move-result-object v1

    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/n30;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
