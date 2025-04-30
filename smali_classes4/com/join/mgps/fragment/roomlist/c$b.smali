.class Lcom/join/mgps/fragment/roomlist/c$b;
.super Ljava/lang/Object;
.source "StandardEliteRoomFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/roomlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lapp/mgsim/arena/SimpleWrapperRoom;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$b;->a:Lcom/join/mgps/fragment/roomlist/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JI)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    int-to-long p1, p3

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public b(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-wide v3, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    move-result v0

    iget-wide v3, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    iget-object v5, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v5}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    move-result v3

    if-le v0, v3, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-wide v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    iget-object p1, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    move-result p1

    iget-wide v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    iget-object p2, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result p2

    invoke-direct {p0, v0, v1, p2}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    check-cast p2, Lapp/mgsim/arena/SimpleWrapperRoom;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/roomlist/c$b;->b(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I

    move-result p1

    return p1
.end method
