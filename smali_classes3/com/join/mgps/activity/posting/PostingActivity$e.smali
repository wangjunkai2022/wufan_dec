.class Lcom/join/mgps/activity/posting/PostingActivity$e;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$e;->a:Lcom/join/mgps/activity/posting/PostingActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$e;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$e;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$e;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity;->D1(Z)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$e;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity;->D1(Z)V

    :goto_1
    return-void
.end method
