.class public Lcom/join/mgps/activity/login/SplashAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SplashAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private imgWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/login/SplashAdapter;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/login/SplashAdapter;->imgWidth:I

    return-void
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/login/SplashAdapter;->onBindViewHolder(Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/login/SplashAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0600

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/login/SplashAdapter$ViewHolder;-><init>(Lcom/join/mgps/activity/login/SplashAdapter;Landroid/view/View;)V

    return-object p2
.end method
