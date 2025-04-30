.class public Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;
.super Ljava/lang/Object;
.source "ScreenShortRequestArgs.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private pc:I

.field private pn:I

.field private typeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->pn:I

    return v0
.end method

.method public getTypeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->typeId:I

    return v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->pn:I

    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortRequestArgs;->typeId:I

    return-void
.end method
