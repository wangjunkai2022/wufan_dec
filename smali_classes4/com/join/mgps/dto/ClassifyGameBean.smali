.class public Lcom/join/mgps/dto/ClassifyGameBean;
.super Ljava/lang/Object;
.source "ClassifyGameBean.java"


# instance fields
.field private type:I

.field private type_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    return v0
.end method

.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type:I

    return-void
.end method

.method public setType_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameBean;->type_id:I

    return-void
.end method
