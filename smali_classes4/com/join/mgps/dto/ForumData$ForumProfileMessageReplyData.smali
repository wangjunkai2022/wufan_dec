.class public Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileMessageReplyData"
.end annotation


# instance fields
.field comment:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Lcom/join/mgps/dto/ForumBean$ForumCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;->comment:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    return-object v0
.end method

.method public setComment(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileMessageReplyData;->comment:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    return-void
.end method
