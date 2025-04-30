.class Lcom/join/mgps/activity/AccountBindPhoneNew$c;
.super Ljava/lang/Object;
.source "AccountBindPhoneNew.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$c;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

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
    iget-object p2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$c;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p2, Lcom/join/mgps/activity/AccountBindPhoneNew;->u:I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$c;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget p2, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->u:I

    if-lez p2, :cond_0

    iget p2, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->v:I

    if-lez p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->q:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->q:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
