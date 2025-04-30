.class Lcom/join/mgps/fragment/roomlist/c$a;
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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$a;->a:Lcom/join/mgps/fragment/roomlist/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I
    .locals 4

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
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result v0

    iget-object v3, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result v3

    if-le v0, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p1, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result p1

    iget-object p2, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    check-cast p2, Lapp/mgsim/arena/SimpleWrapperRoom;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/roomlist/c$a;->a(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I

    move-result p1

    return p1
.end method
