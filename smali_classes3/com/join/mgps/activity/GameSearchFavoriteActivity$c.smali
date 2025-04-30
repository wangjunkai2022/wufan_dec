.class Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;
.super Ljava/lang/Object;
.source "GameSearchFavoriteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->b(Lcom/join/mgps/activity/GameSearchFavoriteActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->o:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$c;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
