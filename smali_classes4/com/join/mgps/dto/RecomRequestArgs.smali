.class public Lcom/join/mgps/dto/RecomRequestArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RecomRequestArgs.java"


# instance fields
.field private pn:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestArgs;->pn:I

    return-void
.end method


# virtual methods
.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RecomRequestArgs;->pn:I

    return v0
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RecomRequestArgs;->pn:I

    return-void
.end method
