.class public Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;
.super Ljava/lang/Object;
.source "GameMD5ResultInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMD5ResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoBean"
.end annotation


# instance fields
.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;->state:Ljava/lang/String;

    return-void
.end method
