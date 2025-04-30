.class Lcom/join/mgps/activity/ForumTopicActivity$i;
.super Ljava/lang/Object;
.source "ForumTopicActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumTopicAdapter$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->P0()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    .line 2
    invoke-static {v0, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->D0(Lcom/join/mgps/activity/ForumTopicActivity;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumTopicActivity;->A1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumTopicActivity;->u1()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->l1(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->f1(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->K0(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->v1(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumTopicActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumTopicAdapter$t;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iput p1, v1, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v1, Lcom/join/mgps/activity/MGMainActivity$MediaCmd;->CMD_PLAY:Lcom/join/mgps/activity/MGMainActivity$MediaCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mediacmd"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    iget v3, v3, Lcom/join/mgps/activity/ForumTopicActivity;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumTopicAdapter$t$l;->a:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "key_mediacmd_params"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumTopicActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumTopicActivity;->Z0()V

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$i;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    return-void
.end method
