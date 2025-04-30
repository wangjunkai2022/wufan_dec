.class public Lcom/switfpass/pay/utils/d0;
.super Landroid/app/Dialog;


# static fields
.field private static v:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/switfpass/pay/utils/g0;

.field private l:Lcom/switfpass/pay/bean/RequestMsg;

.field private m:Ljava/util/List;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private p:Lcom/switfpass/pay/utils/f0;

.field private q:Landroid/app/AlertDialog;

.field private r:Z

.field protected s:Landroid/app/ProgressDialog;

.field protected t:Z

.field u:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    sput-object v0, Lcom/switfpass/pay/utils/d0;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/switfpass/pay/utils/d0;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/switfpass/pay/utils/d0;->t:Z

    new-instance v0, Lcom/switfpass/pay/utils/k1;

    invoke-direct {v0}, Lcom/switfpass/pay/utils/k1;-><init>()V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->u:Landroid/os/Handler;

    iput-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/switfpass/pay/utils/d0;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/switfpass/pay/utils/d0;->t:Z

    new-instance v3, Lcom/switfpass/pay/utils/k1;

    invoke-direct {v3}, Lcom/switfpass/pay/utils/k1;-><init>()V

    iput-object v3, p0, Lcom/switfpass/pay/utils/d0;->u:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_pay_dialog_check()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-direct {p0}, Lcom/switfpass/pay/utils/d0;->w()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->h:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/q;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/q;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->c:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/s;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/s;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->d:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/t;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/t;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->f:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/u;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/u;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->g:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/v;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/v;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->e:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/z;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/z;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->i:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/b0;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/b0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->j:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/switfpass/pay/utils/h0;

    invoke-direct {p2, p0}, Lcom/switfpass/pay/utils/h0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    return-object p0
.end method

