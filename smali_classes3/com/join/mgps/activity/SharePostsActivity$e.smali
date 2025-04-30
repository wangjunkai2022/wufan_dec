.class Lcom/join/mgps/activity/SharePostsActivity$e;
.super Ljava/lang/Object;
.source "SharePostsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$e;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$e;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
