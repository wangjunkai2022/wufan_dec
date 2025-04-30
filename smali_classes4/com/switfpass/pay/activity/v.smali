.class final Lcom/switfpass/pay/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/u;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/u;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v0}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v0

    new-instance v8, Lcom/switfpass/pay/utils/l;

    iget-object v1, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v1}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v1}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/switfpass/pay/activity/QrcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_title_prompt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u652f\u4ed8\u8bf7\u6c42\u5df2\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u751f\u6210\u4e8c\u7ef4\u7801!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u786e\u5b9a"

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/switfpass/pay/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/switfpass/pay/utils/i;)V

    invoke-static {v0, v8}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;Lcom/switfpass/pay/utils/l;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v0}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v1}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v0}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    new-instance v1, Lcom/switfpass/pay/activity/w;

    invoke-direct {v1}, Lcom/switfpass/pay/activity/w;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v0}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v0}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->c(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/v;->a:Lcom/switfpass/pay/activity/u;

    invoke-static {v1}, Lcom/switfpass/pay/activity/u;->a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/switfpass/pay/activity/QrcodeActivity;->d(Lcom/switfpass/pay/activity/QrcodeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
