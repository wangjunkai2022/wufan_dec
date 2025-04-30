.class Lcom/join/mgps/activity/CommentDetailActivity_$d;
.super Ljava/lang/Object;
.source "CommentDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->B1(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->d:Lcom/join/mgps/activity/CommentDetailActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->b:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    iput-boolean p4, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->d:Lcom/join/mgps/activity/CommentDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->b:Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    iget-boolean v3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$d;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/CommentDetailActivity_;->j2(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    return-void
.end method