.method static synthetic b(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/utils/R;

    invoke-direct {v0, p0, p1}, Lcom/switfpass/pay/utils/R;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    invoke-virtual {p2}, Lcom/switfpass/pay/bean/RequestMsg;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v1, "Sign=WXPay"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/switfpass/pay/bean/RequestMsg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/switfpass/pay/utils/d0;->o:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p2}, Lcom/switfpass/pay/bean/RequestMsg;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->o:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {p1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result p1

    const/4 p2, 0x0

    const v1, 0x22000001

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPaySupported-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->o:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->openWXApp()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string p1, "\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->o:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {p0, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    return-void

    :cond_2
    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string p1, "\u5fae\u4fe1\u7248\u672c\u592a\u4f4e\u4e86\uff0c\u8bf7\u5347\u7ea7\u540e\u518d\u4f7f\u7528"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic d(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "\u5fae\u4fe1\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v2, Lcom/switfpass/pay/utils/a2;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/a2;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/b;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/b;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1}, Lcom/switfpass/pay/service/d;->b(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method static synthetic e(Lcom/switfpass/pay/utils/d0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/switfpass/pay/utils/d0;->r:Z

    return-void
.end method

.method static synthetic f(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v2, Lcom/switfpass/pay/utils/f;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/f;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u652f\u4ed8\u5b9d"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->o:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/m;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/m;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->c(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method static synthetic i(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic j(Lcom/switfpass/pay/utils/d0;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->q:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic k(Lcom/switfpass/pay/utils/d0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/switfpass/pay/utils/d0;->r:Z

    return p0
.end method

.method static synthetic m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/utils/d0;->l:Lcom/switfpass/pay/bean/RequestMsg;

    return-object p0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private w()V
    .locals 5

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_pay_wx_wap()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_pay_qq_wap()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_dialog_prompt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_wx_scan()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_qq_scan()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_zfb_scan()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_wx_app()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getLayout_zfb_app()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->b:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_scan()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v2}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->d:Landroid/widget/RelativeLayout;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->c:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->f:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->g:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->i:Landroid/widget/RelativeLayout;

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v3}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->j:Landroid/widget/RelativeLayout;

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lcom/switfpass/pay/MainApplication;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/switfpass/pay/MainApplication;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/switfpass/pay/MainApplication;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/switfpass/pay/MainApplication;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->h:Landroid/widget/RelativeLayout;

    goto/16 :goto_1

    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/switfpass/pay/bean/MchBean;

    invoke-virtual {v2}, Lcom/switfpass/pay/bean/MchBean;->k()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/switfpass/pay/utils/d0;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->e:Landroid/widget/RelativeLayout;

    goto/16 :goto_1

    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/utils/d0;->v:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->p(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->B(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u652f\u4ed8\u7c7b\u578b\u9519\u8bef,\u6216\u8005\u4e0d\u652f\u6301\u6b64\u652f\u4ed8\u7c7b\u578b"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/utils/d0;->v:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->F(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570tokenId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570\u652f\u4ed8\u7c7b\u578btradeType\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public B(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    new-instance v0, Lcom/switfpass/pay/utils/j0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/utils/j0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->p:Lcom/switfpass/pay/utils/f0;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "\u5fae\u4fe1\u626b\u7801\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->p:Lcom/switfpass/pay/utils/f0;

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1\u4e8c\u7ef4\u7801"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->k:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/l0;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/l0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->a(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public C(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v2, Lcom/switfpass/pay/utils/n1;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/n1;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1\u652f\u4ed8"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    const-string v0, "\u5fae\u4fe1WAP\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/o1;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/o1;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public D(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    const-string v0, "\u5fae\u4fe1WAP\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/l1;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/l1;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public E(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/t0;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/t0;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->a(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public F(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 5

    sget-object v0, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/switfpass/pay/MainApplication;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/switfpass/pay/MainApplication;->n:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    new-instance v1, Lcom/switfpass/pay/utils/g0;

    iget-object v2, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v3, Lcom/switfpass/pay/utils/v1;

    invoke-direct {v3, p0}, Lcom/switfpass/pay/utils/v1;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v4, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u652f\u4ed8\u5b9d\u4e8c\u7ef4\u7801"

    invoke-direct {v1, v2, v4, v3}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v1, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    const-string v1, "\u652f\u4ed8\u5b9d\u626b\u7801\u652f\u4ed8"

    invoke-virtual {p1, v1}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v1

    new-instance v2, Lcom/switfpass/pay/utils/w1;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/w1;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/switfpass/pay/service/d;->a(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public G(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->v:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/w0;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/w0;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissMyLoading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public n()Lcom/switfpass/pay/bean/RequestMsg;
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->l:Lcom/switfpass/pay/bean/RequestMsg;

    return-object v0
.end method

.method public p(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "\u624bQ\u626b\u7801\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v2, Lcom/switfpass/pay/utils/p0;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/p0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42\u624bQ\u4e8c\u7ef4\u7801"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/q0;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/q0;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->a(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public q(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    new-instance v0, Lcom/switfpass/pay/utils/g0;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    new-instance v2, Lcom/switfpass/pay/utils/s1;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/s1;-><init>(Lcom/switfpass/pay/utils/d0;)V

    const-string v3, "\u8bf7\u7a0d\u5019\uff0c\u6b63\u5728\u8bf7\u6c42QQ\u94b1\u5305H5\u652f\u4ed8"

    invoke-direct {v0, v1, v3, v2}, Lcom/switfpass/pay/utils/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/switfpass/pay/utils/f0;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->k:Lcom/switfpass/pay/utils/g0;

    const-string v0, "QQwap\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->t:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/t1;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/t1;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public r(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->t:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/q1;

    invoke-direct {v2, p0, p1}, Lcom/switfpass/pay/utils/q1;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void
.end method

.method public s(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/d0;->l:Lcom/switfpass/pay/bean/RequestMsg;

    return-void
.end method

.method public t(Lcom/switfpass/pay/utils/c0;)V
    .locals 0

    return-void
.end method

.method public u(Ljava/lang/String;Lcom/switfpass/pay/utils/g0;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/switfpass/pay/utils/a;

    invoke-direct {p1, p0, p2}, Lcom/switfpass/pay/utils/a;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/utils/g0;)V

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/switfpass/pay/utils/a0;

    invoke-direct {p1}, Lcom/switfpass/pay/utils/a0;-><init>()V

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/switfpass/pay/utils/d0;->q:Landroid/app/AlertDialog;

    return-void
.end method

.method public v(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->s:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "showLoading "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public y(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    sget-object v1, Lcom/switfpass/pay/MainApplication;->o:Ljava/lang/String;

    new-instance v2, Lcom/switfpass/pay/utils/o;

    invoke-direct {v2, p0}, Lcom/switfpass/pay/utils/o;-><init>(Lcom/switfpass/pay/utils/d0;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/switfpass/pay/service/d;->c(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->z:Ljava/lang/String;

    invoke-static {}, Lcom/switfpass/pay/service/d;->d()Lcom/switfpass/pay/service/d;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/utils/y1;

    invoke-direct {v1, p0, p1}, Lcom/switfpass/pay/utils/y1;-><init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1, v1}, Lcom/switfpass/pay/service/d;->b(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u652f\u4ed8\u7c7b\u578b\u9519\u8bef,\u6216\u8005\u4e0d\u652f\u6301\u6b64\u652f\u4ed8\u7c7b\u578b"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570tokenId\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570\u652f\u4ed8\u7c7b\u578btradeType\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public z(Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->r(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->D(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->G(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->u()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/switfpass/pay/MainApplication;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/switfpass/pay/utils/d0;->E(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u652f\u4ed8\u7c7b\u578b\u9519\u8bef,\u6216\u8005\u4e0d\u652f\u6301\u6b64\u652f\u4ed8\u7c7b\u578b"

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570tokenId\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/switfpass/pay/utils/d0;->a:Landroid/app/Activity;

    const-string v0, "\u53c2\u6570\u652f\u4ed8\u7c7b\u578btradeType\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0
.end method
