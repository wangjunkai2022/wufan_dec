.class public Lcom/join/mgps/activity/login/LoginInputPassActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginInputPassActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginInputPassActivity$SmsObserver;,
        Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05fe
.end annotation


# instance fields
.field private SMS_INBOX:Landroid/net/Uri;

.field application:Lcom/MApplication;

.field bindmessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clear:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field clickTime:J

.field codeLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field codeLenth:I

.field context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/x0;

.field fergetPass:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field getCode:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inputCode:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inputPass:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isSetPwd:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field loginMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field passLenth:I

.field permissLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneNumber:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field seePass:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sendLogin:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field showDialog:Z

.field thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

.field titleMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    const-string v0, "content://sms/"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->SMS_INBOX:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->updateLoginButn()V

    return-void
.end method

.method private checkFastClick()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clickTime:J

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doHWToastCovered()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/EditText;

    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(1[0-9][0-9]|15[0-9]|18[0-9])\\d{8}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 2
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private passwordCheck(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 3
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return v1
.end method

.method private updateLoginButn()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_8

    .line 2
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 5
    :cond_3
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 8
    :cond_5
    :goto_1
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    if-lt v0, v2, :cond_7

    iget v5, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLenth:I

    if-ne v5, v2, :cond_7

    const/16 v2, 0x10

    if-le v0, v2, :cond_6

    goto :goto_2

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 10
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    :cond_8
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLenth:I

    if-nez v0, :cond_9

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 14
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->application:Lcom/MApplication;

    .line 3
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    .line 7
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    const/4 v2, 0x5

    const-string v3, "\u767b\u5f55"

    const/4 v6, 0x2

    const-string v4, "\n\u5bc6\u7801\u8bf7\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57\u3002"

    const-string v5, "\u9a8c\u8bc1\u7801\u5df2\u901a\u8fc7\u77ed\u4fe1\u53d1\u9001\u81f3"

    const-string v7, "\u8bbe\u7f6e\u5bc6\u7801"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-eq v0, v8, :cond_7

    const/4 v12, 0x6

    if-ne v0, v12, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eq v0, v10, :cond_5

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    const-string v3, "\u7ed1\u5b9a\u624b\u673a\u53f7"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindmessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->permissLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    if-ne v0, v9, :cond_3

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    goto/16 :goto_3

    :cond_3
    if-eq v0, v10, :cond_4

    if-ne v0, v9, :cond_8

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    goto/16 :goto_3

    .line 22
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 29
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v12, Lcom/papa/sim/statistic/Event;->loginAuthPageShow:Lcom/papa/sim/statistic/Event;

    new-instance v13, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v13}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v12, v13}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    const-string v12, "\u8d26\u53f7\u767b\u5f55"

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5f53\u524d\u767b\u5f55\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    const-string v12, "\u5fd8\u8bb0\u4e86\uff1f<font color=#408DFF>\u627e\u56de\u5bc6\u7801</font>"

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    if-ne v0, v8, :cond_8

    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isSetPwd:Z

    if-nez v0, :cond_8

    .line 38
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    .line 45
    iput v9, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    .line 46
    :cond_8
    :goto_3
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    if-ne v0, v10, :cond_9

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode()V

    .line 48
    :cond_9
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    if-eq v0, v10, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v2, :cond_a

    if-ne v0, v6, :cond_b

    .line 49
    :cond_a
    new-instance v7, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;JJ)V

    iput-object v7, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    .line 50
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 51
    :cond_b
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    if-eq v0, v10, :cond_d

    if-ne v0, v6, :cond_c

    goto :goto_4

    :cond_c
    if-ne v0, v9, :cond_e

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->resetPasswordShow:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_5

    .line 53
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterShow:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 54
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity$1;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity$2;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/join/mgps/Util/n;->g(Landroid/widget/EditText;)V

    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity$3;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity$5;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method bindCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountSendRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountSendRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountSendRequest;->setMobile(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountSendRequest;->setSign(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountSendRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->C(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->thirdRequestbean(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 13
    throw v0

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method fergetPass()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->checkFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->doHWToastCovered()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->from(I)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;->phoneNumber(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method getCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->time:Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    sget v0, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindCode()V

    :cond_3
    :goto_0
    return-void
.end method

.method getLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountLoginRequestbean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountLoginRequestbean;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setAccount(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setPassword(Ljava/lang/String;)V

    const-string p1, ""

    .line 6
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setDevice_id(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginRequestbean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->k(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountresultData;->isIs_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->accountLoginSuccess:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    .line 13
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/AccountBean;->setPass(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2, v1, p0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountresultData;->getGame_list_permission()Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/join/mgps/Util/UtilsMy;->A3(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getUser_info()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    const/4 v1, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getSmsFromPhone()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "body"

    .line 2
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date >  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v7, 0x927c0

    sub-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->SMS_INBOX:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\d+"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method joinDevice()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Lorg/springframework/util/LinkedMultiValueMap;

    invoke-direct {v0}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->R(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->isResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/JPushJoinDeviceResult;

    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushJoinDeviceResult;->getMsg()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sput-object v1, Lcom/join/mgps/activity/CheckInviteDialogActivity;->o0:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    const-string v1, "accountloginSuccess"

    const-string v2, "xxx"

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->joinDevice()V

    const/16 v0, 0x271b

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->gameId:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->checkRealNameAndIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->application:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->l()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    return-void
.end method

.method phoneRegin()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;-><init>()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMobile(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setPassword(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setCode(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1}, Lcom/MApplication;->q()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setShare_code(Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 12
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->U(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegistertSuccess:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 25
    throw v0

    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method resendgetCode(I)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    const/16 v2, 0x259

    if-ne v1, v2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e..."

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 20
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method resetPass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    .line 3
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountGetBackRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setMobile(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setPassword(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setCode(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountGetBackRequest;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountGetBackRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->Y(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result p2

    if-nez p2, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->success()V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object p2, Lcom/papa/sim/statistic/Event;->resetPasswordSuccess:Lcom/papa/sim/statistic/Event;

    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    goto :goto_2

    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method sendLogin()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->checkFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    const/4 v1, 0x1

    const-string v2, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    const-string v3, "\u5bc6\u7801\u683c\u5f0f\u6709\u8bef\uff0c\u8f93\u51656\u81f316\u4f4d\u5b57\u6bcd\u6216\u6570\u5b57"

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneRegin()V

    goto/16 :goto_3

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->accountRegisterSubmit:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRegin()V

    goto/16 :goto_3

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const/4 v1, 0x3

    const/4 v4, 0x6

    if-ne v0, v1, :cond_9

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 17
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19
    :cond_7
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passwordCheck(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->resetPasswordSubmit:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resetPass(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 22
    :cond_8
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8f93\u5165\u683c\u5f0f\u6709\u8bef"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eq v0, v4, :cond_c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindCode()V

    goto :goto_3

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->accountLoginSubmit:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_d

    goto :goto_4

    .line 30
    :cond_d
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_3
    return-void

    .line 32
    :cond_f
    :goto_4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method shengming()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/wf_mianze.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "\u514d\u8d23\u58f0\u660e"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    invoke-static {p1}, Ly1/a;->c(Landroid/view/View;)V

    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showDialog:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method success()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u91cd\u7f6e\u5bc6\u7801\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method thirdRegin()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSource(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMobile(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setPassword(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setCode(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v0}, Lcom/MApplication;->q()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setShare_code(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setMac(Ljava/lang/String;)V

    .line 10
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->N(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getUser_info()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->K(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->thirdPartyRegisterSuccess:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    .line 24
    throw v0

    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method xieyi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    invoke-static {v0}, Ly1/a;->b(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/static/yhxkxy.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v1, "\u7528\u6237\u4f7f\u7528\u534f\u8bae"

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
