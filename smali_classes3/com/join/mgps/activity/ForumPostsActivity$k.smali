.class Lcom/join/mgps/activity/ForumPostsActivity$k;
.super Ljava/lang/Object;
.source "ForumPostsActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumPostsAdapter$i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->u3()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->n3(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->d3()V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->D0(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->r2()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->c3(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ForumPostsActivity;->w0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$u0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iput p1, v1, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

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

    iget-object v3, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget v3, v3, Lcom/join/mgps/activity/ForumPostsActivity;->A1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$u0$o;->a:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "key_mediacmd_params"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->callbackPlayVideo(Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->d2()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->F0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->l3(II)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->X1:Z

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->x1(Ljava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->t1(II)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->F0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->l3(II)V

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity$k;->q(ILjava/lang/String;)V

    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->t1(II)V

    return-void
.end method

.method public k(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->F0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->N0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->O0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u56de\u590d"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->s1()V

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->i3(I)V

    return-void
.end method

.method public n(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumPostsActivity;->h1()V

    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ForumPostsActivity;->r0:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->G1(II)V

    return-void
.end method

.method q(ILjava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumPostsActivity;->F0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->N0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->O0(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->I1(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k;->a:Lcom/join/mgps/activity/ForumPostsActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ForumPostsActivity;->j:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumPostsActivity;->showSystemKeyBoard(Landroid/view/View;)V

    return-void
.end method
