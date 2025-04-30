.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->L1(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iput-boolean p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->a:Z

    iput-boolean p3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->a:Z

    iget-boolean v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$r;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->o2(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZZ)V

    return-void
.end method
