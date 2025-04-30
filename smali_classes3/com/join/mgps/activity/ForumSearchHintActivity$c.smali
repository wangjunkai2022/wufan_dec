.class Lcom/join/mgps/activity/ForumSearchHintActivity$c;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/ForumSearchHintActivity;->f1(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->E0(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-static {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->G0(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {p1, p2, p4}, Lcom/join/mgps/activity/ForumSearchHintActivity;->Y0(Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->f1(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->a:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->W0()V

    :goto_0
    return-void
.end method
