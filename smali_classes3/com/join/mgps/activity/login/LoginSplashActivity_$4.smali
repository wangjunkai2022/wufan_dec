.class Lcom/join/mgps/activity/login/LoginSplashActivity_$4;
.super Ljava/lang/Object;
.source "LoginSplashActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginSplashActivity_;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginSplashActivity_;

.field final synthetic val$accountBean:Lcom/join/mgps/dto/AccountBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;->val$accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;->this$0:Lcom/join/mgps/activity/login/LoginSplashActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;->val$accountBean:Lcom/join/mgps/dto/AccountBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->access$101(Lcom/join/mgps/activity/login/LoginSplashActivity_;Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method
