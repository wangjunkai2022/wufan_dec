.class public Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;
.super Ljava/lang/Object;
.source "SimulatorFastEntryBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorFastEntryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WillPlay"
.end annotation


# instance fields
.field private coll_id:Ljava/lang/String;

.field private games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
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
.method public getColl_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->coll_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->games:Ljava/util/List;

    return-object v0
.end method

.method public setColl_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->coll_id:Ljava/lang/String;

    return-void
.end method

.method public setGames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->games:Ljava/util/List;

    return-void
.end method
