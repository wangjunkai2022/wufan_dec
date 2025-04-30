.class Lcom/netease/nis/quicklogin/QuickLogin$e;
.super Ljava/lang/Object;
.source "QuickLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/quicklogin/QuickLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static final a:Lcom/netease/nis/quicklogin/QuickLogin;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/QuickLogin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/nis/quicklogin/QuickLogin;-><init>(Lcom/netease/nis/quicklogin/QuickLogin$a;)V

    sput-object v0, Lcom/netease/nis/quicklogin/QuickLogin$e;->a:Lcom/netease/nis/quicklogin/QuickLogin;

    return-void
.end method

.method static synthetic a()Lcom/netease/nis/quicklogin/QuickLogin;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/QuickLogin$e;->a:Lcom/netease/nis/quicklogin/QuickLogin;

    return-object v0
.end method
