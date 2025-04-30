.class Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;
.super Ljava/lang/Object;
.source "MyAccountMMSCodeGetpassbackFinish.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;->a:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;

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
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;->a:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->l:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;->a:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;

    iget p2, p1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->l:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->j:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->j:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
