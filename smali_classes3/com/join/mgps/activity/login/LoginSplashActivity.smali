.class public Lcom/join/mgps/activity/login/LoginSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginSplashActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c05ff
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field application:Lcom/MApplication;

.field private autoFinish:Z

.field close:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field login:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field notStartGame:Z

.field preReslt:Z

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "LoginSplashActivity"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->preReslt:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->notStartGame:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->autoFinish:Z

    return-void
.end method

.method private loginAuth()V
    .locals 0

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/MApplication;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->application:Lcom/MApplication;

    .line 2
    invoke-virtual {v0, p0}, Lcom/MApplication;->k(Landroid/app/Activity;)V

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 5
    invoke-static {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->welcomePageShow:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method close()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->closeWelcomePage:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
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

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

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

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

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

.method login()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFastLoginButton:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginAuth()V

    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

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
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object v0

    const-string v1, "accountloginSuccess"

    const-string v2, "xxx"

    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->joinDevice()V

    const/16 v0, 0x271b

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->finish()V

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/join/mgps/Util/IntentUtil;->checkRealNameAndIntent(Landroid/content/Context;Lcom/join/mgps/dto/AccountBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/join/mgps/activity/login/LoginSplashActivity$1;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$1;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0c03b9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method toLogin(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginjiguangRequest;

    invoke-direct {v0}, Lcom/join/mgps/activity/login/LoginjiguangRequest;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/login/LoginBase;->getData(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/login/LoginjiguangRequest;->setLoginToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->showLoadingDialog()V

    .line 5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/u1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/login/LoginBase;->setSign(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->b()Lcom/join/mgps/rpc/impl/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->a()Lq1/i;

    move-result-object p1

    invoke-interface {p1, v0}, Lq1/i;->e(Lcom/join/mgps/activity/login/LoginjiguangRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity$2;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
