.class public Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;JIZIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->a:Z

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->c:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->d:J

    .line 7
    iput p6, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->e:I

    .line 8
    iput p10, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->f:I

    .line 9
    iput-boolean p7, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->g:Z

    .line 10
    iput p8, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->h:I

    .line 11
    iput p9, p0, Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$u$b;->i:I

    return-void
.end method
