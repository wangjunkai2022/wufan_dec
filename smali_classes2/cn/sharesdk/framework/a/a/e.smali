.class public Lcn/sharesdk/framework/a/a/e;
.super Ljava/lang/Object;
.source "SharePrefrenceUtil.java"


# static fields
.field private static b:Lcn/sharesdk/framework/a/a/e;


# instance fields
.field private a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "share_sdk"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->open(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcn/sharesdk/framework/a/a/e;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/a/a/e;->b:Lcn/sharesdk/framework/a/a/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/sharesdk/framework/a/a/e;

    invoke-direct {v0}, Lcn/sharesdk/framework/a/a/e;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/a/a/e;->b:Lcn/sharesdk/framework/a/a/e;

    .line 3
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/a/a/e;->b:Lcn/sharesdk/framework/a/a/e;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "device_time"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/SharePrefrenceHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "gpp_ver_sent"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "service_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "connect_server_time"

    invoke-virtual {v0, p2, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "no_use_gpp"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "connect_server"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_device_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "sns_info_buffered"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_user_info"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_login_plus"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "trans_short_link"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "upload_share_content"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "false"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_sina_link_card"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "open_login_plus"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffered_snsconf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;)J
    .locals 2

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "device_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "connect_server_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/a/a/e;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    const-string v1, "sns_info_buffered"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
