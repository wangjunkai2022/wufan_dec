.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;
.super Ljava/lang/Object;
.source "ModGameCloudViewModle.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->commentArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001J,\u0010\u0008\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00032\u0010\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005H\u0016J\"\u0010\u000b\u001a\u00020\u00072\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "",
        "onResponse",
        "",
        "t",
        "onFailure",
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
.field final synthetic $archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $from:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$from:I

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsUnLike(I)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setNegativeCount(I)V

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setNegativeCount(I)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/c0;->a()Lcom/join/mgps/Util/c0;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    const/16 v2, 0xa

    .line 6
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/c0;->c(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$from:I

    if-ne p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/papa/sim/statistic/Event;->giveCloudDisLike:Lcom/papa/sim/statistic/Event;

    .line 13
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    .line 16
    sget-object p2, Lcom/papa/sim/statistic/Event;->giveCloudDisLike:Lcom/papa/sim/statistic/Event;

    .line 17
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v0

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
