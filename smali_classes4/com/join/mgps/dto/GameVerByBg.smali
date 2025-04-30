.class public Lcom/join/mgps/dto/GameVerByBg;
.super Ljava/lang/Object;
.source "GameVerByBg.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private jump_type:I

.field private state:I

.field private tpl_type:Ljava/lang/String;

.field private version_code:Ljava/lang/String;

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBg;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVerByBg;->jump_type:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVerByBg;->state:I

    return v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBg;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBg;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBg;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBg;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVerByBg;->jump_type:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVerByBg;->state:I

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBg;->tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBg;->version_code:Ljava/lang/String;

    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBg;->version_name:Ljava/lang/String;

    return-void
.end method
