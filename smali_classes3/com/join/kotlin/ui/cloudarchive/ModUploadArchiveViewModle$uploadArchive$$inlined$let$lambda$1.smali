.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "ModUploadArchiveViewModle.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadArchive(Landroid/content/Context;)V
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
        "com/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$1$1",
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
.field final synthetic $archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "archive.archiveLocation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-static {v0, v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->access$startZipFile(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Ljava/io/File;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "file://"

    const-string v4, ""

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->access$compressImage(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v2, "AccountUtil_.getInstance_(context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/join/android/app/common/http/h;->b()Lcom/join/android/app/common/http/h;

    move-result-object v3

    const-string v2, "accountData"

    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->$archive$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 12
    new-instance v12, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1$1;

    invoke-direct {v12, p0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;)V

    const-string v9, "340"

    move-object v11, v1

    .line 13
    invoke-virtual/range {v3 .. v12}, Lcom/join/android/app/common/http/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_2
    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const-string v2, "\u5f02\u5e38"

    const/16 v3, 0x1f4

    if-nez v1, :cond_6

    .line 18
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v4, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {v1, v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v0, :cond_5

    .line 20
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_5
    new-instance v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 22
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_6
    new-instance v0, Lcom/join/mgps/dto/ResponseModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 26
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 27
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ResponseModel;->setMessage(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getResponseReult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
