.class public Lcom/heepay/plugin/api/HPlugin;
.super Ljava/lang/Object;


# static fields
.field public static mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/heepay/plugin/domain/PayInitInfo;

    const-string v1, "30"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/heepay/plugin/domain/PayInitInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/heepay/plugin/api/HPlugin;->mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHySDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.4"

    return-object v0
.end method

.method public static declared-synchronized pay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/heepay/plugin/api/HPlugin;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/heepay/plugin/c/h;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/heepay/plugin/c/f;->a()Lcom/heepay/plugin/c/f;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/heepay/plugin/c/f;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo p1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e..."

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/heepay/plugin/activity/HyNotityActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    const-string/jumbo p1, "\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u53c2\u6570"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    const-string v4, "tid"

    const/4 v5, 0x0

    aget-object v6, p1, v5

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "aid"

    aget-object v6, p1, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string/jumbo v4, "\u8bf7\u68c0\u67e5\u652f\u4ed8\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    const-string v1, "bn"

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_type"

    const/4 v4, 0x3

    aget-object p1, p1, v4

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string/jumbo p1, "\u4f20\u5165\u7684\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :try_start_5
    new-instance p1, Lcom/heepay/plugin/api/HPlugin$1;

    invoke-direct {p1, p0}, Lcom/heepay/plugin/api/HPlugin$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setPayInitInfo(Lcom/heepay/plugin/domain/PayInitInfo;)V
    .locals 0

    sput-object p0, Lcom/heepay/plugin/api/HPlugin;->mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;

    return-void
.end method
