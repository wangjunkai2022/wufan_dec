.class Lcom/join/mgps/socket/fight/arena/a$a0$d;
.super Ljava/lang/Object;
.source "ArenaDialogBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a$a0;->o(Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/join/mgps/dto/ArchiveBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/a$a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$d;->a:Lcom/join/mgps/socket/fight/arena/a$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dto/ArchiveBean;Lcom/join/mgps/dto/ArchiveBean;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/ArchiveBean;->getFileTime()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ArchiveBean;

    check-cast p2, Lcom/join/mgps/dto/ArchiveBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/socket/fight/arena/a$a0$d;->a(Lcom/join/mgps/dto/ArchiveBean;Lcom/join/mgps/dto/ArchiveBean;)I

    move-result p1

    return p1
.end method
