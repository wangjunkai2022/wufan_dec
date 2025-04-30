.class Lcom/join/mgps/activity/ForumTopicActivity$o;
.super Ljava/lang/Object;
.source "ForumTopicActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->v1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumTopicActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0

    return-void
.end method

.method public c(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumTopicActivity$o;->f(IZ)V

    return-void
.end method

.method public d(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->is_favorite()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setIs_favorite(Z)V

    :cond_0
    return-void
.end method

.method public e(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumTopicActivity;->K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setBest(I)V

    :cond_0
    return-void
.end method

.method f(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ForumTopicActivity;->m:Ljava/util/List;

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumTopicActivity;->y1()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumTopicActivity;->Y0()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$o;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5220\u9664\u6210\u529f"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5220\u9664\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
