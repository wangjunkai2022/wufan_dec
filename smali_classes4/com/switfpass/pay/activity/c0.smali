.class final Lcom/switfpass/pay/activity/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PayPlugin;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/c0;->a:Lcom/switfpass/pay/activity/PayPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/switfpass/pay/activity/e0;

    iget-object v0, p0, Lcom/switfpass/pay/activity/c0;->a:Lcom/switfpass/pay/activity/PayPlugin;

    invoke-direct {p1, v0}, Lcom/switfpass/pay/activity/e0;-><init>(Lcom/switfpass/pay/activity/PayPlugin;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
