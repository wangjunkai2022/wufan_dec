.class Lcom/join/mgps/activity/MGMainActivity$d;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->getLogincfgs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/activity/login/LoginCfgsBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$d;->a:Lcom/join/mgps/activity/MGMainActivity;

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
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/activity/login/LoginCfgsBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/activity/login/LoginCfgsBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/activity/login/LoginCfgsBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    move-result p2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/login/LoginCfgsBean;

    if-eqz p1, :cond_0

    .line 5
    sput-object p1, Lcom/MApplication;->J:Lcom/join/mgps/activity/login/LoginCfgsBean;

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$d;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/pref/h;->M(Lcom/join/mgps/activity/login/LoginCfgsBean;)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$d;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p2}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$d;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginCfgsBean;->getHow_times_open()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
