.class public Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsPraiseData"
.end annotation


# instance fields
.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->result:Z

    return-void
.end method


# virtual methods
.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->result:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsPraiseData;->result:Z

    return-void
.end method
