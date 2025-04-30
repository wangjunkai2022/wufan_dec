.class public Lcom/join/mgps/dto/GamesurFaceMainBean;
.super Ljava/lang/Object;
.source "GamesurFaceMainBean.java"


# instance fields
.field private code:I

.field private flag:I

.field private messages:Lcom/join/mgps/dto/GamesurFaceMessageBean;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/join/mgps/dto/GamesurFaceMessageBean;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->flag:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->code:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->version:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->messages:Lcom/join/mgps/dto/GamesurFaceMessageBean;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->code:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->flag:I

    return v0
.end method

.method public getMessages()Lcom/join/mgps/dto/GamesurFaceMessageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->messages:Lcom/join/mgps/dto/GamesurFaceMessageBean;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->code:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->flag:I

    return-void
.end method

.method public setMessages(Lcom/join/mgps/dto/GamesurFaceMessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->messages:Lcom/join/mgps/dto/GamesurFaceMessageBean;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GamesurFaceMainBean{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/GamesurFaceMainBean;->messages:Lcom/join/mgps/dto/GamesurFaceMessageBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
