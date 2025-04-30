.class public Lcom/join/mgps/dto/RecomRequestMessage;
.super Lcom/join/mgps/dto/BaseDto;
.source "RecomRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/join/mgps/dto/BaseDto;"
    }
.end annotation


# instance fields
.field private args:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private ext:Lcom/join/mgps/dto/ExtBean;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->args:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->modeltype:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dto/RecomRequestMessage;->args:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->modeltype:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/RecomRequestMessage;->args:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/RecomRequestMessage;->ext:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestMessage;->args:Ljava/lang/Object;

    return-object v0
.end method

.method public getExt()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestMessage;->ext:Lcom/join/mgps/dto/ExtBean;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestMessage;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->args:Ljava/lang/Object;

    return-void
.end method

.method public setExt(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->ext:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestMessage;->modeltype:Ljava/lang/String;

    return-void
.end method
