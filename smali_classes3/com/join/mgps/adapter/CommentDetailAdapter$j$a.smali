.class public Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;
.super Ljava/lang/Object;
.source "CommentDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;->a:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    return-void
.end method
