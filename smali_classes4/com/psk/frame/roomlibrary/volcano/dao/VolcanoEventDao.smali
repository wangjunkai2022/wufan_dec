.class public final Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;
.super Ljava/lang/Object;
.source "VolcanoEventDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R(\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u0012\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;",
        "",
        "Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;",
        "tab",
        "",
        "insertTab",
        "",
        "queryForAll",
        "",
        "id",
        "deletById",
        "delete",
        "update",
        "Lcom/j256/ormlite/dao/Dao;",
        "dao",
        "Lcom/j256/ormlite/dao/Dao;",
        "getDao$annotations",
        "()V",
        "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;",
        "databaseHelper",
        "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;",
        "<init>",
        "(Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;)V",
        "RoomLibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseHelper:Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;


# direct methods
.method public constructor <init>(Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;)V
    .locals 1
    .param p1    # Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "databaseHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->databaseHelper:Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;

    .line 2
    const-class v0, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    const-string v0, "databaseHelper.getDao(VolcanoEventTab::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method private static synthetic getDao$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final deletById(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    return-void
.end method

.method public final delete(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V
    .locals 1
    .param p1    # Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p1}, Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    return-void
.end method

.method public final insertTab(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V
    .locals 1
    .param p1    # Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final queryForAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    const-string v1, "dao.queryForAll()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final update(Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;)V
    .locals 1
    .param p1    # Lcom/psk/frame/roomlibrary/volcano/entity/VolcanoEventTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    return-void
.end method
