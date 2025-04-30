.class Lcom/join/mgps/activity/MyAccountLoginActivity_$g;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity_;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

.field final synthetic b:Lcom/join/mgps/activity/MyAccountLoginActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$g;->b:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$g;->a:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$g;->b:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$g;->a:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->b1(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    return-void
.end method
