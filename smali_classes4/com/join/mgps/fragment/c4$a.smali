.class Lcom/join/mgps/fragment/c4$a;
.super Ljava/lang/Object;
.source "RankingFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c4;->O()V
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
        "Lcom/join/mgps/dto/RankingMainDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

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
            "Lcom/join/mgps/dto/RankingMainDataBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

    invoke-static {p1}, Lcom/join/mgps/fragment/c4;->M(Lcom/join/mgps/fragment/c4;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/RankingMainDataBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/RankingMainDataBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/RankingMainDataBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/RankingMainDataBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/RankingMainDataBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

    iget-object v0, v0, Lcom/join/mgps/fragment/c4;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->rankingMenu2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RankingMainDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RankingMainDataBean;->getRank_type()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/c4;->P(Ljava/util/List;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/c4$a;->a:Lcom/join/mgps/fragment/c4;

    invoke-static {p1}, Lcom/join/mgps/fragment/c4;->M(Lcom/join/mgps/fragment/c4;)V

    return-void
.end method
