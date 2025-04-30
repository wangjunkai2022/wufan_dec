.class public Lcom/join/mgps/dto/CloudRecord;
.super Ljava/lang/Object;
.source "CloudRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private file:Ljava/lang/String;

.field private game_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudRecord;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CloudRecord;->game_id:J

    return-wide v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudRecord;->file:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CloudRecord;->game_id:J

    return-void
.end method
