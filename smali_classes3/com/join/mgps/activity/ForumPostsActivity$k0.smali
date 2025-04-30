.class Lcom/join/mgps/activity/ForumPostsActivity$k0;
.super Landroid/widget/ArrayAdapter;
.source "ForumPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;I)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/ForumPostsActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3
    iput p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->a:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    iget p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->a:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumGagType;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    iget p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$k0;->a:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumGagType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p2
.end method
