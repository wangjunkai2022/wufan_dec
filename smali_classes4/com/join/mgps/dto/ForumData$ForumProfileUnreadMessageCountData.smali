.class public Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;
.super Ljava/lang/Object;
.source "ForumData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumProfileUnreadMessageCountData"
.end annotation


# instance fields
.field private unread:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnread()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->unread:I

    return v0
.end method

.method public setUnread(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ForumData$ForumProfileUnreadMessageCountData;->unread:I

    return-void
.end method
