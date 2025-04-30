.class final Lcom/switfpass/pay/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/BasePayActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/BasePayActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/z;->a:Lcom/switfpass/pay/activity/BasePayActivity;

    iput p2, p0, Lcom/switfpass/pay/activity/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/switfpass/pay/utils/e0;

    invoke-direct {v0}, Lcom/switfpass/pay/utils/e0;-><init>()V

    iget-object v1, p0, Lcom/switfpass/pay/activity/z;->a:Lcom/switfpass/pay/activity/BasePayActivity;

    iget v2, p0, Lcom/switfpass/pay/activity/z;->b:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/switfpass/pay/utils/e0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
