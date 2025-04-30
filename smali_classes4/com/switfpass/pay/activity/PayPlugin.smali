.class public Lcom/switfpass/pay/activity/PayPlugin;
.super Lcom/switfpass/pay/activity/BasePayActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/EditText;

.field public c:Landroid/os/Handler;

.field protected d:Landroid/app/ProgressDialog;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/activity/BasePayActivity;-><init>()V

    new-instance v0, Lcom/switfpass/pay/activity/b0;

    invoke-direct {v0}, Lcom/switfpass/pay/activity/b0;-><init>()V

    iput-object v0, p0, Lcom/switfpass/pay/activity/PayPlugin;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/switfpass/pay/activity/PayPlugin;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic e(Lcom/switfpass/pay/activity/PayPlugin;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "body"

    const-string v2, "sdk\u6536\u6b3e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "service"

    const-string v2, "unified.trade.pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mch_id"

    const-string v2, "7551000001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notify_url"

    const-string v2, "http://zhifu.dev.swiftpass.cn/spay/notify"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/switfpass/pay/utils/w;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/switfpass/pay/activity/PayPlugin;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/switfpass/pay/utils/w;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonce_str"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/switfpass/pay/activity/PayPlugin;->e:Ljava/lang/String;

    const-string v2, "out_trade_no"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mch_create_ip"

    const-string v2, "127.0.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/switfpass/pay/activity/PayPlugin;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_fee"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "9d101c97133837e13dde2d32a5054abb"

    invoke-virtual {p0, v1, v0}, Lcom/switfpass/pay/activity/PayPlugin;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sign"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/switfpass/pay/utils/s0;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    new-instance v1, Lcom/switfpass/pay/utils/d0;

    invoke-direct {v1, p0, v0}, Lcom/switfpass/pay/utils/d0;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/switfpass/pay/utils/d0;->s(Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-static {p0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance v3, Lcom/switfpass/pay/bean/MchBean;

    invoke-direct {v3}, Lcom/switfpass/pay/bean/MchBean;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/switfpass/pay/bean/MchBean;->w(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static j(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/utils/d0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/utils/d0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->s(Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->y(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void
.end method

.method public static k(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/utils/d0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/utils/d0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->s(Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->z(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void
.end method

.method public static l(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 3

    new-instance v0, Lcom/switfpass/pay/utils/e0;

    invoke-direct {v0}, Lcom/switfpass/pay/utils/e0;-><init>()V

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->startActivity(Landroid/content/Context;Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "tokenid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, p0, p1}, Lcom/switfpass/pay/utils/e0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/utils/d0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/utils/d0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->s(Lcom/switfpass/pay/bean/RequestMsg;)V

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/utils/d0;->A(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/StringBuilder;Ljava/util/Map;Z)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/switfpass/pay/activity/PayPlugin;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/switfpass/pay/utils/k0;->a(Ljava/lang/StringBuilder;Ljava/util/Map;Z)V

    const-string p2, "&key="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/switfpass/pay/utils/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/switfpass/pay/utils/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/activity/d0;

    invoke-direct {v0, p0, p1, p2}, Lcom/switfpass/pay/activity/d0;-><init>(Lcom/switfpass/pay/activity/PayPlugin;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/switfpass/pay/activity/BasePayActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f030006

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/PayPlugin;->c:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-static {v0, p1}, Lcom/switfpass/pay/handle/a;->d(ILandroid/os/Handler;)V

    const p1, 0x7f07004b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/switfpass/pay/activity/PayPlugin;->b:Landroid/widget/EditText;

    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    new-instance v0, Lcom/switfpass/pay/activity/c0;

    invoke-direct {v0, p0}, Lcom/switfpass/pay/activity/c0;-><init>(Lcom/switfpass/pay/activity/PayPlugin;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
