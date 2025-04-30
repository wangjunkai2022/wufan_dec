.class Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;
.super Ljava/lang/Object;
.source "MyAccountMMSCodeReginFinish_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->I0(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/AccountBean;

.field final synthetic b:Lcom/join/mgps/dto/RewardBean;

.field final synthetic c:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->c:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->a:Lcom/join/mgps/dto/AccountBean;

    iput-object p3, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->b:Lcom/join/mgps/dto/RewardBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->c:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;

    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->a:Lcom/join/mgps/dto/AccountBean;

    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->b:Lcom/join/mgps/dto/RewardBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->S0(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    return-void
.end method
