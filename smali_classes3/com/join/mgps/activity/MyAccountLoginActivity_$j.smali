.class Lcom/join/mgps/activity/MyAccountLoginActivity_$j;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity_;->loginSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountBean;

.field final synthetic b:Lcom/join/mgps/dto/RewardBean;

.field final synthetic c:Lcom/join/mgps/activity/MyAccountLoginActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->c:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->a:Lcom/join/mgps/dto/AccountBean;

    iput-object p3, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->b:Lcom/join/mgps/dto/RewardBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->c:Lcom/join/mgps/activity/MyAccountLoginActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->a:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity_$j;->b:Lcom/join/mgps/dto/RewardBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MyAccountLoginActivity_;->e1(Lcom/join/mgps/activity/MyAccountLoginActivity_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    return-void
.end method
