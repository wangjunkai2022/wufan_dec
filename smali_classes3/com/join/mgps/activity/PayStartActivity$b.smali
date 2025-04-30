.class Lcom/join/mgps/activity/PayStartActivity$b;
.super Ljava/lang/Object;
.source "PayStartActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayStartActivity;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$b;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/PayStartActivity$b;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {v1, v0}, Lcom/join/mgps/activity/PayStartActivity;->G0(Lcom/join/mgps/activity/PayStartActivity;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$b;->a:Lcom/join/mgps/activity/PayStartActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PayStartActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const v1, 0x453b8000    # 3000.0f

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
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
