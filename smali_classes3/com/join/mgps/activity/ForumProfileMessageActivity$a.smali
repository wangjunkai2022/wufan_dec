.class Lcom/join/mgps/activity/ForumProfileMessageActivity$a;
.super Ljava/lang/Object;
.source "ForumProfileMessageActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 3
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 5
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 6
    invoke-virtual {p2, p4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-virtual {p3, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object p1

    invoke-static {p3, p1, v0, p2}, Lcom/join/mgps/Util/i0;->A0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method
