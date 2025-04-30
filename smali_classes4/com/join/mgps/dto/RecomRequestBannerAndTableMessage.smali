.class public Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;
.super Lcom/join/mgps/dto/BaseDto;
.source "RecomRequestBannerAndTableMessage.java"


# instance fields
.field private args:Ljava/util/List;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->modeltype:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->args:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->args:Ljava/util/List;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->args:Ljava/util/List;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecomRequestBannerAndTableMessage;->modeltype:Ljava/lang/String;

    return-void
.end method
