.class Lcom/join/mgps/activity/CommentDetailActivity_$x;
.super Ljava/lang/Object;
.source "CommentDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->D1(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$x;->b:Lcom/join/mgps/activity/CommentDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$x;->a:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$x;->b:Lcom/join/mgps/activity/CommentDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$x;->a:Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CommentDetailActivity_;->e2(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    return-void
.end method
