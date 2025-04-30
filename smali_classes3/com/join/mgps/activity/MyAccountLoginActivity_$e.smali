.class Lcom/join/mgps/activity/MyAccountLoginActivity_$e;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity_;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountBean;

.field final synthetic b:Lcom/join/mgps/activity/MyAccountLoginActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$e;->b:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$e;->a:Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$e;->b:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$e;->a:Lcom/join/mgps/dto/AccountBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->Z0(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method
