.class final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;
.super Ljava/lang/Object;
.source "ModGameCloudViewModle.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->loadAllArchives(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;JLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModGameCloudViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModGameCloudViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,711:1\n1009#2,2:712\n*E\n*S KotlinDebug\n*F\n+ 1 ModGameCloudViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1\n*L\n105#1,2:712\n*E\n"
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
        "run",
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
.field final synthetic $archiveId:J

.field final synthetic $lists:Ljava/util/List;

.field final synthetic $modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$lists:Ljava/util/List;

    iput-wide p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$archiveId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/g;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$lists:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->$lists:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v4

    const-string v5, "item"

    .line 7
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveDataJson()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v4, v5, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const-string v5, "archiveData"

    .line 9
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalZipPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveFiles()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getMainArchiveLocalPath2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getIsFirstRun()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsFirstRun(I)V

    .line 16
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1$$special$$inlined$sortByDescending$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;)V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$loadAllArchives$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getLocalAllArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
