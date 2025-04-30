.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->z1(Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

.field final synthetic b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;->a:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_$g;->a:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;->d2(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity_;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;)V

    return-void
.end method
