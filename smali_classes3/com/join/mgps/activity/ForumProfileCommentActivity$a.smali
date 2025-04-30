.class Lcom/join/mgps/activity/ForumProfileCommentActivity$a;
.super Ljava/lang/Object;
.source "ForumProfileCommentActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileCommentActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileCommentActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileCommentActivity$a;->a:Lcom/join/mgps/activity/ForumProfileCommentActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method
