.class public final Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;
.super Ljava/lang/Object;
.source "ModgameCloudListFragment.kt"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->onClick(Landroid/view/View;)V
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
        "com/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancleButn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onClickOkButn()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 3
    :cond_2
    sget-object v0, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "archiveDataPop.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/join/mgps/va/overmind/f;->x(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cloudArchives/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 6
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;-><init>()V

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getArchiveDataPop()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    move-result-object v2

    const-string v3, "archive"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getInstallInExtPlug()Z

    move-result v2

    const-string v3, "installInExtPlug"

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "cloud_archive_local_path"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    invoke-static {v0}, Lcom/join/kotlin/domain/ext/EXTKt;->dialogFragmentCanShow(Landroidx/fragment/app/DialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClick$3;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->getRedownFragment()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
