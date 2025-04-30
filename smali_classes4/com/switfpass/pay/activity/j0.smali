.class final Lcom/switfpass/pay/activity/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/switfpass/pay/utils/f0;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/j0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/j0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget-object v1, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    const-string v2, "\u4ea4\u6613\u8fdb\u884c\u4e2d\uff0c\u786e\u8ba4\u662f\u5426\u4e2d\u65ad\u4ea4\u6613\uff1f"

    invoke-static {v0, v2, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/lang/String;Lcom/switfpass/pay/utils/g0;)V

    return-void
.end method
