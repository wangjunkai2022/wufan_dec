.class public Lcom/join/mgps/dto/CloudCreateInfo;
.super Ljava/lang/Object;
.source "CloudCreateInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private rid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CloudCreateInfo;->rid:I

    return v0
.end method

.method public setRid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CloudCreateInfo;->rid:I

    return-void
.end method
