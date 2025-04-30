.class public Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SplashAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/SplashAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field item_bg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/join/mgps/activity/login/SplashAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/login/SplashAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;->this$0:Lcom/join/mgps/activity/login/SplashAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0907ae

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;->item_bg:Landroid/widget/ImageView;

    return-void
.end method
