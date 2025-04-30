.class public Lcom/join/mgps/dto/RequestBbsDetailArgs;
.super Ljava/lang/Object;
.source "RequestBbsDetailArgs.java"


# instance fields
.field private postId:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->postId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public setPostId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->postId:Ljava/lang/Integer;

    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->uid:Ljava/lang/Integer;

    return-void
.end method
