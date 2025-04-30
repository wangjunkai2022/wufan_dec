.class public Lcom/join/mgps/Util/i2;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static c:Lcom/join/mgps/Util/i2;


# instance fields
.field a:Landroid/widget/Toast;

.field b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    const-string v0, ""

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    .line 4
    new-instance v0, Lcom/join/mgps/Util/i2$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/Util/i2$a;-><init>(Lcom/join/mgps/Util/i2;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/Util/i2;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/i2;->c:Lcom/join/mgps/Util/i2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/Util/i2;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/i2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/join/mgps/Util/i2;->c:Lcom/join/mgps/Util/i2;

    .line 3
    :cond_0
    sget-object p0, Lcom/join/mgps/Util/i2;->c:Lcom/join/mgps/Util/i2;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i2;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
