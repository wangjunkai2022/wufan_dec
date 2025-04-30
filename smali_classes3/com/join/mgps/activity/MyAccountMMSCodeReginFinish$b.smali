.class Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;
.super Ljava/lang/Object;
.source "MyAccountMMSCodeReginFinish.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

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
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->j:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish$b;->a:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;

    iget p2, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->j:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->i:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish;->i:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
