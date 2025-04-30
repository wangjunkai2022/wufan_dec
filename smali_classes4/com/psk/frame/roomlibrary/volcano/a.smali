.class public final Lcom/psk/frame/roomlibrary/volcano/a;
.super Ljava/lang/Object;
.source "EventVolcanoDataBasFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u0016\u0010\n\u001a\u00020\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\tR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/psk/frame/roomlibrary/volcano/a;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "a",
        "Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;",
        "b",
        "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;",
        "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;",
        "database",
        "Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;",
        "volcanoEventDao",
        "<init>",
        "()V",
        "RoomLibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static a:Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;

.field private static b:Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

.field public static final c:Lcom/psk/frame/roomlibrary/volcano/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/psk/frame/roomlibrary/volcano/a;

    invoke-direct {v0}, Lcom/psk/frame/roomlibrary/volcano/a;-><init>()V

    sput-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->c:Lcom/psk/frame/roomlibrary/volcano/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;

    invoke-direct {v0, p1}, Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->a:Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;

    return-void
.end method

.method public final b()Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->b:Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    sget-object v1, Lcom/psk/frame/roomlibrary/volcano/a;->a:Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;

    if-nez v1, :cond_0

    const-string v2, "database"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;-><init>(Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;)V

    sput-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->b:Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    .line 3
    :cond_1
    sget-object v0, Lcom/psk/frame/roomlibrary/volcano/a;->b:Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
