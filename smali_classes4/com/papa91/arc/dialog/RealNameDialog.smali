.class public Lcom/papa91/arc/dialog/RealNameDialog;
.super Landroid/app/Dialog;
.source "RealNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;
    }
.end annotation


# instance fields
.field private UserID:Ljava/lang/String;

.field private action:Ljava/lang/Integer;

.field bottomGift:Landroid/view/View;

.field btn_center:Landroid/widget/Button;

.field callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

.field clickTime:J

.field private codeFocus:Z

.field et_code:Landroid/widget/EditText;

.field et_name:Landroid/widget/EditText;

.field giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field iv_close:Landroid/widget/ImageView;

.field iv_delete_code:Landroid/widget/ImageView;

.field iv_delete_name:Landroid/widget/ImageView;

.field ll_top:Landroid/view/View;

.field private loading_submit_real_name:Z

.field private nameFocus:Z

.field pop_window:Lcom/papa91/arc/bean/PopwindowBean;

.field tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/arc/interfaces/RealNameCallBack;)V
    .locals 2

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    .line 3
    iput-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    .line 4
    iput-object p3, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    .line 5
    sget-object p1, Lcom/papa91/arc/dialog/g;->a:Lcom/papa91/arc/dialog/g;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$commitRename$4(Lcom/papa91/arc/bean/Response;)V

    return-void
.end method

.method private commitRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/RealNameDialog;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/http/HttpUtils;->init(Landroid/content/Context;)V

    .line 4
    iget-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 6
    new-instance v1, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;

    invoke-direct {v1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setUid(Ljava/lang/String;)V

    const-string v2, "ANDROID"

    .line 8
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setPlatformType(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p2}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setIdCard(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setName(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->type:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setType(Ljava/lang/Integer;)V

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->action:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/ReqSubmitRealNameArgs;->setAction(Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/papa91/arc/dialog/k;

    invoke-direct {p2, p0, p1}, Lcom/papa91/arc/dialog/k;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Request;)V

    invoke-static {p2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz p1, :cond_2

    const-string p2, "realNameClickSubmit"

    const-string v1, "0"

    .line 18
    invoke-interface {p1, p2, v1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$commitRename$5(Lcom/papa91/arc/bean/Request;)V

    return-void
.end method

.method public static synthetic e(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/dialog/RealNameDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->lambda$onCreate$2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$commitRename$4(Lcom/papa91/arc/bean/Response;)V
    .locals 3

    const-string v0, "realNameClickSubmit"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/PopwindowBean;

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz v1, :cond_4

    const-string v2, "1"

    .line 4
    invoke-interface {v1, v0, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    invoke-interface {v0, p0, p1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onSuccess(Landroid/app/Dialog;Lcom/papa91/arc/bean/PopwindowBean;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz v1, :cond_1

    const-string v2, "0"

    .line 7
    invoke-interface {v1, v0, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onFail(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Response;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$commitRename$5(Lcom/papa91/arc/bean/Request;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->submitRealName(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    move-result-object p1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 3
    new-instance v1, Lcom/papa91/arc/dialog/l;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/dialog/l;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V

    invoke-static {v1}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz p1, :cond_0

    const-string v1, "realNameClickSubmit"

    const-string v2, "0"

    .line 6
    invoke-interface {p1, v1, v2}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->loading_submit_real_name:Z

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    .line 9
    invoke-interface {p1, v0}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onFail(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    const-string v4, ""

    const-string v5, ""

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "4"

    const-string v2, "0"

    const-string v4, ""

    const-string v5, ""

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->callBack:Lcom/papa91/arc/interfaces/RealNameCallBack;

    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/papa91/arc/interfaces/RealNameCallBack;->onCancel(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

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

.method public isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    if-ne v0, v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->clickTime:J

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->commitRename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u8bf7\u586b\u5199\u6b63\u786e\u7684\u8eab\u4efd\u4fe1\u606f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_name:I

    const-string v2, ""

    if-ne v0, v1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_delete_code:I

    if-ne p1, v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 9
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->real_name_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    sget p1, Lorg/ppsspp/ppsspp/R$id;->et_name:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    .line 14
    sget p1, Lorg/ppsspp/ppsspp/R$id;->et_code:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    .line 15
    sget p1, Lorg/ppsspp/ppsspp/R$id;->btn_center:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    .line 16
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 17
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 18
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    .line 19
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_name:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    .line 20
    sget p1, Lorg/ppsspp/ppsspp/R$id;->iv_delete_code:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    .line 21
    sget p1, Lorg/ppsspp/ppsspp/R$id;->ll_top:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->ll_top:Landroid/view/View;

    .line 22
    sget p1, Lorg/ppsspp/ppsspp/R$id;->bottomGift:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    .line 23
    sget p1, Lorg/ppsspp/ppsspp/R$id;->giftMessage:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 24
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 27
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 28
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    if-eqz p1, :cond_6

    .line 32
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 33
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/dialog/RealNameDialog$1;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 34
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v0, Lcom/papa91/arc/dialog/i;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/i;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 35
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 36
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v0, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;

    invoke-direct {v0, p0, v3}, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/dialog/RealNameDialog$1;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 37
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    new-instance v0, Lcom/papa91/arc/dialog/j;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/j;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setOnClickATagListener(Lcom/papa91/arc/widget/htmltext/OnClickATagListener;)V

    .line 38
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_title:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->tv_content:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    iget-object v2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/ButtonBean;->getButtonHint()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/papa91/arc/util/StringUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->btn_center:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonClose()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    new-instance v2, Lcom/papa91/arc/dialog/h;

    invoke-direct {v2, p0}, Lcom/papa91/arc/dialog/h;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->giftMessage:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    iget-object v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->pop_window:Lcom/papa91/arc/bean/PopwindowBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/PopwindowBean;->getSubTitle3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->bottomGift:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    if-ne p1, p2, :cond_5

    .line 7
    iput-boolean v1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_name:Landroid/widget/EditText;

    if-ne p1, p2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->et_code:Landroid/widget/EditText;

    if-ne p1, p2, :cond_5

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->nameFocus:Z

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_name:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->codeFocus:Z

    if-eqz p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->iv_delete_code:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/papa91/arc/dialog/RealNameDialog;->setClearIconVisible(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method protected setClearIconVisible(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iput-object p2, p0, Lcom/papa91/arc/dialog/RealNameDialog;->type:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lcom/papa91/arc/dialog/RealNameDialog;->action:Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog;->UserID:Ljava/lang/String;

    return-void
.end method
