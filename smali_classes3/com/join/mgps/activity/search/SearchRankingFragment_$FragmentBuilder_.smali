.class public Lcom/join/mgps/activity/search/SearchRankingFragment_$FragmentBuilder_;
.super Lorg/androidannotations/api/builder/d;
.source "SearchRankingFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentBuilder_"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/builder/d<",
        "Lcom/join/mgps/activity/search/SearchRankingFragment_$FragmentBuilder_;",
        "Lcom/join/mgps/activity/search/SearchRankingFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/androidannotations/api/builder/d;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/join/mgps/activity/search/SearchRankingFragment;
    .locals 2

    .line 2
    new-instance v0, Lcom/join/mgps/activity/search/SearchRankingFragment_;

    invoke-direct {v0}, Lcom/join/mgps/activity/search/SearchRankingFragment_;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/builder/d;->args:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/search/SearchRankingFragment_$FragmentBuilder_;->build()Lcom/join/mgps/activity/search/SearchRankingFragment;

    move-result-object v0

    return-object v0
.end method
