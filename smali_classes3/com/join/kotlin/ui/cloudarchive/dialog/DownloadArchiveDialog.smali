.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "DownloadArchiveDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0006\u0010\u000c\u001a\u00020\u000bJ\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\tH\u0016R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u00020\u00168F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "downLoadArchive",
        "v",
        "onClick",
        "Lcom/join/android/app/mgsim/wufun/databinding/sd;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/sd;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/sd;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/sd;)V",
        "Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;",
        "viewModle",
        "<init>",
        "()V",
        "UpdateLocalArchiveEvent",
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
.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$viewModle$2;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$viewModle$2;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final downLoadArchive()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "activity!!.getExternalFilesDir(\"\")!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity!!.getExternalFilesDir(\"\")!!.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Download/cloudarchive/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "viewModle.archive.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "viewModle.cloud_archive_local_path.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "viewModle.downloadType.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "context!!"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/sd;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    if-nez v0, :cond_0

    const-string v1, "dataBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 v2, 0x6

    .line 4
    invoke-direct {v0, v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->cancleDownloadTask(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c01bd

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/sd;

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    const-string p2, "dataBinding"

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/16 p3, 0x1b

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 p3, 0x7

    invoke-virtual {p1, p3, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    const-string v0, "archive"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    const-string v0, "downloadType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    const-string v0, "cloud_archive_local_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object p3

    const-string v0, "installInExtPlug"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->setInstallInExtPlug(Z)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p1, :cond_6

    .line 12
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$3;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$3;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    invoke-virtual {p1, p0, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$4;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$4;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    invoke-virtual {p1, p0, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$5;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    invoke-virtual {p1, p0, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$6;

    invoke-direct {p3}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$6;-><init>()V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->downLoadArchive()V

    .line 19
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/sd;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/sd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/sd;

    return-void
.end method
