.class public Lcom/join/mgps/dto/GameWorldGlobalData;
.super Ljava/lang/Object;
.source "GameWorldGlobalData.java"


# instance fields
.field private world_user_count:I

.field private worship_top:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldGlobalDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorld_user_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldGlobalData;->world_user_count:I

    return v0
.end method

.method public getWorship_top()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldGlobalDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldGlobalData;->worship_top:Ljava/util/List;

    return-object v0
.end method

.method public setWorld_user_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldGlobalData;->world_user_count:I

    return-void
.end method

.method public setWorship_top(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldGlobalDataItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldGlobalData;->worship_top:Ljava/util/List;

    return-void
.end method
