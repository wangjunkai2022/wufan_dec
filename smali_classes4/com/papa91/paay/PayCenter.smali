.class public Lcom/papa91/paay/PayCenter;
.super Ljava/lang/Object;
.source "PayCenter.java"


# static fields
.field public static final ACTION_LOGIN_SUCCESS:Ljava/lang/String; = "com.join.android.app.mgsim.broadcast.action_login_success"

.field public static final ACTION_UPDATE_USER_PURCHASE_INFO:Ljava/lang/String; = "com.join.android.app.mgsim.broadcast.action_update_user_purchase_info"

.field private static final TAG:Ljava/lang/String; = "PayCenter"

.field private static mContext:Landroid/content/Context; = null

.field private static mGson:Lcom/google/gson/Gson; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static payListener:Lcom/papa91/paay/PayListener; = null

.field private static payResponse:Lcom/papa91/paay/PayResponse; = null

.field private static final root:Ljava/lang/String; = "http://payv1.papa91.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/papa91/paay/PayCenter;->mGson:Lcom/google/gson/Gson;

    .line 2
    new-instance v0, Lcom/papa91/paay/PayCenter$1;

    invoke-direct {v0}, Lcom/papa91/paay/PayCenter$1;-><init>()V

    sput-object v0, Lcom/papa91/paay/PayCenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/papa91/paay/PayResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    return-object v0
.end method

.method static synthetic access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    return-object p0
.end method

.method static synthetic access$100()Lcom/papa91/paay/PayListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static buyCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$5;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static buyCoin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$7;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$6;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$2;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static inquiryCoinInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$4;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static inquirySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$3;

    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 6

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 2
    sput-object p6, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$9;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/papa91/paay/PayCenter$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method

.method public static redirectLogin()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa91/paay/PayResponse;

    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    sput-object v0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    const/16 v1, 0x2bd

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 3
    sget-object v0, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    sget-object v1, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    invoke-interface {v0, v1}, Lcom/papa91/paay/PayListener;->onResult(Lcom/papa91/paay/PayResponse;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intentFrom"

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.join.android.app.mgsim"

    const-string v3, "com.join.mgps.activity.MyAccountCenterActivity_"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object v1, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 6

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 2
    sput-object p6, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    if-eqz p1, :cond_1

    const-string p0, ""

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$8;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/papa91/paay/PayCenter$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    return-void
.end method
