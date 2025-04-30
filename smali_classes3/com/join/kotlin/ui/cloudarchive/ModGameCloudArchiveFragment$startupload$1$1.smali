.class final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModGameCloudArchiveFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->invoke()V
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
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    check-cast v1, Ljava/io/Serializable;

    const-string v2, "archives"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getViewModleShareViewModle()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "runIngArchiveId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getModgameBean()Lcom/join/mgps/dto/ModGameDetailBean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameDetailBean;->getCloud_archive_local_path()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    move-result-object v1

    const-string v2, "modgameBean!!.cloud_archive_local_path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "archiveFileSuffix"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;->getImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v1, v1, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;

    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$startupload$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u672c\u5730\u9ed8\u8ba4\u5b58\u6863\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5206\u4eab"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
