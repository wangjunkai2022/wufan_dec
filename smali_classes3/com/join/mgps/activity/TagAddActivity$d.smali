.class Lcom/join/mgps/activity/TagAddActivity$d;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/TagAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "afterTextChanged"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/TagAddActivity;->r:Landroid/os/Handler;

    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/TagAddActivity;->r:Landroid/os/Handler;

    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "beforeTextChanged"

    aput-object p3, p1, p2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "keyword="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "onTextChanged"

    aput-object p3, p1, p2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "keyword="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/mgps/activity/TagAddActivity$d;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method
