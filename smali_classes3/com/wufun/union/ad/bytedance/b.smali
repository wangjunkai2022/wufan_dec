.class public Lcom/wufun/union/ad/bytedance/b;
.super Ljava/lang/Object;
.source "RewardBundleModel.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "reward_extra_key_error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wufun/union/ad/bytedance/b;->a:I

    const-string v0, "reward_extra_key_error_msg"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufun/union/ad/bytedance/b;->b:Ljava/lang/String;

    const-string v0, "reward_extra_key_reward_name"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufun/union/ad/bytedance/b;->c:Ljava/lang/String;

    const-string v0, "reward_extra_key_reward_amount"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wufun/union/ad/bytedance/b;->d:I

    const-string v0, "reward_extra_key_reward_propose"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/wufun/union/ad/bytedance/b;->e:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufun/union/ad/bytedance/b;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufun/union/ad/bytedance/b;->e:F

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufun/union/ad/bytedance/b;->a:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/b;->b:Ljava/lang/String;

    return-object v0
.end method
