.class public Lcn/sharesdk/framework/ProvicyCanContinue;
.super Ljava/lang/Object;
.source "ProvicyCanContinue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;
    }
.end annotation


# static fields
.field private static volatile a:Lcn/sharesdk/framework/ProvicyCanContinue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcn/sharesdk/framework/ProvicyCanContinue;->b()V

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/ProvicyCanContinue;
    .locals 2

    .line 1
    const-class v0, Lcn/sharesdk/framework/ProvicyCanContinue;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/ProvicyCanContinue;->a:Lcn/sharesdk/framework/ProvicyCanContinue;

    if-nez v1, :cond_1

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Lcn/sharesdk/framework/ProvicyCanContinue;->a:Lcn/sharesdk/framework/ProvicyCanContinue;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcn/sharesdk/framework/ProvicyCanContinue;

    invoke-direct {v1}, Lcn/sharesdk/framework/ProvicyCanContinue;-><init>()V

    sput-object v1, Lcn/sharesdk/framework/ProvicyCanContinue;->a:Lcn/sharesdk/framework/ProvicyCanContinue;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/ProvicyCanContinue;->a:Lcn/sharesdk/framework/ProvicyCanContinue;

    return-object v0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/RHolder;->getInstance()Lcom/mob/RHolder;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobcommon_TranslucentTheme"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mob/RHolder;->setActivityThemeId(I)Lcom/mob/RHolder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mobcommon_DialogStyle"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mob/RHolder;->setDialogThemeId(I)Lcom/mob/RHolder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mob_authorize_dialog"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mob/RHolder;->setDialogLayoutId(I)Lcom/mob/RHolder;

    .line 5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ProvicyCanContinue initMobCommonView()"

    aput-object v3, v1, v2

    const-string v2, "ShareSDK"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V
    .locals 4

    .line 10
    new-instance v0, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    invoke-direct {v0}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;-><init>()V

    .line 11
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mobcommon_authorize_dialog_title"

    .line 13
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->setTitleText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mobcommon_authorize_dialog_content"

    .line 16
    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->setContentText(Ljava/lang/String;)Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/mob/commons/dialog/entity/InternalPolicyUi$Builder;->build()Lcom/mob/commons/dialog/entity/InternalPolicyUi;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/mob/commons/SHARESDK;

    invoke-direct {v1}, Lcom/mob/commons/SHARESDK;-><init>()V

    new-instance v2, Lcn/sharesdk/framework/ProvicyCanContinue$1;

    invoke-direct {v2, p0, p1}, Lcn/sharesdk/framework/ProvicyCanContinue$1;-><init>(Lcn/sharesdk/framework/ProvicyCanContinue;Lcn/sharesdk/framework/ProvicyCanContinue$OnBusinessListener;)V

    invoke-static {v1, v0, v2}, Lcom/mob/MobSDK;->canIContinueBusiness(Lcom/mob/commons/MobProduct;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
