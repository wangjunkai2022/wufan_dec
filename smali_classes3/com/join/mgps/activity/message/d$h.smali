.class Lcom/join/mgps/activity/message/d$h;
.super Ljava/lang/Object;
.source "MessagePriaceFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/d;->U(Lcom/join/mgps/dto/CommentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CommentResponse;

.field final synthetic b:Lcom/join/mgps/activity/message/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/d$h;->b:Lcom/join/mgps/activity/message/d;

    iput-object p2, p0, Lcom/join/mgps/activity/message/d$h;->a:Lcom/join/mgps/dto/CommentResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d$h;->b:Lcom/join/mgps/activity/message/d;

    iget-object v1, p0, Lcom/join/mgps/activity/message/d$h;->a:Lcom/join/mgps/dto/CommentResponse;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/message/d;->m0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V

    return-void
.end method
