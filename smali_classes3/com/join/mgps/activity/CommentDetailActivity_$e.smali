.class Lcom/join/mgps/activity/CommentDetailActivity_$e;
.super Ljava/lang/Object;
.source "CommentDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->z1(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->c:Lcom/join/mgps/activity/CommentDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->c:Lcom/join/mgps/activity/CommentDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$e;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity_;->P1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V

    return-void
.end method
