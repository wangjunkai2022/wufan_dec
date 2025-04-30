.class Lcom/join/mgps/activity/SearchHintActivity$h;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->H0(Lcom/join/mgps/activity/SearchHintActivity;Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$h;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchHintActivity;->H0(Lcom/join/mgps/activity/SearchHintActivity;Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method
