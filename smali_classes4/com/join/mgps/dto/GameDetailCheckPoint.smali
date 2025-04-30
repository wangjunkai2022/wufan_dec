.class public Lcom/join/mgps/dto/GameDetailCheckPoint;
.super Ljava/lang/Object;
.source "GameDetailCheckPoint.java"


# instance fields
.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailCheckPoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailCheckPoint;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailCheckPoint;->name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailCheckPoint;->pic:Ljava/lang/String;

    return-void
.end method
