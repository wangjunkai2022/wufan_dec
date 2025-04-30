.class Lcom/join/mgps/activity/AccountBindPhoneNew$b;
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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

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

    const/4 p2, 0x0

    if-lez p1, :cond_0

    .line 2
    iget-object p3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p3, p3, Lcom/join/mgps/activity/AccountBindPhoneNew;->g:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p3, p3, Lcom/join/mgps/activity/AccountBindPhoneNew;->g:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/16 p3, 0xb

    if-ne p1, p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->p:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$b;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method
