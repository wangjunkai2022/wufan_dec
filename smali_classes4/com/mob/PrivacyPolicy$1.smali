.class final Lcom/mob/PrivacyPolicy$1;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/PrivacyPolicy;->getPrivacyPolicyAsync(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Locale;

.field final synthetic c:Lcom/mob/PrivacyPolicy$OnPolicyListener;


# direct methods
.method constructor <init>(ILjava/util/Locale;Lcom/mob/PrivacyPolicy$OnPolicyListener;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/PrivacyPolicy$1;->a:I

    iput-object p2, p0, Lcom/mob/PrivacyPolicy$1;->b:Ljava/util/Locale;

    iput-object p3, p0, Lcom/mob/PrivacyPolicy$1;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-direct {p0}, Lcom/mob/tools/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget v2, p0, Lcom/mob/PrivacyPolicy$1;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/mob/PrivacyPolicy$1;->b:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/mob/PrivacyPolicy;->getPrivacyPolicy(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Lcom/mob/PrivacyPolicy$1$1;

    invoke-direct {v2, p0, v0}, Lcom/mob/PrivacyPolicy$1$1;-><init>(Lcom/mob/PrivacyPolicy$1;Lcom/mob/PrivacyPolicy;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 5
    iget-object v2, p0, Lcom/mob/PrivacyPolicy$1;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-interface {v2, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onComplete(Lcom/mob/PrivacyPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 7
    new-instance v2, Lcom/mob/PrivacyPolicy$1$2;

    invoke-direct {v2, p0, v0}, Lcom/mob/PrivacyPolicy$1$2;-><init>(Lcom/mob/PrivacyPolicy$1;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 9
    iget-object v1, p0, Lcom/mob/PrivacyPolicy$1;->c:Lcom/mob/PrivacyPolicy$OnPolicyListener;

    invoke-interface {v1, v0}, Lcom/mob/PrivacyPolicy$OnPolicyListener;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
