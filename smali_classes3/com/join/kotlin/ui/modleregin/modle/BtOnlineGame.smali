.class public final Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;
.super Ljava/lang/Object;
.source "BtOnlineGame.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000f\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0003J#\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;",
        "",
        "",
        "component1",
        "",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "component2",
        "onlineTime",
        "gameEntityList",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/util/List;",
        "getGameEntityList",
        "()Ljava/util/List;",
        "J",
        "getOnlineTime",
        "()J",
        "<init>",
        "(JLjava/util/List;)V",
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
.field private final gameEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onlineTime:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gameEntityList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    iput-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;JLjava/util/List;ILjava/lang/Object;)Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->copy(JLjava/util/List;)Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    return-wide v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(JLjava/util/List;)Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)",
            "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gameEntityList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;-><init>(JLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    iget-wide v2, p1, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    iget-object p1, p1, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getGameEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    return-object v0
.end method

.method public final getOnlineTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtOnlineGame(onlineTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->onlineTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gameEntityList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->gameEntityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
