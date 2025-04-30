.class Lcom/join/mgps/activity/SearchHintActivity$c;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "onFocusChange"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFocus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchHintActivity;->z1()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-static {p1}, Ly1/a;->c(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$c;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
