.class public Lcom/join/mgps/dto/GameSortRequestBean;
.super Ljava/lang/Object;
.source "GameSortRequestBean.java"


# instance fields
.field private deviceid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameSortRequestBean;->version:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameSortRequestBean;->deviceid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameSortRequestBean;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameSortRequestBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameSortRequestBean;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameSortRequestBean;->version:Ljava/lang/String;

    return-void
.end method
