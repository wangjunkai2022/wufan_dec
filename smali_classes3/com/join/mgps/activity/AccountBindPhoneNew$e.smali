.class Lcom/join/mgps/activity/AccountBindPhoneNew$e;
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$e;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

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
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$e;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->r:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$e;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->r:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
