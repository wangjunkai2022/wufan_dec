.class Lcom/join/mgps/activity/CommentCreatActivity_$c;
.super Ljava/lang/Object;
.source "CommentCreatActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentCreatActivity_;->I0(IDLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:D

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/CommentCreatActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->e:Lcom/join/mgps/activity/CommentCreatActivity_;

    iput p2, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->a:I

    iput-wide p3, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->b:D

    iput-object p5, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->e:Lcom/join/mgps/activity/CommentCreatActivity_;

    iget v1, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->a:I

    iget-wide v2, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->b:D

    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/activity/CommentCreatActivity_$c;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/CommentCreatActivity_;->O0(Lcom/join/mgps/activity/CommentCreatActivity_;IDLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
