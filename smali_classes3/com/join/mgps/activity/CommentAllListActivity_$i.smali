.class Lcom/join/mgps/activity/CommentAllListActivity_$i;
.super Ljava/lang/Object;
.source "CommentAllListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentAllListActivity_;->O0(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

.field final synthetic b:Lcom/join/mgps/activity/CommentAllListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentAllListActivity_;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentAllListActivity_$i;->b:Lcom/join/mgps/activity/CommentAllListActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentAllListActivity_$i;->a:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentAllListActivity_$i;->b:Lcom/join/mgps/activity/CommentAllListActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentAllListActivity_$i;->a:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CommentAllListActivity_;->S0(Lcom/join/mgps/activity/CommentAllListActivity_;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    return-void
.end method
