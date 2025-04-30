.class public Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;
.super Lcom/BaseActivity;
.source "MyAccountInsteadPhoneActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c02e1
.end annotation


# instance fields
.field a:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field g:Lcom/MApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method E0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/TextChange;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u65b0\u624b\u673a\u53f7\u548c\u65e7\u624b\u673a\u53f7\u4e0d\u80fd\u4e00\u81f4"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;->b(Ljava/lang/String;)Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u624b\u673a\u53f7\u683c\u5f0f\u6709\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->g:Lcom/MApplication;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->f:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->a:Landroid/widget/TextView;

    const-string v1, "\u66f4\u6362\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7ed1\u5b9a\u53f7\u7801 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "****"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
