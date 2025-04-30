.class Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;
.super Ljava/lang/Object;
.source "GameInformationActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->startIntent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;->b:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    iput-object p2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;->a:Ljava/lang/String;

    const-class v2, Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;->b:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v2, v2, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
