.class public Lcom/join/mgps/dto/RequestModuleArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestModuleArgs.java"


# instance fields
.field private jump_type:I

.field private pc:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestModuleArgs;->jump_type:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pn:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pc:I

    return-void
.end method


# virtual methods
.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModuleArgs;->jump_type:I

    return v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pn:I

    return v0
.end method

.method public setJump_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModuleArgs;->jump_type:I

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModuleArgs;->pn:I

    return-void
.end method
