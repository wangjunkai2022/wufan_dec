.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    return-void
.end method

.method public constructor <init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->a:I

    .line 7
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 8
    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->c:I

    .line 9
    iput-boolean p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$d;->g:Z

    return-void
.end method
