.class public Lcom/join/mgps/dto/ForumData$ForumPostsBestData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsBestData"
.end annotation


# instance fields
.field private best:I

.field private message:Ljava/lang/String;

.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBest()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->best:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->result:Z

    return v0
.end method

.method public setBest(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->best:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsBestData;->result:Z

    return-void
.end method
