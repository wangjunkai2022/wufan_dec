.class Lcom/join/mgps/activity/SearchLabelActivity$c;
.super Ljava/lang/Object;
.source "SearchLabelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchLabelActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$c;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$c;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/SearchLabelActivity;->c(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$c;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->c:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchLabelActivity$c;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/SearchLabelActivity;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$c;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
