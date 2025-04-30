.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileMessageReplyAdapter$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->Z1()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->N1()V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->E0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->v1()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->F1(IILjava/lang/String;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T1(II)V

    return-void
.end method

.method public e(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {v0, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    const p2, 0x7f0902bb

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R1(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-ne p3, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1, v2, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L1(ZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L1(ZZ)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e1(II)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T1(II)V

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->V0(ILjava/lang/String;)V

    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h1(Z)V

    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->e1(II)V

    return-void
.end method

.method public k(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h1(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->f:Lcom/join/android/app/common/view/ClearEditText;

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

.method public l(Landroid/view/View;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->h1(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->G0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {v0, p2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->I0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p2, p3}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->K0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p2, p1, v2}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->R1(Landroid/view/View;I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i0;->T(Landroid/content/Context;)Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-ne p4, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {p1, v1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L1(ZZ)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->L1(ZZ)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$i;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->U0()V

    return-void
.end method
