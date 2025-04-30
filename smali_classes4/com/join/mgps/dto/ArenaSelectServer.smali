.class public Lcom/join/mgps/dto/ArenaSelectServer;
.super Ljava/lang/Object;
.source "ArenaSelectServer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private area:I

.field private is_play:Z

.field private is_recommend:Z

.field private ping:I

.field private server_no:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/ArenaSelectServer;

    .line 3
    iget v2, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    iget p1, p1, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->area:I

    return v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->ping:I

    return v0
.end method

.method public getServer_no()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    return v0
.end method

.method public is_play()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_play:Z

    return v0
.end method

.method public is_recommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_recommend:Z

    return v0
.end method

.method public setArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->area:I

    return-void
.end method

.method public setIs_play(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_play:Z

    return-void
.end method

.method public setIs_recommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_recommend:Z

    return-void
.end method

.method public setPing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->ping:I

    return-void
.end method

.method public setServer_no(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    return-void
.end method
