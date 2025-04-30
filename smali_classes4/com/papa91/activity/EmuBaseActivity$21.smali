.class Lcom/papa91/activity/EmuBaseActivity$21;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$times:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$times:I

    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$args:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 3
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$times:I

    if-eq v0, v2, :cond_1

    const-string v0, ""

    .line 4
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 5
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 6
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 7
    sput v1, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 8
    :cond_1
    sput v2, Lcom/papa91/activity/EmuBaseActivity;->generate_times:I

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$21;->val$args:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showRewardDialog1(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sign()V

    .line 11
    invoke-static {v1, v1}, Lcom/papa91/activity/EmuBaseActivity;->setRewardResult(II)V

    return-void
.end method
