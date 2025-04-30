.class Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesActivity.java"

# interfaces
.implements Ll1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->K1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileFavoritesActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->A:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;->b:Lcom/join/mgps/activity/ForumProfileFavoritesActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumProfileFavoritesActivity$u;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/activity/ForumProfileFavoritesActivity;->J0(ILjava/lang/String;)V

    return-void
.end method
