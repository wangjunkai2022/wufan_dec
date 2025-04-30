.class public Lcom/join/mgps/dto/DIscoverTypeBean;
.super Ljava/lang/Object;
.source "DIscoverTypeBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private tid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->tid:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setTid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DIscoverTypeBean;->tid:I

    return-void
.end method
