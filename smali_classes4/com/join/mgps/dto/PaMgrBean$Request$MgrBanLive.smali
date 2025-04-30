.class public Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MgrBanLive"
.end annotation


# instance fields
.field private liveUserId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiveUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->liveUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setLiveUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->liveUserId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Request$MgrBanLive;->userId:Ljava/lang/String;

    return-void
.end method
