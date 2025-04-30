.class public Lcom/join/mgps/dto/GameMD5ResultInfo;
.super Ljava/lang/Object;
.source "GameMD5ResultInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;
    }
.end annotation


# instance fields
.field private info:Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMD5ResultInfo;->info:Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    return-object v0
.end method

.method public setInfo(Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMD5ResultInfo;->info:Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    return-void
.end method
