.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->r1(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iput-boolean p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->a:Z

    iput p3, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->c:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iget-boolean v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->a:Z

    iget v2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$s;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->p2(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;ZI)V

    return-void
.end method
