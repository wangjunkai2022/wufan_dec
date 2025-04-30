.class Lcom/join/mgps/adapter/r1$w;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v1}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v1}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->uploadType2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/UploadActivity_;->o1(Landroid/content/Context;)Lcom/join/mgps/activity/UploadActivity_$t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/UploadActivity_$t;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/UploadActivity_$t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void

    .line 7
    :cond_2
    :goto_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/r1$w;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->g(Lcom/join/mgps/adapter/r1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    return-void
.end method
