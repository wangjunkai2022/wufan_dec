.class Lcom/join/mgps/activity/SearchListActivity1$a;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->i:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->G0(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$a;->a:Lcom/join/mgps/activity/SearchListActivity1;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->G0(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method
