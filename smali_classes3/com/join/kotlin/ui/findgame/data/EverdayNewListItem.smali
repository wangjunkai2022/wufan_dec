.class public Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;
.super Ljava/lang/Object;
.source "EverdayNewListItem.java"


# instance fields
.field list:Lcom/join/mgps/dto/CollectionBeanSub;

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->list:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->time:J

    return-wide v0
.end method

.method public setList(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->list:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;->time:J

    return-void
.end method
