.class public final Lcom/join/mgps/activity/login/LoginInputPassActivity_;
.super Lcom/join/mgps/activity/login/LoginInputPassActivity;
.source "LoginInputPassActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final IS_SET_PWD_EXTRA:Ljava/lang/String; = "isSetPwd"

.field public static final PHONE_NUMBER_EXTRA:Ljava/lang/String; = "phoneNumber"

.field public static final THIRD_REQUESTBEAN_EXTRA:Ljava/lang/String; = "thirdRequestbean"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showKeyborad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneRegin()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRegin()V

    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resetPass(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLoding()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->success()V

    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->joinDevice()V

    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/login/LoginInputPassActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->resendgetCode(I)V

    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindCode()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "from"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    :cond_0
    const-string v1, "phoneNumber"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->phoneNumber:Ljava/lang/String;

    :cond_1
    const-string v1, "thirdRequestbean"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iput-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->thirdRequestbean:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    :cond_2
    const-string v1, "gameId"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->gameId:Ljava/lang/String;

    :cond_3
    const-string v1, "isSetPwd"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->isSetPwd:Z

    :cond_4
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method bindCode()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginInputPassActivity_$17;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$17;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$9;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$9;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/login/LoginInputPassActivity_$14;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$14;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method joinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginInputPassActivity_$15;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$15;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$10;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$10;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Lcom/join/mgps/dto/AccountBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c05fe

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f09101b

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->titleMessage:Landroid/widget/TextView;

    const v0, 0x7f090295

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->codeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090be1

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->passLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090767

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputCode:Landroid/widget/EditText;

    const v0, 0x7f090769

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->inputPass:Landroid/widget/EditText;

    const v0, 0x7f0905d6

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    const v0, 0x7f090e17

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    const v0, 0x7f090493

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    const v0, 0x7f090162

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->bindmessage:Landroid/widget/TextView;

    const v0, 0x7f0909b8

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->loginMessage:Landroid/widget/TextView;

    const v0, 0x7f090c05

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->permissLayout:Landroid/view/View;

    const v0, 0x7f090dfb

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->seePass:Landroid/widget/CheckBox;

    const v0, 0x7f090e48

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0912e8

    .line 15
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09012c

    .line 16
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 17
    new-instance v2, Lcom/join/mgps/activity/login/LoginInputPassActivity_$1;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$1;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 18
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$2;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->clear:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 20
    new-instance v1, Lcom/join/mgps/activity/login/LoginInputPassActivity_$3;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$3;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 21
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$4;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 23
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$5;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$5;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->fergetPass:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 25
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$6;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$6;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 27
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$7;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$7;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->afterview()V

    return-void
.end method

.method phoneRegin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginInputPassActivity_$18;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$18;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method resendgetCode(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/login/LoginInputPassActivity_$16;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$16;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method resetPass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/login/LoginInputPassActivity_$20;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$20;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_;->injectExtras_()V

    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$8;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$8;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Landroid/widget/EditText;)V

    const-string p1, ""

    const-wide/16 v1, 0x190

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$11;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$11;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$12;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$12;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method success()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginInputPassActivity_$13;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$13;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method thirdRegin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginInputPassActivity_$19;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginInputPassActivity_$19;-><init>(Lcom/join/mgps/activity/login/LoginInputPassActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
