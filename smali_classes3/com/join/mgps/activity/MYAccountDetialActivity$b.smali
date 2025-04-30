.class Lcom/join/mgps/activity/MYAccountDetialActivity$b;
.super Ljava/lang/Object;
.source "MYAccountDetialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MYAccountDetialActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/join/mgps/activity/MYAccountDetialActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->d1()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    const-string v0, "\u6635\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity$b;->b:Lcom/join/mgps/activity/MYAccountDetialActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->E0(Lcom/join/mgps/activity/MYAccountDetialActivity;)Lcom/join/mgps/dialog/l1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
