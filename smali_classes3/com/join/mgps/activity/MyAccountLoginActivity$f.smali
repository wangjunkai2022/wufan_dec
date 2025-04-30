.class Lcom/join/mgps/activity/MyAccountLoginActivity$f;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/a2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity;->K0(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/MyAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    iput p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountLoginActivity;->k:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountLoginActivity;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->h1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->a(I)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;->startForResult(I)Lorg/androidannotations/api/builder/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->P0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->M0()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->N0()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$f;->b:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MyAccountLoginActivity;->O0()V

    :cond_4
    :goto_0
    return-void
.end method
