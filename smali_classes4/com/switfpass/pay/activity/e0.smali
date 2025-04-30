.class final Lcom/switfpass/pay/activity/e0;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private synthetic b:Lcom/switfpass/pay/activity/PayPlugin;


# direct methods
.method public constructor <init>(Lcom/switfpass/pay/activity/PayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/util/Map;
    .locals 5

    iget-object v0, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PayPlugin;->e(Lcom/switfpass/pay/activity/PayPlugin;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doInBackground, url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "https://pay.swiftpass.cn/pay/gateway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground, entity = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/switfpass/pay/service/b;

    invoke-direct {v1}, Lcom/switfpass/pay/service/b;-><init>()V

    invoke-static {v2, v0}, Lcom/switfpass/pay/utils/o0;->n(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground, content = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/switfpass/pay/service/b;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3}, Lcom/switfpass/pay/utils/s0;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/switfpass/pay/activity/e0;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/switfpass/pay/activity/e0;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    const v2, 0x7f080005

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "services"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {v1}, Lcom/switfpass/pay/bean/RequestMsg;-><init>()V

    const-string v2, "token_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/switfpass/pay/bean/RequestMsg;->N(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->J(Ljava/lang/String;)V

    const-string p1, "wx2a5538052969956e"

    invoke-virtual {v1, p1}, Lcom/switfpass/pay/bean/RequestMsg;->w(Ljava/lang/String;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lcom/switfpass/pay/bean/RequestMsg;->D(D)V

    sget-object p1, Lcom/switfpass/pay/MainApplication;->w:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/switfpass/pay/bean/RequestMsg;->P(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    invoke-static {p1, v1}, Lcom/switfpass/pay/activity/PayPlugin;->k(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    const v1, 0x7f080006

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/e0;->b:Lcom/switfpass/pay/activity/PayPlugin;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/switfpass/pay/activity/e0;->a:Landroid/app/ProgressDialog;

    return-void
.end method
