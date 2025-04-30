.class public Lm/framework/utils/UIHandler;
.super Ljava/lang/Object;
.source "UIHandler.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lm/framework/utils/UIHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 1

    .line 3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    iput p0, v0, Landroid/os/Message;->what:I

    .line 5
    invoke-static {v0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private static getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 2
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    check-cast v0, Landroid/os/Message;

    const/4 v1, 0x1

    .line 3
    aget-object p0, p0, v1

    check-cast p0, Landroid/os/Handler$Callback;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static prepare()V
    .locals 2

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lm/framework/utils/UIHandler$1;

    invoke-direct {v1}, Lm/framework/utils/UIHandler$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendEmptyMessageAtTime(IJLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageAtFrontOfQueue(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageAtTime(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 1
    sget-object v0, Lm/framework/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lm/framework/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
