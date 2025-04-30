.class final Lcom/switfpass/pay/utils/u1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/t1;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/t1;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/u1;->a:Lcom/switfpass/pay/utils/t1;

    iput-object p2, p0, Lcom/switfpass/pay/utils/u1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v7, Lcom/switfpass/pay/utils/l;

    iget-object v0, p0, Lcom/switfpass/pay/utils/u1;->a:Lcom/switfpass/pay/utils/t1;

    invoke-static {v0}, Lcom/switfpass/pay/utils/t1;->a(Lcom/switfpass/pay/utils/t1;)Lcom/switfpass/pay/utils/d0;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/switfpass/pay/utils/u1;->a:Lcom/switfpass/pay/utils/t1;

    invoke-static {v0}, Lcom/switfpass/pay/utils/t1;->a(Lcom/switfpass/pay/utils/t1;)Lcom/switfpass/pay/utils/d0;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_title_prompt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/switfpass/pay/utils/u1;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/switfpass/pay/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/switfpass/pay/utils/i;)V

    iget-object v0, p0, Lcom/switfpass/pay/utils/u1;->a:Lcom/switfpass/pay/utils/t1;

    invoke-static {v0}, Lcom/switfpass/pay/utils/t1;->a(Lcom/switfpass/pay/utils/t1;)Lcom/switfpass/pay/utils/d0;

    move-result-object v0

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/switfpass/pay/utils/h;->e(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method
