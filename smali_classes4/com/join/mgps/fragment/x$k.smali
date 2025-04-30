.class Lcom/join/mgps/fragment/x$k;
.super Ljava/lang/Object;
.source "CommentAllListFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x;->V(Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

.field final synthetic c:Lcom/join/mgps/fragment/x;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x;Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x$k;->c:Lcom/join/mgps/fragment/x;

    iput-object p2, p0, Lcom/join/mgps/fragment/x$k;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/join/mgps/fragment/x$k;->b:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x$k;->c:Lcom/join/mgps/fragment/x;

    iget-object v1, p0, Lcom/join/mgps/fragment/x$k;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/fragment/x$k;->b:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/x;->b0(Lcom/join/mgps/fragment/x;Ljava/util/List;Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V

    return-void
.end method
