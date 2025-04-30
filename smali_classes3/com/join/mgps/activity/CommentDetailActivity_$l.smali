.class Lcom/join/mgps/activity/CommentDetailActivity_$l;
.super Lorg/androidannotations/api/a$c;
.source "CommentDetailActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity_;->K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Lcom/join/mgps/activity/CommentDetailActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->h:Lcom/join/mgps/activity/CommentDetailActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->c:Ljava/lang/String;

    iput-object p9, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->d:Ljava/lang/String;

    iput-object p10, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->e:Ljava/lang/String;

    iput-object p11, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->f:Ljava/lang/String;

    iput p12, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->g:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->h:Lcom/join/mgps/activity/CommentDetailActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->f:Ljava/lang/String;

    iget v7, p0, Lcom/join/mgps/activity/CommentDetailActivity_$l;->g:I

    invoke-static/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_;->W1(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
