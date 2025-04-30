.class Lcom/join/mgps/activity/MGMainActivity$c;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->loadIpAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/dto/ConfigData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$c;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ConfigData;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getClient_ip()Ljava/lang/String;

    move-result-object p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$c;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isLaunch_game_switch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$c;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isDownload_game_switch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$c;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->non_online_user_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isNon_online_user_switch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$c;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getReal_name_black_list()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    const-string p1, "UTF-8"

    .line 8
    invoke-static {p2, p1}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object p2, Lcom/MApplication;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    sput-object p1, Lcom/MApplication;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
