.class final Lcom/switfpass/pay/activity/a0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/BasePayActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/BasePayActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/a0;->a:Lcom/switfpass/pay/activity/BasePayActivity;

    iput-object p2, p0, Lcom/switfpass/pay/activity/a0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/switfpass/pay/utils/e0;

    invoke-direct {v0}, Lcom/switfpass/pay/utils/e0;-><init>()V

    iget-object v1, p0, Lcom/switfpass/pay/activity/a0;->a:Lcom/switfpass/pay/activity/BasePayActivity;

    iget-object v2, p0, Lcom/switfpass/pay/activity/a0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/switfpass/pay/utils/e0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
