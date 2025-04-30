.class Lcom/join/mgps/activity/PayStartActivity$a;
.super Ljava/lang/Object;
.source "PayStartActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/join/mgps/activity/PayStartActivity;->E0(Lcom/join/mgps/activity/PayStartActivity;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/PayStartActivity;->i:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->F0(Lcom/join/mgps/activity/PayStartActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->F0(Lcom/join/mgps/activity/PayStartActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/PayStartActivity$a;->a:Lcom/join/mgps/activity/PayStartActivity;

    const v0, 0x7f11024e

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
