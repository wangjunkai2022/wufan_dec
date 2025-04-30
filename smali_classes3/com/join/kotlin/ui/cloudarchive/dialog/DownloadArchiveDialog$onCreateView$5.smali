.class final Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;
.super Ljava/lang/Object;
.source "DownloadArchiveDialog.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Integer;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "this.activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "viewModle.archive.value!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->reportDownloadArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;

    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->this$0:Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 13
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onstatus status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
